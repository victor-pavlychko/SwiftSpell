import SwiftSyntax

extension SourceLocation: Equatable {
    public static func == (lhs: SourceLocation, rhs: SourceLocation) -> Bool {
        return lhs.file == rhs.file
            && lhs.offset == rhs.offset
    }
}

extension SourceLocation: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(file)
        hasher.combine(offset)
    }
}

extension SourceLocation: Comparable {
    public static func < (lhs: SourceLocation, rhs: SourceLocation) -> Bool {
        switch (lhs.file, rhs.file) {
        case (.none, .some):
            return true
        case (.some, .none):
            return false
        case let (.some(lhs), .some(rhs)) where lhs < rhs:
            return true
        case let (.some(lhs), .some(rhs)) where lhs > rhs:
            return false
        case (.some, .some), // where lhs == rhs
             (.none, .none):
            return lhs.offset < rhs.offset
        }
    }
}

extension SourceLocation: CustomStringConvertible {
    public var description: String {
        return "\(file ?? "<unknown file>"):\(line ?? 0):\(column ?? 0)"
    }
}
