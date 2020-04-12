import SwiftSpellParser

extension SourceText {
    public func tokenized() -> [SourceText] {
        return text
            .tokenized()
            .map { SourceText($0, baseRange: range) }
    }
}

extension StringProtocol {
    public func tokenized() -> [SubSequence] {
        return sliced { previous, current, next in
            if current.isWhitespace || current.isNewline {
                return .sliceAndConsume
            }

            if current == "_" {
                if let previous = previous, previous.isNumber, let next = next, next.isNumber {
                    return .proceed
                }

                return .sliceAndConsume
            }

            guard let previous = previous else {
                return .proceed
            }

            if current.isNumber {
                if !previous.isNumber {
                    return .sliceAndKeep
                }

                return .proceed
            }

            if current.isLetter {
                if !previous.isLetter {
                    return .sliceAndKeep
                }

                if current.isUppercase {
                    if !previous.isUppercase {
                        return .sliceAndKeep
                    }

                    if let next = next, next.isLetter, !next.isUppercase {
                        return .sliceAndKeep
                    }

                    return .proceed
                }

                return .proceed
            }

            do {
                if previous.isNumber || previous.isLetter {
                    return .sliceAndKeep
                }

                return .proceed
            }
        }
    }
}
