import SwiftSyntax

extension AbsolutePosition: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(utf8Offset)
    }
}

extension AbsolutePosition: Strideable {
    public func distance(to other: AbsolutePosition) -> Int {
        return (other - self).utf8Length
    }

    public func advanced(by n: Int) -> AbsolutePosition {
        return self + SourceLength(utf8Length: n)
    }
}

public func - (lhs: AbsolutePosition, rhs: AbsolutePosition) -> SourceLength {
    return SourceLength(utf8Length: lhs.utf8Offset - rhs.utf8Offset)
}
