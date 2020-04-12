import Foundation
import SwiftSpellUtils
import SwiftSyntax

public struct SourceFile {
    public let identifiers: [Identifier]
    public let commentBlocks: [CommentBlock]
    public let locationConverter: SourceLocationConverter

    public init(at location: FileLocation) throws {
        let tree = try SyntaxParser.parse(location.file)
        let visitor = Visitor()
        visitor.walk(tree)

        self.identifiers = visitor.identifiers
        self.commentBlocks = visitor.commentBlocks
        self.locationConverter = SourceLocationConverter(file: location.relativePath, tree: tree)
    }
}

extension SourceFile {
    private class Visitor: UnifiedSyntaxVisitor {
        var identifiers: [Identifier] = []
        var commentBlocks: [CommentBlock] = []

        private var contextStack: [DeclarationContext] = []

        override func visitAny<Node>(_ node: Node) -> SyntaxVisitorContinueKind where Node: SyntaxProtocol {
            if node.children.isEmpty, let trivia = node.leadingTrivia {
                if let commentBlock = CommentBlock(trivia: trivia, position: node.position) {
                    commentBlocks.append(commentBlock)
                }
            }

            if let parser = node as? IdentifierParser {
                identifiers.append(contentsOf: parser.identifiers(context: contextStack))
            }

            if node.children.isEmpty, let trivia = node.trailingTrivia {
                if let commentBlock = CommentBlock(trivia: trivia, position: node.endPositionBeforeTrailingTrivia) {
                    commentBlocks.append(commentBlock)
                }
            }

            if let context = node as? DeclarationContext {
                contextStack.append(context)
            }

            return .visitChildren
        }

        override func visitAnyPost<Node>(_ node: Node) where Node: SyntaxProtocol {
            if node is DeclarationContext {
                contextStack.removeLast()
            }
        }
    }
}
