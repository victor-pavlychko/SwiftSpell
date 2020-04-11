import SwiftSyntax

protocol DeclarationContext { }

protocol DeclarationProvider {
    func declarations(context: [DeclarationContext]) -> AnySequence<SourceText>
}

protocol IdentifierDeclarationProvider: DeclarationProvider {
    var identifier: TokenSyntax { get }
}

extension IdentifierDeclarationProvider {
    func declarations(context: [DeclarationContext]) -> AnySequence<SourceText> {
        return AnySequence(CollectionOfOne(SourceText(identifier)))
    }
}

extension IdentifierPatternSyntax: IdentifierDeclarationProvider { }
extension ClassDeclSyntax: IdentifierDeclarationProvider { }
extension StructDeclSyntax: IdentifierDeclarationProvider { }
extension EnumDeclSyntax: IdentifierDeclarationProvider { }
extension ProtocolDeclSyntax: IdentifierDeclarationProvider { }
extension AssociatedtypeDeclSyntax: IdentifierDeclarationProvider { }
extension TypealiasDeclSyntax: IdentifierDeclarationProvider { }
extension FunctionDeclSyntax: IdentifierDeclarationProvider { }
extension EnumCaseElementSyntax: IdentifierDeclarationProvider { }

extension FunctionParameterSyntax: DeclarationProvider {
    func declarations(context: [DeclarationContext]) -> AnySequence<SourceText> {
        return AnySequence([firstName, secondName].compactMap({ $0 }).map({ SourceText($0) }))
    }
}
