.class Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;
.source "XSDKeyrefTraverser.java"


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method traverse(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 10

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v2, :cond_0

    const-string p2, "s4s-att-must-appear"

    new-array p4, v3, [Ljava/lang/Object;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEYREF:Ljava/lang/String;

    aput-object v2, p4, v1

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aput-object v1, p4, v4

    invoke-virtual {p0, p2, p4, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p1, v0, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-void

    :cond_0
    sget v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REFER:I

    aget-object v5, v0, v5

    check-cast v5, Lmf/org/apache/xerces/xni/QName;

    if-nez v5, :cond_1

    const-string p2, "s4s-att-must-appear"

    new-array p4, v3, [Ljava/lang/Object;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEYREF:Ljava/lang/String;

    aput-object v2, p4, v1

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REFER:Ljava/lang/String;

    aput-object v1, p4, v4

    invoke-virtual {p0, p2, p4, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p1, v0, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-void

    :cond_1
    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v8, 0x5

    invoke-virtual {v7, p3, v8, v5, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v8

    if-eq v8, v4, :cond_3

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    goto :goto_0

    :cond_2
    const-string v7, "src-resolve"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v8, v1

    const-string v5, "identity constraint key/unique"

    aput-object v5, v8, v4

    invoke-virtual {p0, v7, v8, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_1

    :cond_3
    :goto_0
    move-object v6, v7

    check-cast v6, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;

    :cond_4
    :goto_1
    if-nez v6, :cond_5

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p1, v0, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-void

    :cond_5
    new-instance v5, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;

    iget-object v7, p3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iget-object v8, p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-direct {v5, v7, v2, v8, v6}, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;)V

    invoke-virtual {p0, v5, p1, p3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->traverseIdentityConstraint(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;[Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;->getFieldCount()I

    move-result v7

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;->getFieldCount()I

    move-result v8

    if-eq v7, v8, :cond_6

    const-string p2, "c-props-correct.2"

    new-array p4, v3, [Ljava/lang/Object;

    aput-object v2, p4, v1

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v4

    invoke-virtual {p0, p2, p4, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object p1

    if-nez p1, :cond_7

    invoke-virtual {p4, p2, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    :cond_7
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-virtual {p4, p2, v5, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;Ljava/lang/String;)V

    :cond_8
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean p1, p1, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz p1, :cond_a

    if-eqz v1, :cond_9

    instance-of p1, v1, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;

    if-eqz p1, :cond_9

    move-object v5, v1

    check-cast v5, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;

    :cond_9
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    :cond_a
    :goto_2
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p1, v0, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-void
.end method
