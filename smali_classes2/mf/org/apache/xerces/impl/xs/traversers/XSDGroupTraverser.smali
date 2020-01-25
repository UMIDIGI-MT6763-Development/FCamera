.class Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;
.source "XSDGroupTraverser.java"


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v10, 0x1

    invoke-virtual {v0, v7, v10, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v11

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v0, v11, v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x2

    if-nez v12, :cond_0

    const-string v0, "s4s-att-must-appear"

    new-array v1, v14, [Ljava/lang/Object;

    const-string v2, "group (global)"

    aput-object v2, v1, v13

    const-string v2, "name"

    aput-object v2, v1, v10

    invoke-virtual {v6, v0, v1, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_0
    new-instance v15, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    invoke-direct {v15}, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;-><init>()V

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v5

    const/16 v16, 0x0

    if-nez v5, :cond_1

    const-string v0, "s4s-elt-must-match.2"

    new-array v1, v14, [Ljava/lang/Object;

    const-string v2, "group (global)"

    aput-object v2, v1, v13

    const-string v2, "(annotation?, (all | choice | sequence))"

    aput-object v2, v1, v10

    invoke-virtual {v6, v0, v1, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, v16

    move-object v1, v0

    goto/16 :goto_3

    :cond_1
    invoke-interface {v5}, Lmf/org/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v6, v5, v11, v10, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lmf/org/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v0

    move-object v5, v1

    goto :goto_0

    :cond_2
    move-object/from16 v17, v0

    move-object v5, v1

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v11

    move-object/from16 v18, v4

    move/from16 v4, v17

    move-object/from16 v17, v5

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    move-object/from16 v5, v17

    move-object/from16 v4, v18

    move-object/from16 v17, v0

    goto :goto_0

    :cond_4
    move-object/from16 v18, v4

    move-object/from16 v17, v5

    move-object/from16 v17, v16

    :goto_0
    const/4 v3, 0x3

    if-nez v5, :cond_5

    const-string v0, "s4s-elt-must-match.2"

    new-array v1, v14, [Ljava/lang/Object;

    const-string v2, "group (global)"

    aput-object v2, v1, v13

    const-string v2, "(annotation?, (all | choice | sequence))"

    aput-object v2, v1, v10

    invoke-virtual {v6, v0, v1, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move v14, v3

    move-object v2, v5

    goto/16 :goto_1

    :cond_5
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ALL:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p2

    move v14, v3

    move-object/from16 v3, p3

    move-object/from16 v19, v5

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseAll(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    move-object/from16 v2, v19

    goto :goto_2

    :cond_6
    move v14, v3

    move-object/from16 v19, v5

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_CHOICE:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseChoice(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    move-object/from16 v2, v19

    goto :goto_2

    :cond_7
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SEQUENCE:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseSequence(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    move-object/from16 v2, v19

    goto :goto_2

    :cond_8
    const-string v0, "s4s-elt-must-match.1"

    new-array v1, v14, [Ljava/lang/Object;

    const-string v2, "group (global)"

    aput-object v2, v1, v13

    const-string v2, "(annotation?, (all | choice | sequence))"

    aput-object v2, v1, v10

    invoke-static/range {v19 .. v19}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    move-object/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :goto_1
    move-object/from16 v0, v16

    :goto_2
    if-eqz v2, :cond_9

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v1, "s4s-elt-must-match.1"

    new-array v3, v14, [Ljava/lang/Object;

    const-string v4, "group (global)"

    aput-object v4, v3, v13

    const-string v4, "(annotation?, (all | choice | sequence))"

    aput-object v4, v3, v10

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v4

    invoke-static {v4}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    invoke-virtual {v6, v1, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_9
    move-object/from16 v1, v17

    :goto_3
    if-eqz v12, :cond_f

    iput-object v12, v15, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    iget-object v2, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iput-object v2, v15, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fTargetNamespace:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-static {}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->getEmptySequence()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    :cond_a
    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iput-object v0, v15, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fModelGroup:Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    if-eqz v1, :cond_b

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    move-object v2, v0

    check-cast v2, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    goto :goto_4

    :cond_b
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_4
    iput-object v0, v15, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iget-object v0, v15, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-virtual {v9, v15}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;)V

    :cond_c
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v15, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    invoke-virtual {v9, v1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v1

    if-nez v1, :cond_d

    invoke-virtual {v9, v15, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Ljava/lang/String;)V

    :cond_d
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz v0, :cond_10

    if-eqz v1, :cond_e

    move-object v15, v1

    :cond_e
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, v15}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;)V

    goto :goto_5

    :cond_f
    move-object/from16 v15, v16

    :cond_10
    :goto_5
    if-eqz v15, :cond_11

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v1, 0x4

    new-instance v2, Lmf/org/apache/xerces/xni/QName;

    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iget-object v4, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-direct {v2, v3, v12, v12, v4}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v8, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGrpOrAttrGrpRedefinedByRestriction(ILmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->element2Locator(Lmf/org/w3c/dom/Element;)Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v1

    invoke-virtual {v9, v15, v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addRedefinedGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V

    :cond_11
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v11, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v15
.end method

.method traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v9, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v10

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REF:I

    aget-object v0, v10, v0

    move-object v11, v0

    check-cast v11, Lmf/org/apache/xerces/xni/QName;

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v0, v10, v0

    move-object v12, v0

    check-cast v12, Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v0, v10, v0

    move-object v13, v0

    check-cast v13, Lmf/org/apache/xerces/impl/xs/util/XInt;

    const/4 v14, 0x1

    const/4 v15, 0x2

    const/16 v16, 0x0

    if-nez v11, :cond_0

    const-string v0, "s4s-att-must-appear"

    new-array v1, v15, [Ljava/lang/Object;

    const-string v2, "group (local)"

    aput-object v2, v1, v9

    const-string v2, "ref"

    aput-object v2, v1, v14

    invoke-virtual {v7, v0, v1, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v5, v16

    goto :goto_0

    :cond_0
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v8, v1, v11, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-object v5, v0

    :goto_0
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v7, v4, v10, v9, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    invoke-static {v4}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v4

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object v5, v0

    goto :goto_1

    :cond_1
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v10

    move-object/from16 v18, v4

    move/from16 v4, v17

    move-object/from16 v19, v5

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_2
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v5, v16

    :goto_1
    const/4 v0, 0x3

    if-eqz v18, :cond_3

    const-string v1, "s4s-elt-must-match.1"

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "group (local)"

    aput-object v3, v2, v9

    const-string v3, "(annotation?)"

    aput-object v3, v2, v14

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v15

    invoke-virtual {v7, v1, v2, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_3
    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v1

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v2

    move-object/from16 v9, v19

    if-eqz v9, :cond_9

    iget-object v3, v9, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fModelGroup:Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    if-eqz v3, :cond_9

    if-nez v1, :cond_4

    if-eqz v2, :cond_9

    :cond_4
    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    if-eqz v3, :cond_5

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->getParticleDecl()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v3

    goto :goto_2

    :cond_5
    new-instance v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    :goto_2
    iput-short v0, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iget-object v0, v9, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fModelGroup:Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iput-object v0, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iput v1, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    iput v2, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    iget-object v0, v9, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fModelGroup:Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v1, 0x67

    if-ne v0, v1, :cond_6

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    aget-object v0, v10, v0

    check-cast v0, Ljava/lang/Long;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lmf/org/w3c/dom/Element;

    const/4 v6, 0x2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v3, v4

    move v4, v6

    move-object v14, v5

    move-wide v5, v12

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->checkOccurrences(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Ljava/lang/String;Lmf/org/w3c/dom/Element;IJ)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    goto :goto_3

    :cond_6
    move-object v14, v5

    move-object v0, v3

    :goto_3
    if-eqz v11, :cond_8

    if-eqz v14, :cond_7

    new-instance v1, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    move-object v2, v1

    check-cast v2, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v2, v14}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    goto :goto_4

    :cond_7
    sget-object v1, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_4
    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    goto :goto_5

    :cond_8
    iget-object v1, v9, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    :goto_5
    move-object/from16 v16, v0

    :cond_9
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v10, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v16
.end method
