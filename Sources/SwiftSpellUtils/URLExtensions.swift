import Foundation

extension URL {
    public func path(relativeTo base: URL) -> String {
        let pathComponents = self.pathComponents
        let baseComponents = base.pathComponents

        guard pathComponents.starts(with: baseComponents) else {
            return path
        }

        return pathComponents.dropFirst(baseComponents.count).joined(separator: "/")
    }
}
