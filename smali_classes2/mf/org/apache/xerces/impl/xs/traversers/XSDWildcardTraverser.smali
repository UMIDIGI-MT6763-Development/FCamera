.class Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.source "XSDWildcardTraverser.java"


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method traverseAny(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->traverseWildcardDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object p1

    if-eqz p1, :cond_1

    sget p3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object p3, v0, p3

    check-cast p3, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result p3

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v1, v0, v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;->getParticleDecl()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    :goto_0
    const/4 v3, 0x2

    iput-short v3, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iput-object p1, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iput p3, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    iput v1, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object p1, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p1, v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v2
.end method

.method traverseAnyAttribute(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->traverseWildcardDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object p1

    iget-object p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p3, v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object p1
.end method

.method traverseWildcardDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .locals 10

    new-instance p4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {p4}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE:I

    aget-object v0, p2, v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v0

    iput-short v0, p4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE_LIST:I

    aget-object v0, p2, v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PROCESSCONTENTS:I

    aget-object v0, p2, v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v0

    iput-short v0, p4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, p2, v3, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    const-string p2, "s4s-elt-must-match.1"

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const-string v2, "wildcard"

    aput-object v2, p3, v3

    const/4 v2, 0x1

    const-string v3, "(annotation?)"

    aput-object v3, p3, v2

    const/4 v2, 0x2

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    invoke-virtual {p0, p2, p3, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    new-instance p1, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {p1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    move-object p2, p1

    check-cast p2, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {p2, v1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    goto :goto_2

    :cond_4
    sget-object p1, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_2
    iput-object p1, p4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    return-object p4
.end method
