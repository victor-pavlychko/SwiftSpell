import SwiftSyntax

struct CommentBlock {
    let lines: [SourceText]
}

extension CommentBlock: CustomStringConvertible {
    var description: String {
        return #"<\#(type(of: self)): lines = \#(lines)>"#
    }
}

extension CommentBlock {
    init?(trivia: Trivia, position: AbsolutePosition) {
        var position = position

        self.lines = trivia.flatMap { piece -> AnySequence<SourceText> in
            defer {
                position += piece.sourceLength
            }

            switch piece {
            case let .lineComment(text), // A developer line comment, starting with '//'
                 let .docLineComment(text): // A documentation line comment, starting with '///'.

                let line = text
                    .drop { $0 == "/" }
                    .trim { $0.isWhitespace }

                return AnySequence(CollectionOfOne(SourceText(line, basePosition: position)))

            case let .blockComment(text), // A developer block comment, starting with '/*' and ending with '*/'.
                 let .docBlockComment(text): // A documentation block comment, starting with '/**' and ending with '*/'.

                let lines = text
                    .dropFirst().drop { $0 == "*" }
                    .dropLast().dropLast { $0 == "*" }
                    .split(omittingEmptySubsequences: false) { $0.isNewline }
                    .map { $0.trim { $0.isWhitespace } }
                    .map { SourceText($0, basePosition: position) }

                return AnySequence(lines)

            case .verticalTabs,
                 .formfeeds,
                 .newlines,
                 .carriageReturns,
                 .carriageReturnLineFeeds:

                return AnySequence(CollectionOfOne(SourceText("", basePosition: position)))

            case .spaces,
                 .tabs:

                return AnySequence(EmptyCollection())

            case .garbageText:

                return AnySequence(EmptyCollection())
            }
        }

        if lines.isEmpty {
            return nil
        }
    }
}
