import Foundation

extension BidirectionalCollection {
    public func trim(while predicate: (Element) throws -> Bool) rethrows -> SubSequence {
        return try self
            .drop(while: predicate)
            .dropLast(while: predicate)
    }

    public func dropLast(while predicate: (Element) throws -> Bool) rethrows -> SubSequence {
        for index in indices.reversed() {
            if try !predicate(self[index]) {
                return self[startIndex ... index]
            }
        }

        return self[startIndex ..< startIndex]
    }
}
