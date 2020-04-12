import SwiftSyntax

public struct SourceText: Hashable {
    public let text: String
    public let range: Range<AbsolutePosition>
}

extension SourceText: CustomStringConvertible {
    public var description: String {
        return #"<\#(type(of: self)): text = "\#(text)", range = \#(range.lowerBound.utf8Offset ..< range.upperBound.utf8Offset)>"#
    }
}

extension SourceText {
    public init(_ token: TokenSyntax) {
        self.init(token.text, range: token.positionAfterSkippingLeadingTrivia ..< token.endPositionBeforeTrailingTrivia)
    }
}

extension SourceText {
    public init(_ text: String, position: AbsolutePosition) {
        self.init(text, range: position ..< position + SourceLength(of: text))
    }

    public init(_ text: String, range: Range<AbsolutePosition>) {
        self.text = text
        self.range = range

        assert(text.utf8.count == range.count)
    }
}

extension SourceText {
    public init(_ slice: Substring, basePosition: AbsolutePosition) {
        let baseIndex = slice.base.utf8.startIndex
        let startIndex = slice.startIndex.samePosition(in: slice.base.utf8).unsafelyUnwrapped
        let endIndex = slice.endIndex.samePosition(in: slice.base.utf8).unsafelyUnwrapped
        let startOffset = SourceLength(utf8Length: slice.base.utf8.distance(from: baseIndex, to: startIndex))
        let endOffset = SourceLength(utf8Length: slice.base.utf8.distance(from: baseIndex, to: endIndex))

        self.text = String(slice)
        self.range = basePosition + startOffset ..< basePosition + endOffset

        assert(text.utf8.count == range.count)
    }

    public init(_ slice: Substring, baseRange: Range<AbsolutePosition>) {
        assert(slice.base.utf8.count == baseRange.count)

        self.init(slice, basePosition: baseRange.lowerBound)
    }
}
