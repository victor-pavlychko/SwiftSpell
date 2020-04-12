import Foundation
import SwiftSpellParser
import SwiftSpellUtils

public class SpellingChecker {
    private let spellchecker: Spellchecker

    public init() throws {
        self.spellchecker = try Spellchecker()
    }
}

extension SpellingChecker: Checker {
    public func checkIdentifier(_ identifier: Identifier) -> AnySequence<CheckerMessage> {
        return identifier
            .tokenized()
            .filter { !spellchecker.checkWord($0.text) }
            .map { CheckerMessage(position: $0.range.lowerBound, message: "Unknown word: \($0.text)") }
            .asAnySequence()
    }

    public func checkComment(_ comment: Comment) -> AnySequence<CheckerMessage> {
        return comment
            .lines
            .flatMap { $0.tokenized() }
            .filter { !spellchecker.checkWord($0.text) }
            .map { CheckerMessage(position: $0.range.lowerBound, message: "Unknown word: \($0.text)") }
            .asAnySequence()
    }
}
