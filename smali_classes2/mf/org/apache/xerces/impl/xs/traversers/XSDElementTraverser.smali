.class Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.source "XSDElementTraverser.java"


# instance fields
.field fDeferTraversingLocalElements:Z

.field protected final fTempElementDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    new-instance p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-direct {p1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fTempElementDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    return-void
.end method


# virtual methods
.method reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;->reset(Lmf/org/apache/xerces/util/SymbolTable;ZLjava/util/Locale;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fDeferTraversingLocalElements:Z

    return-void
.end method

.method traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 9

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

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

    invoke-virtual/range {v2 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseNamedElement(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ZLmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object p1

    iget-object p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p3, v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object p1
.end method

.method traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 9

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->getParticleDecl()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    :goto_0
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fDeferTraversingLocalElements:Z

    if-eqz v1, :cond_2

    const/4 p3, 0x1

    iput-short p3, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    sget-object p3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    invoke-interface {p1, p3}, Lmf/org/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object p3

    :try_start_0
    invoke-static {p3}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    if-ltz p3, :cond_1

    iput p3, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p5

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fillInLocalElemInfo(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xs/XSObject;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)V

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseLocal(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;[Ljava/lang/String;)V

    iget-short p1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    if-nez p1, :cond_3

    const/4 v0, 0x0

    :cond_3
    :goto_1
    return-object v0
.end method

.method protected traverseLocal(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;[Ljava/lang/String;)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v0, p7

    if-eqz v0, :cond_0

    iget-object v1, v10, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->setEffectiveContext([Ljava/lang/String;)V

    :cond_0
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v11, 0x0

    invoke-virtual {v0, v9, v11, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v12

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REF:I

    aget-object v0, v12, v0

    move-object v13, v0

    check-cast v13, Lmf/org/apache/xerces/xni/QName;

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v0, v12, v0

    move-object v14, v0

    check-cast v14, Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v0, v12, v0

    move-object v15, v0

    check-cast v15, Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    invoke-interface {v9, v0}, Lmf/org/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    const/4 v6, 0x1

    const/16 v16, 0x0

    if-eqz v0, :cond_5

    if-eqz v13, :cond_4

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v10, v1, v13, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v7, v5, v12, v11, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v16

    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v3, v12

    move-object/from16 v18, v5

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v16

    move-object/from16 v5, v18

    goto :goto_0

    :cond_2
    move-object/from16 v18, v5

    :goto_0
    if-eqz v5, :cond_3

    const-string v0, "src-element.2.2"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v13, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v11

    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v7, v0, v1, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_3
    move v11, v6

    move-object/from16 v1, v16

    move-object/from16 v0, v17

    goto :goto_1

    :cond_4
    move v11, v6

    move-object/from16 v0, v16

    move-object v1, v0

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v11, v6

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseNamedElement(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ZLmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    move-object/from16 v1, v16

    :goto_1
    invoke-virtual {v14}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v2

    iput v2, v8, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    invoke-virtual {v15}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v2

    iput v2, v8, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-eqz v0, :cond_6

    iput-short v11, v8, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iput-object v0, v8, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    iput-short v2, v8, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    :goto_2
    if-eqz v13, :cond_8

    if-eqz v1, :cond_7

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    move-object v2, v0

    check-cast v2, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    goto :goto_3

    :cond_7
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_3
    iput-object v0, v8, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    goto :goto_5

    :cond_8
    if-eqz v0, :cond_9

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    goto :goto_4

    :cond_9
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_4
    iput-object v0, v8, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    :goto_5
    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    aget-object v0, v12, v0

    check-cast v0, Ljava/lang/Long;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/Element;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lmf/org/w3c/dom/Element;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p5

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->checkOccurrences(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Ljava/lang/String;Lmf/org/w3c/dom/Element;IJ)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v12, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-void
.end method

.method traverseNamedElement(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ZLmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 23

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v3, p2

    move-object/from16 v15, p3

    move-object/from16 v14, p4

    move-object/from16 v0, p6

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ABSTRACT:I

    aget-object v1, v3, v1

    check-cast v1, Ljava/lang/Boolean;

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCK:I

    aget-object v2, v3, v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_DEFAULT:I

    aget-object v4, v3, v4

    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    aget-object v4, v3, v4

    check-cast v4, Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    aget-object v5, v3, v5

    move-object v12, v5

    check-cast v12, Ljava/lang/String;

    sget v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FORM:I

    aget-object v5, v3, v5

    check-cast v5, Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget v8, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v8, v3, v8

    move-object v11, v8

    check-cast v11, Ljava/lang/String;

    sget v8, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NILLABLE:I

    aget-object v8, v3, v8

    check-cast v8, Ljava/lang/Boolean;

    sget v9, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SUBSGROUP:I

    aget-object v9, v3, v9

    move-object v10, v9

    check-cast v10, Lmf/org/apache/xerces/xni/QName;

    sget v9, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TYPE:I

    aget-object v9, v3, v9

    check-cast v9, Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v16, v9

    iget-object v9, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v9, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    if-eqz v9, :cond_0

    iget-object v9, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v9, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->getElementDecl()Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v9

    goto :goto_0

    :cond_0
    new-instance v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-direct {v9}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;-><init>()V

    :goto_0
    if-eqz v11, :cond_1

    iget-object v14, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v14, v11}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    :cond_1
    if-eqz p5, :cond_2

    iget-object v0, v15, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iput-object v0, v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setIsGlobal()V

    const/4 v14, 0x0

    goto :goto_1

    :cond_2
    instance-of v14, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v14, :cond_3

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v9, v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setIsLocal(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)V

    :cond_3
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_4

    iget-object v0, v15, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iput-object v0, v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    const/4 v14, 0x0

    goto :goto_1

    :cond_4
    const/4 v14, 0x0

    iput-object v14, v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/4 v14, 0x0

    iget-boolean v0, v15, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fAreLocalElementsQualified:Z

    if-eqz v0, :cond_6

    iget-object v0, v15, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iput-object v0, v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iput-object v14, v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    :goto_1
    if-nez v2, :cond_7

    iget-short v0, v15, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fBlockDefault:S

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v0

    :goto_2
    iput-short v0, v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    if-nez v4, :cond_8

    iget-short v0, v15, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fFinalDefault:S

    goto :goto_3

    :cond_8
    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v0

    :goto_3
    iput-short v0, v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fFinal:S

    iget-short v0, v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    const/4 v5, 0x7

    and-int/2addr v0, v5

    int-to-short v0, v0

    iput-short v0, v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    iget-short v0, v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fFinal:S

    const/4 v4, 0x3

    and-int/2addr v0, v4

    int-to-short v0, v0

    iput-short v0, v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fFinal:S

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setIsNillable()V

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setIsAbstract()V

    :cond_a
    const/4 v8, 0x2

    const/4 v2, 0x0

    if-eqz v12, :cond_b

    new-instance v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v0, v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v12, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    invoke-virtual {v9, v8}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setConstraintType(S)V

    const/4 v1, 0x1

    goto :goto_4

    :cond_b
    if-eqz v13, :cond_c

    new-instance v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v0, v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v13, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setConstraintType(S)V

    goto :goto_4

    :cond_c
    const/4 v1, 0x1

    invoke-virtual {v9, v2}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setConstraintType(S)V

    :goto_4
    if-eqz v10, :cond_d

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, v15, v4, v10, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    :cond_d
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v6, v0, v3, v2, v15}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    move v8, v5

    const/16 v18, 0x1

    move-object/from16 v22, v1

    move-object v1, v0

    move-object/from16 v0, v22

    goto :goto_5

    :cond_e
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    const/16 v17, 0x0

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    const/16 v18, 0x1

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v3, p2

    move/from16 v4, v17

    move v8, v5

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    move-object/from16 v1, v19

    goto :goto_5

    :cond_f
    move-object/from16 v19, v0

    move v8, v5

    const/16 v18, 0x1

    move-object v0, v14

    move-object/from16 v1, v19

    :goto_5
    if-eqz v0, :cond_10

    new-instance v2, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    move-object v3, v2

    check-cast v3, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    goto :goto_6

    :cond_10
    sget-object v2, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_6
    iput-object v2, v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-eqz v1, :cond_12

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fComplexTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v15, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v0

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    move/from16 v3, v18

    goto :goto_7

    :cond_11
    move-object/from16 v2, p4

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    invoke-virtual {v0, v1, v15, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v0

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    move/from16 v3, v18

    goto :goto_7

    :cond_12
    move-object/from16 v2, p4

    :cond_13
    move-object v0, v14

    const/4 v3, 0x0

    :goto_7
    if-nez v0, :cond_14

    if-eqz v16, :cond_14

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v4, v16

    invoke-virtual {v0, v15, v8, v4, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v0, :cond_15

    iput-object v4, v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fUnresolvedTypeName:Lmf/org/apache/xerces/xni/QName;

    goto :goto_8

    :cond_14
    move-object/from16 v4, v16

    :cond_15
    :goto_8
    if-nez v0, :cond_16

    iget-object v5, v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v5, :cond_16

    iget-object v0, v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    :cond_16
    if-nez v0, :cond_17

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    :cond_17
    iput-object v0, v9, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v1, :cond_20

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    :goto_9
    if-eqz v1, :cond_1f

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEY:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEYREF:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNIQUE:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    move-object/from16 v16, v4

    move-object v5, v9

    move-object/from16 v17, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object v4, v13

    move/from16 v2, v18

    goto/16 :goto_d

    :cond_18
    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEY:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNIQUE:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    goto :goto_a

    :cond_19
    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEYREF:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v8, v1, v15, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->storeKeyRef(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    move-object/from16 v16, v4

    move-object/from16 v19, v5

    move-object v5, v9

    move-object/from16 v17, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object v4, v13

    move/from16 v2, v18

    goto/16 :goto_c

    :cond_1a
    move-object/from16 v16, v4

    move-object/from16 v19, v5

    move-object v5, v9

    move-object/from16 v17, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object v4, v13

    move/from16 v2, v18

    goto/16 :goto_c

    :cond_1b
    :goto_a
    iget-object v8, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v8, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fHiddenNodes:Ljava/util/Hashtable;

    invoke-static {v1, v8}, Lmf/org/apache/xerces/util/DOMUtil;->setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    iget-object v8, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v8, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fUniqueOrKeyTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;

    invoke-virtual {v8, v1, v9, v15, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->traverse(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {v1, v8}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1d

    iget-object v8, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v14, v15, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v14, :cond_1c

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {v1, v2}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v14, v15, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ","

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-static {v1, v14}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_b
    iget-object v14, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getIDRegistry()Ljava/util/Hashtable;

    move-result-object v14

    move-object/from16 v16, v4

    iget-object v4, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getIDRegistry_sub()Ljava/util/Hashtable;

    move-result-object v4

    move-object/from16 v19, v5

    move-object v5, v9

    move-object v9, v2

    move-object v2, v10

    const/4 v10, 0x1

    move-object/from16 v20, v11

    move-object v11, v14

    move-object/from16 v21, v12

    move-object v12, v4

    move-object v4, v13

    move-object v13, v1

    move-object/from16 v17, v2

    move/from16 v2, v18

    move-object/from16 v14, p3

    invoke-virtual/range {v8 .. v14}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->checkForDuplicateNames(Ljava/lang/String;ILjava/util/Hashtable;Ljava/util/Hashtable;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto :goto_c

    :cond_1d
    move-object/from16 v16, v4

    move-object/from16 v19, v5

    move-object v5, v9

    move-object/from16 v17, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object v4, v13

    move/from16 v2, v18

    :goto_c
    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    move/from16 v18, v2

    move-object v13, v4

    move-object v9, v5

    move-object v5, v8

    move-object/from16 v4, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    move-object/from16 v2, p4

    const/4 v14, 0x0

    goto/16 :goto_9

    :cond_1e
    move/from16 v18, v2

    move-object v13, v4

    move-object v9, v5

    move-object/from16 v4, v16

    move-object/from16 v10, v17

    move-object/from16 v5, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    move-object/from16 v2, p4

    const/4 v14, 0x0

    goto/16 :goto_9

    :cond_1f
    move-object/from16 v16, v4

    move-object v5, v9

    move-object/from16 v17, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object v4, v13

    move/from16 v2, v18

    goto :goto_d

    :cond_20
    move-object/from16 v16, v4

    move-object v5, v9

    move-object/from16 v17, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object v4, v13

    move/from16 v2, v18

    :goto_d
    if-nez v20, :cond_22

    if-eqz p5, :cond_21

    const-string v8, "s4s-att-must-appear"

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    sget-object v11, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    sget-object v11, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aput-object v11, v10, v2

    invoke-virtual {v6, v8, v10, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v10, 0x0

    goto :goto_e

    :cond_21
    const/4 v9, 0x2

    const/4 v12, 0x0

    const-string v8, "src-element.2.1"

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v10, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :goto_e
    const-string v11, "(no name)"

    goto :goto_f

    :cond_22
    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v11, v20

    :goto_f
    if-eqz v1, :cond_23

    const-string v8, "s4s-elt-must-match.1"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v11, v13, v12

    const-string v14, "(annotation?, (simpleType | complexType)?, (unique | key | keyref)*))"

    aput-object v14, v13, v2

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v9

    invoke-virtual {v6, v8, v13, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_23
    if-eqz v4, :cond_24

    if-eqz v21, :cond_24

    const-string v1, "src-element.1"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v11, v4, v12

    invoke-virtual {v6, v1, v4, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_24
    if-eqz v3, :cond_25

    if-eqz v16, :cond_25

    const-string v1, "src-element.3"

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v11, v3, v12

    invoke-virtual {v6, v1, v3, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_25
    invoke-virtual {v6, v11, v0, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->checkNotationType(Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/w3c/dom/Element;)V

    iget-object v1, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v1, :cond_26

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    iget-object v3, v15, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    iget-object v1, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v3, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-object v4, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    iget-object v8, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-static {v1, v3, v4, v8}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->ElementDefaultValidImmediate(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_26

    const-string v1, "e-props-correct.2"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v11, v3, v12

    iget-object v4, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-virtual {v6, v1, v3, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iput-object v10, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v5, v12}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setConstraintType(S)V

    :cond_26
    iget-object v1, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v1, :cond_27

    iget-object v1, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v3, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v4, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-short v4, v4, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fFinal:S

    invoke-static {v1, v3, v4}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkTypeDerivationOk(Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "e-props-correct.4"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v11, v3, v12

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v9, v17

    iget-object v8, v9, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v6, v1, v3, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iput-object v10, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fSubGroup:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    :cond_27
    iget-object v1, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v1

    const/16 v3, 0x10

    if-ne v1, v3, :cond_28

    move-object v1, v0

    check-cast v1, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v1

    if-nez v1, :cond_29

    :cond_28
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v1

    const/16 v3, 0xf

    if-ne v1, v3, :cond_2a

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->containsTypeID()Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_29
    const-string v0, "e-props-correct.5"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v2, v1, v12

    invoke-virtual {v6, v0, v1, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iput-object v10, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v5, v12}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setConstraintType(S)V

    :cond_2a
    iget-object v0, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-nez v0, :cond_2b

    return-object v10

    :cond_2b
    if-eqz p5, :cond_2f

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDeclAll(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    iget-object v1, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v1

    if-nez v1, :cond_2c

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    :cond_2c
    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v1, v15}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v2

    if-nez v2, :cond_2d

    invoke-virtual {v0, v5, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Ljava/lang/String;)V

    :cond_2d
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz v0, :cond_2f

    if-eqz v2, :cond_2e

    move-object v9, v2

    goto :goto_10

    :cond_2e
    move-object v9, v5

    :goto_10
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    goto :goto_11

    :cond_2f
    move-object v9, v5

    :goto_11
    return-object v9
.end method
