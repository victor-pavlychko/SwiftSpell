import SwiftSyntax

protocol IdentifierParser {
    func identifiers(context: [DeclarationContext]) -> AnySequence<Identifier>
}

protocol IdentifierProviding {
    var identifier: TokenSyntax { get }
}

extension IdentifierParser where Self: IdentifierProviding {
    func identifiers(context: [DeclarationContext]) -> AnySequence<Identifier> {
        return AnySequence(CollectionOfOne(Identifier(identifier)))
    }
}

extension IdentifierPatternSyntax: IdentifierProviding, IdentifierParser { }
extension ClassDeclSyntax: IdentifierProviding, IdentifierParser { }
extension StructDeclSyntax: IdentifierProviding, IdentifierParser { }
extension EnumDeclSyntax: IdentifierProviding, IdentifierParser { }
extension ProtocolDeclSyntax: IdentifierProviding, IdentifierParser { }
extension AssociatedtypeDeclSyntax: IdentifierProviding, IdentifierParser { }
extension TypealiasDeclSyntax: IdentifierProviding, IdentifierParser { }
extension FunctionDeclSyntax: IdentifierProviding, IdentifierParser { }
extension EnumCaseElementSyntax: IdentifierProviding, IdentifierParser { }

extension FunctionParameterSyntax: IdentifierParser {
    func identifiers(context: [DeclarationContext]) -> AnySequence<Identifier> {
        return AnySequence([firstName, secondName].compactMap({ $0 }).map({ Identifier($0) }))
    }
}
