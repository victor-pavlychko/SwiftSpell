import SwiftSpellParser

public protocol Checker {
    func checkIdentifier(_ identifier: Identifier) -> AnySequence<CheckerMessage>
    func checkComment(_ comment: Comment) -> AnySequence<CheckerMessage>
}

extension Checker {
    public func checkIdentifier(_ identifier: Identifier) -> AnySequence<CheckerMessage> {
        return AnySequence(EmptyCollection())
    }

    public func checkComment(_ comment: Comment) -> AnySequence<CheckerMessage> {
        return AnySequence(EmptyCollection())
    }
}
