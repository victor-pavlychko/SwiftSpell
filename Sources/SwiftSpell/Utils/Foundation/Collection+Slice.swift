enum CollectionSliceOperation {
    case sliceAndKeep
    case sliceAndConsume
    case proceed
}

extension Collection {
    func sliced(omittingEmptySubsequences: Bool = true, whereSeparator isSeparator: (Element, Element, Element?) throws -> CollectionSliceOperation) rethrows -> [SubSequence] {
        var result: [SubSequence] = []
        var nextStartIndex = startIndex

        var iterator = zip(indices, self).makeIterator()

        var previous: (index: Index, element: Element)?
        var current: (index: Index, element: Element)?
        var next: (index: Index, element: Element)?

        while true {
            previous = current
            current = next
            next = iterator.next()

            if let previous = previous, let current = current {
                let operation = try isSeparator(previous.element, current.element, next?.element)

                if operation != .proceed {
                    if !omittingEmptySubsequences || nextStartIndex != current.index {
                        result.append(self[nextStartIndex ..< current.index])
                    }
                }

                switch operation {
                case .sliceAndKeep:
                    nextStartIndex = current.index

                case .sliceAndConsume:
                    nextStartIndex = next?.index ?? endIndex

                case .proceed:
                    break
                }
            }

            guard next != nil else {
                break
            }
        }

        if nextStartIndex != endIndex {
            result.append(self[nextStartIndex ..< endIndex])
        }

        return result
    }
}
