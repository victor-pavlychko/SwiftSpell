import Foundation
import SwiftSyntax

struct SourceFile {
    let declarations: [SourceText]
    let commentBlocks: [CommentBlock]
    let locationConverter: SourceLocationConverter

    init(file url: URL, relativeTo directory: URL) throws {
        let tree = try SyntaxParser.parse(url)
        let visitor = Visitor()
        visitor.walk(tree)

        self.declarations = visitor.declarations
        self.commentBlocks = visitor.commentBlocks
        self.locationConverter = SourceLocationConverter(file: url.path(relativeTo: directory), tree: tree)
    }
}

extension SourceFile {
    private class Visitor: UnifiedSyntaxVisitor {
        var declarations: [SourceText] = []
        var commentBlocks: [CommentBlock] = []

        private var contextStack: [DeclarationContext] = []

        override func visitAny<Node>(_ node: Node) -> SyntaxVisitorContinueKind where Node: SyntaxProtocol {
            if node.children.isEmpty, let trivia = node.leadingTrivia {
                if let commentBlock = CommentBlock(trivia: trivia, position: node.position) {
                    commentBlocks.append(commentBlock)
                }
            }

            if let declarationProvider = node as? DeclarationProvider {
                declarations.append(contentsOf: declarationProvider.declarations(context: contextStack))
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
