extension SourceText {
    func tokenized() -> [SourceText] {
        return text
            .tokenized()
            .map { SourceText($0, baseRange: range) }
    }
}

extension StringProtocol {
    func tokenized() -> [SubSequence] {
        return sliced { previous, current, next in
            if current.isWhitespace || current.isNewline {
                return .sliceAndConsume
            }

            if current == "_" {
                if previous.isNumber, let next = next, next.isNumber {
                    return .proceed
                }

                return .sliceAndConsume
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
