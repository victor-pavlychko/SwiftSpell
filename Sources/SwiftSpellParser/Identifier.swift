import SwiftSyntax

public typealias Identifier = SourceText

public struct VariableIdentifier {
    public let name: SourceText
}

public struct TypeIdentifier {
    public let name: SourceText
}

public struct FunctionIdentifier {
    public let baseName: SourceText
    public let parameterNames: [SourceText]
}
