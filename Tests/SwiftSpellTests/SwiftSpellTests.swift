import XCTest
@testable import SwiftSpell
@testable import SwiftSpellCheckers
@testable import SwiftSpellParser
@testable import SwiftSpellUtils

final class SwiftSpellTests: XCTestCase {
    func temporaryFile(path: String? = nil, contents: String) throws -> URL {
        let temporaryDirectoryURL = URL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent(ProcessInfo.processInfo.globallyUniqueString)
        try FileManager.default.createDirectory(at: temporaryDirectoryURL, withIntermediateDirectories: true, attributes: [.posixPermissions: 0o766])
        let path = path ?? ProcessInfo.processInfo.globallyUniqueString
        let temporaryFileURL = temporaryDirectoryURL.appendingPathComponent(path)
        try contents.data(using: .utf8)?.write(to: temporaryFileURL)
        return temporaryFileURL
    }

    func testExample() throws {
        let string = "func sampleFunc_tionWithURL(argument: URL)"
        let slices = string.tokenized()
        print(slices)
    }

    func testExample2() throws {
        let source = #"""
            import Foundation

            /// Protocol
            public protocol P {
                /// Function requirement
                func f()

                /// Property requirement
                var p: Any { get }
            }

            /// Enumeration
            public enum E {
                /// Enumeration case
                case c
            }

            /// Structure
            public struct S {}

            /// Extension
            public extension S: P {
                /// Function
                func f() {}

                /// Property
                var p: Any { return () }
            }

            /// Class
            open class C: P{
                /// Function
                public func f() {}

                /// Property
                public var p: Any { return () }
            }

            /// Subclass
            public final class SC: C {}
            """#

        let spellchecker = try SpellingChecker()

        let url = try temporaryFile(contents: source)
        let sourceFile = try SourceFile(at: FileLocation(file: url, directory: url.deletingLastPathComponent()))

        let identifierErrors = sourceFile
            .identifiers
            .flatMap { $0.tokenized() }
            .filter { !spellchecker.checkWord($0.text) }

        let commentErrors = sourceFile
            .commentBlocks
            .flatMap { $0.lines }
            .flatMap { $0.tokenized() }
            .filter { !spellchecker.checkWord($0.text) }

        var allErrors: Set<SourceText> = []
        allErrors.formUnion(identifierErrors)
        allErrors.formUnion(commentErrors)

        let sortedErrors = allErrors.sorted(by: { $0.range.lowerBound < $1.range.lowerBound })
        print(sortedErrors)
    }
}
