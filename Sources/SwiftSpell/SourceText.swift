import SwiftSyntax

extension AbsolutePosition: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(utf8Offset)
    }
}

struct SourceText {
    let text: String
    let range: Range<AbsolutePosition>
}

extension SourceText: Equatable { }

extension SourceText: Hashable { }

extension SourceText: CustomStringConvertible {
    var description: String {
        return #"<\#(type(of: self)): text = "\#(text)", range = \#(range.lowerBound.utf8Offset ..< range.upperBound.utf8Offset)>"#
    }
}

extension SourceText {
    init(_ token: TokenSyntax) {
        self.init(token.text, range: token.positionAfterSkippingLeadingTrivia ..< token.endPositionBeforeTrailingTrivia)
    }
}

extension SourceText {
    init(_ text: String, position: AbsolutePosition) {
        self.init(text, range: position ..< position + SourceLength(of: text))
    }

    init(_ text: String, range: Range<AbsolutePosition>) {
        self.text = text
        self.range = range

        assert(text.utf8.count == range.upperBound.utf8Offset - range.lowerBound.utf8Offset)
    }
}

extension SourceText {
    init(_ slice: Substring, basePosition: AbsolutePosition) {
        let baseIndex = slice.base.utf8.startIndex
        let startIndex = slice.startIndex.samePosition(in: slice.base.utf8).unsafelyUnwrapped
        let endIndex = slice.endIndex.samePosition(in: slice.base.utf8).unsafelyUnwrapped
        let startOffset = SourceLength(utf8Length: slice.base.utf8.distance(from: baseIndex, to: startIndex))
        let endOffset = SourceLength(utf8Length: slice.base.utf8.distance(from: baseIndex, to: endIndex))

        self.text = String(slice)
        self.range = basePosition + startOffset ..< basePosition + endOffset

        assert(text.utf8.count == range.upperBound.utf8Offset - range.lowerBound.utf8Offset)
    }

    init(_ slice: Substring, baseRange: Range<AbsolutePosition>) {
        assert(slice.base.utf8.count == baseRange.upperBound.utf8Offset - baseRange.lowerBound.utf8Offset)

        self.init(slice, basePosition: baseRange.lowerBound)
    }
}
