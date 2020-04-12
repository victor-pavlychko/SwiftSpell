import ArgumentParser
import Foundation
import SwiftSpell
import SwiftSpellCheckers
import SwiftSpellParser
import SwiftSpellUtils

extension SwiftSpell {
    struct Check: ParsableCommand {
        struct Options: ParsableArguments {
            @Argument(help: "One or more paths to Swift files")
            var inputs: [String]
        }

        static var configuration = CommandConfiguration(abstract: "Checks spelling in Swift code")

        @OptionGroup()
        var options: Options

        func run() throws {
            let lock = DispatchQueue(label: #function)

            let checkers: [Checker] = [
                try SpellingChecker(),
            ]

            let inputFiles = FileManager.default.listFiles(at: options.inputs, extensions: ["swift"])

            inputFiles.parallelForEach { location in
                do {
                    let sourceFile = try SourceFile(at: location)

                    let identifierErrors = sourceFile
                        .identifiers
                        .flatMap { identifier in checkers.flatMap { checker in checker.checkIdentifier(identifier) } }
                        .map { $0.format(using: sourceFile.locationConverter) }

                    let commentErrors = sourceFile
                        .comments
                        .flatMap { comment in checkers.flatMap { checker in checker.checkComment(comment) } }
                        .map { $0.format(using: sourceFile.locationConverter) }

                    var allErrors: Set<FormattedMessage> = []
                    allErrors.formUnion(identifierErrors)
                    allErrors.formUnion(commentErrors)

                    let errorMessages = allErrors.sorted()

                    lock.sync {
                        for message in errorMessages {
                            print(message)
                        }
                    }
                } catch {
                    lock.sync {
                        print(error)
                    }
                }
            }
        }
    }
}
