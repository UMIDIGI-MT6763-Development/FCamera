.class Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.source "XSDAttributeGroupTraverser.java"


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    new-instance v10, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-direct {v10}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;-><init>()V

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v11, 0x1

    invoke-virtual {v0, v7, v11, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v12

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v0, v12, v0

    check-cast v0, Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x2

    if-nez v0, :cond_0

    const-string v0, "s4s-att-must-appear"

    new-array v1, v14, [Ljava/lang/Object;

    const-string v2, "attributeGroup (global)"

    aput-object v2, v1, v13

    const-string v2, "name"

    aput-object v2, v1, v11

    invoke-virtual {v6, v0, v1, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const-string v0, "(no name)"

    move-object v15, v0

    goto :goto_0

    :cond_0
    move-object v15, v0

    :goto_0
    iput-object v15, v10, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    iget-object v0, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iput-object v0, v10, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v5

    const/16 v16, 0x0

    if-eqz v5, :cond_1

    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v6, v5, v12, v13, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    move-object v4, v0

    move-object v5, v1

    goto :goto_1

    :cond_1
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v12

    move-object/from16 v17, v5

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    move-object v4, v0

    move-object/from16 v5, v17

    goto :goto_1

    :cond_2
    move-object/from16 v17, v5

    move-object/from16 v4, v16

    :goto_1
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v10

    move-object/from16 v3, p2

    move-object/from16 v18, v4

    move-object/from16 v4, p3

    move-object/from16 v19, v5

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->traverseAttrsAndAttrGrps(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v15, v1, v13

    const-string v2, "(annotation?, ((attribute | attributeGroup)*, anyAttribute?))"

    aput-object v2, v1, v11

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    const-string v2, "s4s-elt-must-match.1"

    invoke-virtual {v6, v2, v1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_3
    const-string v0, "(no name)"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v12, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v16

    :cond_4
    invoke-virtual {v10}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    new-instance v1, Lmf/org/apache/xerces/xni/QName;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iget-object v3, v8, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-direct {v1, v2, v15, v15, v3}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v14, v1, v8, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGrpOrAttrGrpRedefinedByRestriction(ILmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    if-eqz v0, :cond_6

    invoke-virtual {v10, v15, v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->validRestrictionOf(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v1, v0

    sub-int/2addr v1, v11

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v2, v19

    invoke-virtual {v6, v1, v0, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const-string v1, "src-redefine.7.2.2"

    new-array v3, v14, [Ljava/lang/Object;

    aput-object v15, v3, v13

    array-length v4, v0

    sub-int/2addr v4, v11

    aget-object v0, v0, v4

    aput-object v0, v3, v11

    invoke-virtual {v6, v1, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, v18

    goto :goto_2

    :cond_5
    move-object/from16 v0, v18

    goto :goto_2

    :cond_6
    move-object/from16 v0, v18

    :goto_2
    if-eqz v0, :cond_7

    new-instance v1, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    move-object v2, v1

    check-cast v2, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    goto :goto_3

    :cond_7
    sget-object v1, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_3
    iput-object v1, v10, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iget-object v0, v10, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    :cond_8
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v10, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    invoke-virtual {v9, v1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-virtual {v9, v10, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;)V

    :cond_9
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz v0, :cond_b

    if-eqz v1, :cond_a

    move-object v10, v1

    :cond_a
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    :cond_b
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v12, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v10
.end method

.method traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .locals 11

    iget-object p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object p3

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REF:I

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Lmf/org/apache/xerces/xni/QName;

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-nez v7, :cond_0

    const-string v1, "s4s-att-must-appear"

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "attributeGroup (local)"

    aput-object v3, v2, v0

    const-string v0, "ref"

    aput-object v0, v2, v8

    invoke-virtual {p0, v1, v2, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p1, p3, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v1, p2, v9, v7, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p3, v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v0

    const-string v0, "(annotation?)"

    aput-object v0, v1, v8

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v9

    const-string v0, "s4s-elt-must-match.1"

    invoke-virtual {p0, v0, v1, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_3
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p1, p3, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v10
.end method
