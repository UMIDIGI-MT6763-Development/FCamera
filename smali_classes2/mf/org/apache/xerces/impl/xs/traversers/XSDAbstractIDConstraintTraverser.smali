.class Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.source "XSDAbstractIDConstraintTraverser.java"


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method traverseIdentityConstraint(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;[Ljava/lang/Object;)Z
    .locals 11

    invoke-static {p2}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string p1, "s4s-elt-must-match.2"

    new-array p3, v1, [Ljava/lang/Object;

    const-string p4, "identity constraint"

    aput-object p4, p3, v3

    const-string p4, "(annotation?, selector, field+)"

    aput-object p4, p3, v2

    invoke-virtual {p0, p1, p3, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return v3

    :cond_0
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v0, p4, v3, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object p4

    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "s4s-elt-must-match.2"

    new-array p3, v1, [Ljava/lang/Object;

    const-string p4, "identity constraint"

    aput-object p4, p3, v3

    const-string p4, "(annotation?, selector, field+)"

    aput-object p4, p3, v2

    invoke-virtual {p0, p1, p3, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return v3

    :cond_1
    invoke-static {p2}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p2

    move-object v7, p4

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object p4

    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    :cond_2
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p4

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v4, 0x3

    if-nez p4, :cond_3

    const-string p1, "s4s-elt-must-match.1"

    new-array p2, v4, [Ljava/lang/Object;

    const-string p3, "identity constraint"

    aput-object p3, p2, v3

    const-string p3, "(annotation?, selector, field+)"

    aput-object p3, p2, v2

    sget-object p3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    aput-object p3, p2, v1

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return v3

    :cond_3
    iget-object p4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p4, v0, v3, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object p4

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, v5, p4, v3, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v6

    invoke-virtual {p1, v6}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v5

    goto :goto_0

    :cond_4
    const-string v6, "s4s-elt-must-match.1"

    new-array v7, v4, [Ljava/lang/Object;

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    aput-object v8, v7, v3

    const-string v8, "(annotation?)"

    aput-object v8, v7, v2

    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {p0, v6, v7, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :goto_0
    if-eqz v5, :cond_6

    const-string v6, "s4s-elt-must-match.1"

    new-array v7, v4, [Ljava/lang/Object;

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    aput-object v8, v7, v3

    const-string v8, "(annotation?)"

    aput-object v8, v7, v2

    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {p0, v6, v7, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p2

    move-object v8, p4

    move-object v10, p3

    invoke-virtual/range {v5 .. v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v5

    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    :cond_6
    :goto_1
    sget v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    aget-object v5, p4, v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_7

    const-string p1, "s4s-att-must-appear"

    new-array p2, v1, [Ljava/lang/Object;

    sget-object p3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    aput-object p3, p2, v3

    sget-object p3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    aput-object p3, p2, v2

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return v3

    :cond_7
    invoke-static {v5}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    new-instance v6, Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v8, p3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-direct {v6, v5, v7, v8}, Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    new-instance v7, Lmf/org/apache/xerces/impl/xs/identity/Selector;

    invoke-direct {v7, v6, p1}, Lmf/org/apache/xerces/impl/xs/identity/Selector;-><init>(Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    invoke-virtual {p1, v7}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->setSelector(Lmf/org/apache/xerces/impl/xs/identity/Selector;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v5, p4, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object p4

    if-nez p4, :cond_8

    const-string p1, "s4s-elt-must-match.2"

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "identity constraint"

    aput-object p3, p2, v3

    const-string p3, "(annotation?, selector, field+)"

    aput-object p3, p2, v2

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return v3

    :cond_8
    :goto_2
    if-nez p4, :cond_a

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getFieldCount()I

    move-result p1

    if-lez p1, :cond_9

    return v2

    :cond_9
    return v3

    :cond_a
    invoke-static {p4}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FIELD:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "s4s-elt-must-match.1"

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "identity constraint"

    aput-object v6, v5, v3

    const-string v6, "(annotation?, selector, field+)"

    aput-object v6, v5, v2

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FIELD:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {p0, v0, v5, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    invoke-static {p4}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object p4

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, p4, v3, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p4}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {p0, v5, v0, v3, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v6

    invoke-virtual {p1, v6}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v5

    :cond_c
    if-eqz v5, :cond_d

    const-string v6, "s4s-elt-must-match.1"

    new-array v7, v4, [Ljava/lang/Object;

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FIELD:Ljava/lang/String;

    aput-object v8, v7, v3

    const-string v8, "(annotation?)"

    aput-object v8, v7, v2

    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {p0, v6, v7, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_3

    :cond_d
    invoke-static {p4}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p2

    move-object v8, v0

    move-object v10, p3

    invoke-virtual/range {v5 .. v10}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v5

    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    :cond_e
    :goto_3
    sget v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    aget-object v5, v0, v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_f

    const-string p1, "s4s-att-must-appear"

    new-array p2, v1, [Ljava/lang/Object;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FIELD:Ljava/lang/String;

    aput-object v1, p2, v3

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    aput-object v1, p2, v2

    invoke-virtual {p0, p1, p2, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p1, v0, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return v3

    :cond_f
    invoke-static {v5}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_1
    new-instance v6, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v8, p3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-direct {v6, v5, v7, v8}, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    new-instance v7, Lmf/org/apache/xerces/impl/xs/identity/Field;

    invoke-direct {v7, v6, p1}, Lmf/org/apache/xerces/impl/xs/identity/Field;-><init>(Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    invoke-virtual {p1, v7}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addField(Lmf/org/apache/xerces/impl/xs/identity/Field;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/xpath/XPathException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {p4}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object p4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v5, v0, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/XPathException;->getKey()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object v5, p2, v3

    invoke-virtual {p0, p1, p2, p4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p1, v0, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return v3

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/XPathException;->getKey()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object v5, p2, v3

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {p1, p4, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return v3
.end method
