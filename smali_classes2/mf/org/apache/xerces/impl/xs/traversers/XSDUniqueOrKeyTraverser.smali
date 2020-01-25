.class Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;
.source "XSDUniqueOrKeyTraverser.java"


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method traverse(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const-string p2, "s4s-att-must-appear"

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p4, v1

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aput-object v1, p4, v3

    invoke-virtual {p0, p2, p4, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p1, v0, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-void

    :cond_0
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNIQUE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;

    iget-object v3, p3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iget-object v4, p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-direct {v1, v3, v2, v4, v5}, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_0

    :cond_1
    new-instance v1, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;

    iget-object v4, p3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iget-object v5, p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-direct {v1, v4, v2, v5, v3}, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    :goto_0
    invoke-virtual {p0, v1, p1, p3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->traverseIdentityConstraint(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p4, p2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    :cond_2
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p4, p2, v1, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean p1, p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz p1, :cond_5

    if-eqz v2, :cond_4

    instance-of p1, v2, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;

    :cond_4
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    :cond_5
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDUniqueOrKeyTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p1, v0, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-void
.end method
