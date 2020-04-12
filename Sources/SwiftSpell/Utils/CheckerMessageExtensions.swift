import SwiftSpellCheckers
import SwiftSyntax

extension CheckerMessage {
    public func format(using locationConverter: SourceLocationConverter) -> FormattedMessage {
        return FormattedMessage(location: locationConverter.location(for: position), message: message)
    }
}
