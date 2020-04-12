import Dispatch

extension RandomAccessCollection {
    public func parallelForEach(_ body: (Element) -> Void) {
        guard count > 1 else {
            return forEach(body)
        }

        DispatchQueue.concurrentPerform(iterations: count) { iteration in
            body(self[index(startIndex, offsetBy: iteration)])
        }
    }

    public func parallelMap<T>(_ transform: (Element) -> T) -> [T] {
        guard count > 1 else {
            return map(transform)
        }

        return Array(unsafeUninitializedCapacity: count) { buffer, initializedCount in
            let baseAddress = buffer.baseAddress.unsafelyUnwrapped
            DispatchQueue.concurrentPerform(iterations: count) { iteration in
                baseAddress.advanced(by: iteration).initialize(to: transform(self[index(startIndex, offsetBy: iteration)]))
            }
        }
    }

    public func parallelCompactMap<T>(_ transform: (Element) -> T?) -> [T] {
        guard count > 1 else {
            return compactMap(transform)
        }

        let lock = DispatchQueue(label: #function)
        var results: [T] = []
        results.reserveCapacity(count)

        parallelForEach { element in
            if let result = transform(element) {
                lock.sync {
                    results.append(result)
                }
            }
        }

        return results
    }

    public func parallelTryMap<T>(_ transform: (Element) throws -> T) -> [Result<T, Error>] {
        return parallelMap { element in
            return Result {
                return try transform(element)
            }
        }
    }
}
