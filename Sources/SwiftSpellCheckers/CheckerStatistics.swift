public protocol CheckerStatistics {
    init()
    func merge(_ other: Self)
}
