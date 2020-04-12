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
            let checker = try SpellingChecker()
            let inputFiles = FileManager.default.listFiles(at: options.inputs, extensions: ["swift"])

            inputFiles.parallelForEach { location in
                do {
                    let sourceFile = try SourceFile(at: location)

                    let identifierErrors = sourceFile
                        .identifiers
                        .flatMap { $0.tokenized() }
                        .filter { !checker.checkWord($0.text) }

                    let commentErrors = sourceFile
                        .commentBlocks
                        .flatMap { $0.lines }
                        .flatMap { $0.tokenized() }
                        .filter { !checker.checkWord($0.text) }

                    var allErrors: Set<SourceText> = []
                    allErrors.formUnion(identifierErrors)
                    allErrors.formUnion(commentErrors)

                    let errorMessages = allErrors
                        .map {
                            ErrorMessage(
                                location: sourceFile.locationConverter.location(for: $0.range.lowerBound),
                                kind: .warning,
                                message: "Unknown word: \($0.text)"
                            )
                        }
                        .sorted()

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
