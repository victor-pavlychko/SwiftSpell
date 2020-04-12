import SwiftSyntax

public struct ErrorMessage {
    public enum Kind: String {
        case error
        case warning
    }

    public let location: SourceLocation
    public let kind: Kind
    public let message: String

    public init(location: SourceLocation, kind: Kind, message: String) {
        self.location = location
        self.kind = kind
        self.message = message
    }
}

extension ErrorMessage: Equatable { }

extension ErrorMessage: Hashable { }

extension ErrorMessage: Comparable {
    public static func < (lhs: ErrorMessage, rhs: ErrorMessage) -> Bool {
        return lhs.location < rhs.location
    }
}

extension ErrorMessage: CustomStringConvertible {
    public var description: String {
        return "\(location): \(kind): \(message)"
    }
}
