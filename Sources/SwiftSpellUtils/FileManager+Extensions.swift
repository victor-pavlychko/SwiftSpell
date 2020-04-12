import Foundation

public enum FileType {
    case regular
    case directory
}

public struct FileLocation {
    public let file: URL
    public let directory: URL

    public init(file: URL, directory: URL) {
        self.file = file
        self.directory = directory
    }

    public var relativePath: String {
        return file.path(relativeTo: directory)
    }
}

extension FileManager {
    public func fileType(atPath path: String) -> FileType? {
        var isDirectory: ObjCBool = false
        if !fileExists(atPath: path, isDirectory: &isDirectory) {
            return nil
        } else if isDirectory.boolValue {
            return .directory
        } else {
            return .regular
        }
    }

    public func listFiles(at inputPaths: [String], extensions: Set<String>) -> [FileLocation] {
        return inputPaths
            .map {  URL(fileURLWithPath: $0) }
            .flatMap { directory -> AnySequence<FileLocation> in
                guard let directoryEnumerator = enumerator(at: directory, includingPropertiesForKeys: nil) else {
                    return AnySequence(EmptyCollection())
                }

                return directoryEnumerator
                    .compactMap { $0 as? URL }
                    .filter {
                        return extensions.contains($0.pathExtension)
                            && fileType(atPath: $0.path) == .some(.regular)
                            && isReadableFile(atPath: $0.path)
                    }
                    .map {
                        FileLocation(file: $0, directory: directory)
                    }
                    .asAnySequence()
            }
    }
}
