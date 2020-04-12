import SwiftSyntax

public struct FormattedMessage {
    public let location: SourceLocation
    public let message: String

    public init(location: SourceLocation, message: String) {
        self.location = location
        self.message = message
    }
}

extension FormattedMessage: Equatable { }

extension FormattedMessage: Hashable { }

extension FormattedMessage: Comparable {
    public static func < (lhs: FormattedMessage, rhs: FormattedMessage) -> Bool {
        return lhs.location < rhs.location
    }
}

extension FormattedMessage: CustomStringConvertible {
    public var description: String {
        return "\(location): warning: \(message)"
    }
}
