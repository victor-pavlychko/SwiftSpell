import SwiftSyntax

class UnifiedSyntaxVisitor: SyntaxVisitor {

    func visitAny<Node: SyntaxProtocol>(_ node: Node) -> SyntaxVisitorContinueKind {
        return .visitChildren
    }

    func visitAnyPost<Node: SyntaxProtocol>(_ node: Node) { }

    // MARK: - visit(_ node: ...)

    override func visit(_ node: UnknownDeclSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: UnknownExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: UnknownStmtSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: UnknownTypeSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: UnknownPatternSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: CodeBlockItemSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: CodeBlockItemListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: CodeBlockSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: InOutExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: PoundColumnExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: TupleExprElementListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ArrayElementListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: DictionaryElementListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: StringLiteralSegmentsSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: TryExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: DeclNameArgumentSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: DeclNameArgumentListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: DeclNameArgumentsSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: IdentifierExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: SuperRefExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: NilLiteralExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: DiscardAssignmentExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: AssignmentExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: SequenceExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ExprListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: PoundLineExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: PoundFileExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: PoundFilePathExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: PoundFunctionExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: PoundDsohandleExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: SymbolicReferenceExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: PrefixOperatorExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: BinaryOperatorExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ArrowExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: FloatLiteralExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: TupleExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ArrayExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: DictionaryExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: TupleExprElementSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ArrayElementSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: DictionaryElementSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: IntegerLiteralExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: BooleanLiteralExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: TernaryExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: MemberAccessExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: IsExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: AsExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: TypeExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ClosureCaptureItemSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ClosureCaptureItemListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ClosureCaptureSignatureSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ClosureParamSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ClosureParamListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ClosureSignatureSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ClosureExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: UnresolvedPatternExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: FunctionCallExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: SubscriptExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: OptionalChainingExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ForcedValueExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: PostfixUnaryExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: SpecializeExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: StringSegmentSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ExpressionSegmentSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: StringLiteralExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: KeyPathExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: KeyPathBaseExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ObjcNamePieceSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ObjcNameSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ObjcKeyPathExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ObjcSelectorExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: EditorPlaceholderExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ObjectLiteralExprSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: TypeInitializerClauseSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: TypealiasDeclSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: AssociatedtypeDeclSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: FunctionParameterListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ParameterClauseSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ReturnClauseSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: FunctionSignatureSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: IfConfigClauseSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: IfConfigClauseListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: IfConfigDeclSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: PoundErrorDeclSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: PoundWarningDeclSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: PoundSourceLocationSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: PoundSourceLocationArgsSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: DeclModifierSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: InheritedTypeSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: InheritedTypeListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: TypeInheritanceClauseSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ClassDeclSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: StructDeclSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ProtocolDeclSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ExtensionDeclSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: MemberDeclBlockSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: MemberDeclListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: MemberDeclListItemSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: SourceFileSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: InitializerClauseSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: FunctionParameterSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ModifierListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: FunctionDeclSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: InitializerDeclSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: DeinitializerDeclSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: SubscriptDeclSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: AccessLevelModifierSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: AccessPathComponentSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: AccessPathSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ImportDeclSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: AccessorParameterSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: AccessorDeclSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: AccessorListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: AccessorBlockSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: PatternBindingSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: PatternBindingListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: VariableDeclSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: EnumCaseElementSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: EnumCaseElementListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: EnumCaseDeclSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: EnumDeclSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: OperatorDeclSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: IdentifierListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: OperatorPrecedenceAndTypesSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: PrecedenceGroupDeclSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: PrecedenceGroupAttributeListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: PrecedenceGroupRelationSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: PrecedenceGroupNameListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: PrecedenceGroupNameElementSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: PrecedenceGroupAssignmentSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: PrecedenceGroupAssociativitySyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: TokenListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: NonEmptyTokenListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: CustomAttributeSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: AttributeSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: AttributeListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: SpecializeAttributeSpecListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: LabeledSpecializeEntrySyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: NamedAttributeStringArgumentSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: DeclNameSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ImplementsAttributeArgumentsSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ObjCSelectorPieceSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ObjCSelectorSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: DifferentiableAttributeArgumentsSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: DifferentiationParamsClauseSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: DifferentiationParamsSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: DifferentiationParamListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: DifferentiationParamSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: DifferentiableAttributeFuncSpecifierSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: FunctionDeclNameSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ContinueStmtSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: WhileStmtSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: DeferStmtSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ExpressionStmtSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: SwitchCaseListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: RepeatWhileStmtSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: GuardStmtSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: WhereClauseSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ForInStmtSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: SwitchStmtSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: CatchClauseListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: DoStmtSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ReturnStmtSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: YieldStmtSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: YieldListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: FallthroughStmtSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: BreakStmtSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: CaseItemListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ConditionElementSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: AvailabilityConditionSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: MatchingPatternConditionSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: OptionalBindingConditionSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ConditionElementListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: DeclarationStmtSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ThrowStmtSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: IfStmtSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ElseIfContinuationSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ElseBlockSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: SwitchCaseSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: SwitchDefaultLabelSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: CaseItemSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: SwitchCaseLabelSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: CatchClauseSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: PoundAssertStmtSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: GenericWhereClauseSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: GenericRequirementListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: GenericRequirementSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: SameTypeRequirementSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: GenericParameterListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: GenericParameterSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: GenericParameterClauseSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ConformanceRequirementSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: SimpleTypeIdentifierSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: MemberTypeIdentifierSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ClassRestrictionTypeSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ArrayTypeSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: DictionaryTypeSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: MetatypeTypeSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: OptionalTypeSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: SomeTypeSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ImplicitlyUnwrappedOptionalTypeSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: CompositionTypeElementSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: CompositionTypeElementListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: CompositionTypeSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: TupleTypeElementSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: TupleTypeElementListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: TupleTypeSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: FunctionTypeSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: AttributedTypeSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: GenericArgumentListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: GenericArgumentSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: GenericArgumentClauseSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: TypeAnnotationSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: EnumCasePatternSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: IsTypePatternSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: OptionalPatternSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: IdentifierPatternSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: AsTypePatternSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: TuplePatternSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: WildcardPatternSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: TuplePatternElementSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ExpressionPatternSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: TuplePatternElementListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: ValueBindingPatternSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: AvailabilitySpecListSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: AvailabilityArgumentSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: AvailabilityLabeledArgumentSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: AvailabilityVersionRestrictionSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: VersionTupleSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: TokenSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    override func visit(_ node: UnknownSyntax) -> SyntaxVisitorContinueKind {
        return visitAny(node)
    }

    // MARK: - visitPost(_ node: ...)

    override func visitPost(_ node: UnknownDeclSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: UnknownExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: UnknownStmtSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: UnknownTypeSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: UnknownPatternSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: CodeBlockItemSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: CodeBlockItemListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: CodeBlockSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: InOutExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: PoundColumnExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: TupleExprElementListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ArrayElementListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: DictionaryElementListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: StringLiteralSegmentsSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: TryExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: DeclNameArgumentSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: DeclNameArgumentListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: DeclNameArgumentsSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: IdentifierExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: SuperRefExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: NilLiteralExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: DiscardAssignmentExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: AssignmentExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: SequenceExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ExprListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: PoundLineExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: PoundFileExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: PoundFilePathExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: PoundFunctionExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: PoundDsohandleExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: SymbolicReferenceExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: PrefixOperatorExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: BinaryOperatorExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ArrowExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: FloatLiteralExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: TupleExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ArrayExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: DictionaryExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: TupleExprElementSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ArrayElementSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: DictionaryElementSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: IntegerLiteralExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: BooleanLiteralExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: TernaryExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: MemberAccessExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: IsExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: AsExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: TypeExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ClosureCaptureItemSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ClosureCaptureItemListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ClosureCaptureSignatureSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ClosureParamSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ClosureParamListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ClosureSignatureSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ClosureExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: UnresolvedPatternExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: FunctionCallExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: SubscriptExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: OptionalChainingExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ForcedValueExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: PostfixUnaryExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: SpecializeExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: StringSegmentSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ExpressionSegmentSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: StringLiteralExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: KeyPathExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: KeyPathBaseExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ObjcNamePieceSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ObjcNameSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ObjcKeyPathExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ObjcSelectorExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: EditorPlaceholderExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ObjectLiteralExprSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: TypeInitializerClauseSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: TypealiasDeclSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: AssociatedtypeDeclSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: FunctionParameterListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ParameterClauseSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ReturnClauseSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: FunctionSignatureSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: IfConfigClauseSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: IfConfigClauseListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: IfConfigDeclSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: PoundErrorDeclSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: PoundWarningDeclSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: PoundSourceLocationSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: PoundSourceLocationArgsSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: DeclModifierSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: InheritedTypeSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: InheritedTypeListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: TypeInheritanceClauseSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ClassDeclSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: StructDeclSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ProtocolDeclSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ExtensionDeclSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: MemberDeclBlockSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: MemberDeclListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: MemberDeclListItemSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: SourceFileSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: InitializerClauseSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: FunctionParameterSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ModifierListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: FunctionDeclSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: InitializerDeclSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: DeinitializerDeclSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: SubscriptDeclSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: AccessLevelModifierSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: AccessPathComponentSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: AccessPathSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ImportDeclSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: AccessorParameterSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: AccessorDeclSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: AccessorListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: AccessorBlockSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: PatternBindingSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: PatternBindingListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: VariableDeclSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: EnumCaseElementSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: EnumCaseElementListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: EnumCaseDeclSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: EnumDeclSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: OperatorDeclSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: IdentifierListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: OperatorPrecedenceAndTypesSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: PrecedenceGroupDeclSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: PrecedenceGroupAttributeListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: PrecedenceGroupRelationSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: PrecedenceGroupNameListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: PrecedenceGroupNameElementSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: PrecedenceGroupAssignmentSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: PrecedenceGroupAssociativitySyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: TokenListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: NonEmptyTokenListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: CustomAttributeSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: AttributeSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: AttributeListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: SpecializeAttributeSpecListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: LabeledSpecializeEntrySyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: NamedAttributeStringArgumentSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: DeclNameSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ImplementsAttributeArgumentsSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ObjCSelectorPieceSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ObjCSelectorSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: DifferentiableAttributeArgumentsSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: DifferentiationParamsClauseSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: DifferentiationParamsSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: DifferentiationParamListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: DifferentiationParamSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: DifferentiableAttributeFuncSpecifierSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: FunctionDeclNameSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ContinueStmtSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: WhileStmtSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: DeferStmtSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ExpressionStmtSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: SwitchCaseListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: RepeatWhileStmtSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: GuardStmtSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: WhereClauseSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ForInStmtSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: SwitchStmtSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: CatchClauseListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: DoStmtSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ReturnStmtSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: YieldStmtSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: YieldListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: FallthroughStmtSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: BreakStmtSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: CaseItemListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ConditionElementSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: AvailabilityConditionSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: MatchingPatternConditionSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: OptionalBindingConditionSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ConditionElementListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: DeclarationStmtSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ThrowStmtSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: IfStmtSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ElseIfContinuationSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ElseBlockSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: SwitchCaseSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: SwitchDefaultLabelSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: CaseItemSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: SwitchCaseLabelSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: CatchClauseSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: PoundAssertStmtSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: GenericWhereClauseSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: GenericRequirementListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: GenericRequirementSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: SameTypeRequirementSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: GenericParameterListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: GenericParameterSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: GenericParameterClauseSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ConformanceRequirementSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: SimpleTypeIdentifierSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: MemberTypeIdentifierSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ClassRestrictionTypeSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ArrayTypeSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: DictionaryTypeSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: MetatypeTypeSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: OptionalTypeSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: SomeTypeSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ImplicitlyUnwrappedOptionalTypeSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: CompositionTypeElementSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: CompositionTypeElementListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: CompositionTypeSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: TupleTypeElementSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: TupleTypeElementListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: TupleTypeSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: FunctionTypeSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: AttributedTypeSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: GenericArgumentListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: GenericArgumentSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: GenericArgumentClauseSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: TypeAnnotationSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: EnumCasePatternSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: IsTypePatternSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: OptionalPatternSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: IdentifierPatternSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: AsTypePatternSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: TuplePatternSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: WildcardPatternSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: TuplePatternElementSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ExpressionPatternSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: TuplePatternElementListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: ValueBindingPatternSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: AvailabilitySpecListSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: AvailabilityArgumentSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: AvailabilityLabeledArgumentSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: AvailabilityVersionRestrictionSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: VersionTupleSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: TokenSyntax) {
        visitAnyPost(node)
    }

    override func visitPost(_ node: UnknownSyntax) {
        visitAnyPost(node)
    }
}
