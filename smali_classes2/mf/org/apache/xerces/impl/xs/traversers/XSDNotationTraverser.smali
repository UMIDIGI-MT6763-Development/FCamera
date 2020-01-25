.class Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.source "XSDNotationTraverser.java"


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method traverse(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    .locals 12

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PUBLIC:I

    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/String;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SYSTEM:I

    aget-object v4, v0, v4

    check-cast v4, Ljava/lang/String;

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v9, 0x0

    if-nez v2, :cond_0

    const-string p3, "s4s-att-must-appear"

    new-array v2, v8, [Ljava/lang/Object;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_NOTATION:Ljava/lang/String;

    aput-object v3, v2, v9

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, p3, v2, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p1, v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v5

    :cond_0
    if-nez v4, :cond_1

    if-nez v3, :cond_1

    const-string v3, "PublicSystemOnNotation"

    invoke-virtual {p0, v3, v5, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const-string v3, "missing"

    :cond_1
    new-instance v10, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    invoke-direct {v10}, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;-><init>()V

    iput-object v2, v10, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->fName:Ljava/lang/String;

    iget-object v2, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iput-object v2, v10, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->fTargetNamespace:Ljava/lang/String;

    iput-object v3, v10, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->fPublicId:Ljava/lang/String;

    iput-object v4, v10, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->fSystemId:Ljava/lang/String;

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v11, v0, v9, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v5

    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v11

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, v0

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v5

    :cond_3
    :goto_0
    if-eqz v5, :cond_4

    new-instance p1, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {p1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    goto :goto_1

    :cond_4
    sget-object p1, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_1
    iput-object p1, v10, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-eqz v11, :cond_5

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_NOTATION:Ljava/lang/String;

    aput-object v2, p1, v9

    const-string v2, "(annotation?)"

    aput-object v2, p1, v1

    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v8

    const-string v1, "s4s-elt-must-match.1"

    invoke-virtual {p0, v1, p1, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_5
    iget-object p1, v10, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->fName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-virtual {p3, v10}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;)V

    :cond_6
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, v10, Lmf/org/apache/xerces/impl/xs/XSNotationDecl;->fName:Ljava/lang/String;

    invoke-virtual {p3, v1, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual {p3, v10, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean p1, p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz p1, :cond_9

    if-eqz v1, :cond_8

    move-object v10, v1

    :cond_8
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {p1, v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;)V

    :cond_9
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDNotationTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p1, v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v10
.end method
