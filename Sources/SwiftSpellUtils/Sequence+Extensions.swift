extension Sequence {
    public func asAnySequence() -> AnySequence<Element> {
        return AnySequence(self)
    }
}

extension Sequence where Element: Hashable {
    public func unique() -> Set<Element> {
        return Set(self)
    }
}
