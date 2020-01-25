.class Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.source "XSDAttributeTraverser.java"


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method checkDefaultValid(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getValInfo()Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v1

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getValInfo()Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getValInfo()Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getValInfo()Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    return-void
.end method

.method checkDefaultValid(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {v0, v1, v2, p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    return-void
.end method

.method protected traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .locals 9

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseNamedAttr(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ZLmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object p1

    iget-object p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p3, v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object p1
.end method

.method protected traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    iget-object v0, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v11, 0x0

    invoke-virtual {v0, v9, v11, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v12

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_DEFAULT:I

    aget-object v0, v12, v0

    check-cast v0, Ljava/lang/String;

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    aget-object v1, v12, v1

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v1, v12, v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REF:I

    aget-object v1, v12, v1

    move-object v7, v1

    check-cast v7, Lmf/org/apache/xerces/xni/QName;

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_USE:I

    aget-object v1, v12, v1

    move-object v15, v1

    check-cast v15, Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    invoke-interface {v9, v1}, Lmf/org/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    if-eqz v7, :cond_3

    iget-object v1, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v1, v10, v5, v7, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v8, v4, v12, v11, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-static {v4}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v4

    move-object v6, v1

    move v11, v5

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v17, v4

    move-object v4, v12

    move v11, v5

    move/from16 v5, v16

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v6

    move-object/from16 v4, v17

    goto :goto_0

    :cond_1
    move-object/from16 v17, v4

    move v11, v5

    const/4 v6, 0x0

    :goto_0
    if-eqz v4, :cond_2

    const-string v1, "src-attribute.3.2"

    new-array v2, v11, [Ljava/lang/Object;

    iget-object v3, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v8, v1, v2, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_2
    iget-object v1, v7, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move v11, v5

    move-object v1, v14

    const/4 v6, 0x0

    const/4 v14, 0x0

    goto :goto_1

    :cond_4
    move v11, v5

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v12

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseNamedAttr(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ZLmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v6

    move-object v1, v14

    move-object v14, v6

    const/4 v6, 0x0

    :goto_1
    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v3, v13

    move-object v13, v0

    move v0, v11

    goto :goto_2

    :cond_5
    if-eqz v13, :cond_6

    move v0, v2

    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    move-object v3, v13

    move-object v13, v0

    const/4 v0, 0x0

    :goto_2
    if-eqz v14, :cond_b

    iget-object v4, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    if-eqz v4, :cond_7

    iget-object v4, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->getAttributeUse()Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    move-result-object v4

    goto :goto_3

    :cond_7
    new-instance v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    invoke-direct {v4}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;-><init>()V

    :goto_3
    iput-object v14, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v15}, Lmf/org/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v5

    iput-short v5, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    iput-short v0, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    if-eqz v13, :cond_8

    new-instance v5, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v5}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v13, v5, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    :cond_8
    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    invoke-interface {v9, v5}, Lmf/org/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v5

    if-nez v5, :cond_9

    invoke-virtual {v14}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v5

    iput-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    goto :goto_5

    :cond_9
    if-eqz v6, :cond_a

    new-instance v5, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v5}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    move-object v7, v5

    check-cast v7, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v7, v6}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    goto :goto_4

    :cond_a
    sget-object v5, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_4
    iput-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    goto :goto_5

    :cond_b
    const/4 v4, 0x0

    :goto_5
    if-eqz v13, :cond_c

    if-eqz v3, :cond_c

    const-string v3, "src-attribute.1"

    new-array v5, v11, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v8, v3, v5, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_6

    :cond_c
    const/4 v6, 0x0

    :goto_6
    if-ne v0, v11, :cond_d

    if-eqz v15, :cond_d

    invoke-virtual {v15}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "src-attribute.2"

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-virtual {v8, v0, v3, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iput-short v6, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    :cond_d
    if-eqz v13, :cond_10

    if-eqz v4, :cond_10

    iget-object v0, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    iget-object v3, v10, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    :try_start_0
    invoke-virtual {v8, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->checkDefaultValid(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const/4 v5, 0x0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v0, v3, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const-string v0, "a-props-correct.2"

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    aput-object v13, v3, v11

    invoke-virtual {v8, v0, v3, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v3, 0x0

    iput-object v3, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-short v5, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    :goto_7
    invoke-virtual {v14}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "a-props-correct.3"

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v1, v6, v5

    invoke-virtual {v8, v0, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iput-object v3, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-short v5, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    :cond_e
    iget-object v0, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v0

    if-ne v0, v2, :cond_10

    iget-short v0, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    if-eqz v0, :cond_10

    iget-short v0, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    if-ne v0, v2, :cond_f

    iget-object v0, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getValInfo()Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-object v3, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    const-string v0, "au-props-correct.2"

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    iget-object v1, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getValInfo()Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v11

    invoke-virtual {v8, v0, v3, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object v0, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getValInfo()Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v0

    iput-object v0, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-short v2, v4, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    :cond_10
    iget-object v0, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v12, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v4
.end method

.method traverseNamedAttr(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ZLmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
    .locals 28

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_DEFAULT:I

    aget-object v1, v0, v1

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    aget-object v1, v0, v1

    move-object v12, v1

    check-cast v12, Ljava/lang/String;

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FORM:I

    aget-object v1, v0, v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TYPE:I

    aget-object v3, v0, v3

    move-object v13, v3

    check-cast v13, Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    if-eqz v3, :cond_0

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->getAttributeDecl()Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v3

    move-object v15, v3

    goto :goto_0

    :cond_0
    new-instance v3, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;-><init>()V

    move-object v15, v3

    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v23, v2

    goto :goto_1

    :cond_1
    move-object/from16 v23, v2

    :goto_1
    const/4 v14, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p5, :cond_2

    iget-object v1, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object v3, v1

    move/from16 v24, v5

    const/16 v25, 0x0

    goto :goto_3

    :cond_2
    if-eqz p6, :cond_3

    move-object/from16 v3, p6

    move v2, v14

    goto :goto_2

    :cond_3
    move v2, v4

    const/4 v3, 0x0

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_5

    iget-object v1, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move/from16 v24, v2

    move-object/from16 v25, v3

    move-object v3, v1

    goto :goto_3

    :cond_4
    iget-boolean v1, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fAreLocalAttributesQualified:Z

    if-eqz v1, :cond_5

    iget-object v1, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move/from16 v24, v2

    move-object/from16 v25, v3

    move-object v3, v1

    goto :goto_3

    :cond_5
    move/from16 v24, v2

    move-object/from16 v25, v3

    const/4 v3, 0x0

    :goto_3
    if-eqz p5, :cond_7

    if-eqz v12, :cond_6

    new-instance v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v12, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    move-object v2, v1

    move/from16 v18, v14

    goto :goto_4

    :cond_6
    if-eqz v11, :cond_7

    new-instance v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v11, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    move-object v2, v1

    move/from16 v18, v5

    goto :goto_4

    :cond_7
    move/from16 v18, v4

    const/4 v2, 0x0

    :goto_4
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v7, v1, v0, v4, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v6

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    move-object/from16 p6, v2

    move-object/from16 v26, v3

    move/from16 v27, v4

    goto :goto_5

    :cond_8
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    const/4 v6, 0x0

    move-object/from16 v19, v1

    move-object/from16 v1, p0

    move-object/from16 p6, v2

    move-object/from16 v2, p1

    move-object/from16 v26, v3

    move-object v3, v5

    move/from16 v27, v4

    move-object/from16 v4, p2

    move v5, v6

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v6

    move-object/from16 v1, v19

    goto :goto_5

    :cond_9
    move-object/from16 v19, v1

    move-object/from16 p6, v2

    move-object/from16 v26, v3

    move/from16 v27, v4

    const/4 v6, 0x0

    :goto_5
    if-eqz v1, :cond_a

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    invoke-virtual {v0, v1, v9, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v0

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    const/4 v2, 0x1

    goto :goto_6

    :cond_a
    move/from16 v2, v27

    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_c

    if-eqz v13, :cond_c

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v4, 0x7

    invoke-virtual {v3, v9, v4, v13, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v3, :cond_b

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_b

    move-object v0, v3

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v10, 0x1

    goto :goto_7

    :cond_b
    const-string v4, "src-resolve"

    new-array v5, v14, [Ljava/lang/Object;

    iget-object v14, v13, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v5, v27

    const-string v14, "simpleType definition"

    const/4 v10, 0x1

    aput-object v14, v5, v10

    invoke-virtual {v7, v4, v5, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    if-nez v3, :cond_d

    iput-object v13, v15, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fUnresolvedTypeName:Lmf/org/apache/xerces/xni/QName;

    goto :goto_7

    :cond_c
    const/4 v10, 0x1

    :cond_d
    :goto_7
    if-nez v0, :cond_e

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object v3, v0

    goto :goto_8

    :cond_e
    move-object v3, v0

    :goto_8
    if-eqz v6, :cond_f

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    move-object v4, v0

    check-cast v4, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v4, v6}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    move-object v4, v0

    const/4 v5, 0x2

    goto :goto_9

    :cond_f
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object v4, v0

    const/4 v5, 0x2

    :goto_9
    move-object v14, v15

    move-object v6, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v26

    move-object/from16 v17, v3

    move/from16 v19, v24

    move-object/from16 v20, p6

    move-object/from16 v21, v25

    move-object/from16 v22, v4

    invoke-virtual/range {v14 .. v22}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;SSLmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V

    if-nez v23, :cond_11

    if-eqz p5, :cond_10

    const-string v0, "s4s-att-must-appear"

    new-array v14, v5, [Ljava/lang/Object;

    sget-object v15, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    aput-object v15, v14, v27

    sget-object v15, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aput-object v15, v14, v10

    invoke-virtual {v7, v0, v14, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v15, 0x0

    goto :goto_a

    :cond_10
    const-string v0, "src-attribute.3.1"

    const/4 v15, 0x0

    invoke-virtual {v7, v0, v15, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :goto_a
    const-string v0, "(no name)"

    move-object v14, v0

    goto :goto_b

    :cond_11
    const/4 v15, 0x0

    move-object/from16 v14, v23

    :goto_b
    if-eqz v1, :cond_12

    const-string v0, "s4s-elt-must-match.1"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v14, v15, v27

    const-string v16, "(annotation?, (simpleType?))"

    aput-object v16, v15, v10

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v5

    invoke-virtual {v7, v0, v15, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_12
    if-eqz v11, :cond_13

    if-eqz v12, :cond_13

    const-string v0, "src-attribute.1"

    new-array v1, v10, [Ljava/lang/Object;

    aput-object v14, v1, v27

    invoke-virtual {v7, v0, v1, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_13
    if-eqz v2, :cond_14

    if-eqz v13, :cond_14

    const-string v0, "src-attribute.4"

    new-array v1, v10, [Ljava/lang/Object;

    aput-object v14, v1, v27

    invoke-virtual {v7, v0, v1, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_14
    invoke-virtual {v7, v14, v3, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->checkNotationType(Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v1, p6

    if-eqz v1, :cond_15

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    iget-object v2, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    :try_start_0
    invoke-virtual {v7, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->checkDefaultValid(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v14

    const/4 v5, 0x0

    goto :goto_c

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v0, v2, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const-string v0, "a-props-correct.2"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v14, v2, v27

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    aput-object v1, v2, v10

    invoke-virtual {v7, v0, v2, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v0, 0x0

    const/16 v18, 0x0

    move-object v2, v14

    move-object v14, v6

    const/4 v5, 0x0

    move-object v15, v2

    move-object/from16 v16, v26

    move-object/from16 v17, v3

    move/from16 v19, v24

    move-object/from16 v20, v0

    move-object/from16 v21, v25

    move-object/from16 v22, v4

    invoke-virtual/range {v14 .. v22}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;SSLmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V

    goto :goto_d

    :cond_15
    move-object v2, v14

    const/4 v5, 0x0

    :goto_c
    move-object v0, v1

    :goto_d
    if-eqz v0, :cond_16

    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "a-props-correct.3"

    new-array v1, v10, [Ljava/lang/Object;

    aput-object v2, v1, v27

    invoke-virtual {v7, v0, v1, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/16 v20, 0x0

    const/16 v18, 0x0

    move-object v14, v6

    move-object v15, v2

    move-object/from16 v16, v26

    move-object/from16 v17, v3

    move/from16 v19, v24

    move-object/from16 v21, v25

    move-object/from16 v22, v4

    invoke-virtual/range {v14 .. v22}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;SSLmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V

    :cond_16
    if-eqz v2, :cond_17

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "no-xmlns"

    invoke-virtual {v7, v0, v5, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return-object v5

    :cond_17
    move-object/from16 v1, v26

    if-eqz v1, :cond_18

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "no-xsi"

    new-array v1, v10, [Ljava/lang/Object;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    aput-object v2, v1, v27

    invoke-virtual {v7, v0, v1, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return-object v5

    :cond_18
    const-string v0, "(no name)"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    return-object v5

    :cond_19
    if-eqz p5, :cond_1d

    move-object/from16 v1, p4

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    if-nez v0, :cond_1a

    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V

    :cond_1a
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v2

    if-nez v2, :cond_1b

    invoke-virtual {v1, v6, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;Ljava/lang/String;)V

    :cond_1b
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz v0, :cond_1d

    if-eqz v2, :cond_1c

    move-object v15, v2

    goto :goto_e

    :cond_1c
    move-object v15, v6

    :goto_e
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, v15}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V

    goto :goto_f

    :cond_1d
    move-object v15, v6

    :goto_f
    return-object v15
.end method
