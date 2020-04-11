extension Sequence where Element: Hashable {
    func unique() -> Set<Element> {
        return Set(self)
    }
}
