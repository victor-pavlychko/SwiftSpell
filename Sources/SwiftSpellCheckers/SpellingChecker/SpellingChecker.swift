import Foundation
import SwiftSpellParser
import SwiftSpellUtils

public class SpellingChecker {
    private let dictionary: Set<String>

    public init() throws {
        let web2 = try String(contentsOf: URL(fileURLWithPath: "/usr/share/dict/web2"))
            .split { $0.isWhitespace || $0.isNewline }
            .filter { $0.allSatisfy { $0.isLetter } }
            .map { $0.lowercased() }

        let web2a = try String(contentsOf: URL(fileURLWithPath: "/usr/share/dict/web2a"))
            .split { $0.isWhitespace || $0.isNewline }
            .filter { $0.allSatisfy { $0.isLetter } }
            .map { $0.lowercased() }

        var dictionary: Set<String> = []
        dictionary.formUnion(web2)
        dictionary.formUnion(web2a)
        dictionary.formUnion(terms)

        self.dictionary = dictionary
    }
}

extension SpellingChecker: Checker {
    public func checkIdentifier(_ identifier: Identifier) -> AnySequence<CheckerMessage> {
        return identifier
            .tokenized()
            .filter { !checkWord($0.text) }
            .map { CheckerMessage(position: $0.range.lowerBound, message: "Unknown word: \($0.text)") }
            .asAnySequence()
    }

    public func checkComment(_ comment: Comment) -> AnySequence<CheckerMessage> {
        return comment
            .lines
            .flatMap { $0.tokenized() }
            .filter { !checkWord($0.text) }
            .map { CheckerMessage(position: $0.range.lowerBound, message: "Unknown word: \($0.text)") }
            .asAnySequence()
    }
}

extension SpellingChecker {
    public func checkWord(_ word: String) -> Bool {
        guard word.allSatisfy({ $0.isLetter }) else {
            return true
        }

        let word = word.lowercased()

        if dictionary.contains(word) {
            return true
        }

        for (suffix, ender) in suffixes where word.hasSuffix(suffix) {
            if dictionary.contains(word.dropLast(suffix.count) + ender) {
                return true
            }
        }

        return false
    }
}

// MARK: - Suffixes for inflected form reversal

private let suffixes: [(suffix: String, ender: String)] = [
    // Noun suffixes
    ("s", ""),
    ("ses", "s"),
    ("xes", "x"),
    ("zes", "z"),
    ("ches", "ch"),
    ("shes", "sh"),
    ("men", "man"),
    ("ies", "y"),

    // Verb suffixes
    ("s", ""),
    ("ies", "s"),
    ("es", "x"),
    ("es", "z"),
    ("ed", "ch"),
    ("ed", "sh"),
    ("ing", "man"),
    ("ing", "y"),

    // Verb suffixes - extra
    ("ed", ""),
    ("ed", "e"),
    ("ied", "y"),
    ("ing", ""),
    ("ing", "e"),
    ("mmed", "m"),
    ("mming", "m"),
    ("rred", "r"),
    ("rring", "r"),
    ("tted", "t"),
    ("tting", "t"),

    // Adjective suffixes
    ("er", ""),
    ("est", ""),
    ("er", "e"),
    ("est", "e"),

    // Adjective suffixes - extra
    ("ability", ""),
    ("able", ""),
    ("ier", "y"),
    ("ized", ""),
]

// MARK: - Common programming terms

private let terms: [String] = [
    "lhs",
    "rhs",
    "byte",
    "iterator",
    "software",
    "todo",
    "fixme",
    "http",
    "https",
    "html",
    "xml",
    "json",
    "js",
    "struct",
    "args",
    "params",
    "int",
    "crc",
    "stat",
    "org",
    "com",
    "www",
    "lookup",
    "crypt",
    "decrypt",
    "url",
    "lib",
    "unencrypted",
    "accessor",
    "init",
    "autoreleasepool",

    // Consider some kind of word splitter?
    "callback",
    "bitmap",
    "filename",
    "userdata",
]
