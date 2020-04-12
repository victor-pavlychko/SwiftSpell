import SwiftSyntax

public struct CheckerMessage {
    public let position: AbsolutePosition
    public let message: String

    public init(position: AbsolutePosition, message: String) {
        self.position = position
        self.message = message
    }
}
