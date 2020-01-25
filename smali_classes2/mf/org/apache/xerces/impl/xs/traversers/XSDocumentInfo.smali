.class Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;
.super Ljava/lang/Object;
.source "XSDocumentInfo.java"


# instance fields
.field protected SchemaNamespaceSupportStack:Ljava/util/Stack;

.field protected fAnnotations:Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

.field protected fAreLocalAttributesQualified:Z

.field protected fAreLocalElementsQualified:Z

.field protected fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

.field protected fBlockDefault:S

.field protected fFinalDefault:S

.field fImportedNS:Ljava/util/Vector;

.field protected fIsChameleonSchema:Z

.field protected fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

.field protected fNamespaceSupportRoot:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

.field private fReportedTNS:Ljava/util/Vector;

.field protected fSchemaAttrs:[Ljava/lang/Object;

.field protected fSchemaElement:Lmf/org/w3c/dom/Element;

.field fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field fTargetNamespace:Ljava/lang/String;

.field protected fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;


# direct methods
.method constructor <init>(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->SchemaNamespaceSupportStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fImportedNS:Ljava/util/Vector;

    new-instance v0, Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/validation/ValidationState;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fAnnotations:Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fReportedTNS:Ljava/util/Vector;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lmf/org/w3c/dom/Element;

    new-instance v1, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-direct {v1, p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;-><init>(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/util/SymbolTable;)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->reset()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fIsChameleonSchema:Z

    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    invoke-virtual {p2, p1, v2, p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaAttrs:[Ljava/lang/Object;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaAttrs:[Ljava/lang/Object;

    if-eqz p1, :cond_3

    sget p2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_AFORMDEFAULT:I

    aget-object p1, p1, p2

    check-cast p1, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fAreLocalAttributesQualified:Z

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaAttrs:[Ljava/lang/Object;

    sget p2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_EFORMDEFAULT:I

    aget-object p1, p1, p2

    check-cast p1, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fAreLocalElementsQualified:Z

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaAttrs:[Ljava/lang/Object;

    sget p2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCKDEFAULT:I

    aget-object p1, p1, p2

    check-cast p1, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result p1

    iput-short p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fBlockDefault:S

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaAttrs:[Ljava/lang/Object;

    sget p2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINALDEFAULT:I

    aget-object p1, p1, p2

    check-cast p1, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result p1

    iput-short p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fFinalDefault:S

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaAttrs:[Ljava/lang/Object;

    sget p2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TARGETNAMESPACE:I

    aget-object p1, p1, p2

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p3, p1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    :cond_2
    new-instance p1, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-direct {p1, p2}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;-><init>(Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupportRoot:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {p1, p3}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setSymbolTable(Lmf/org/apache/xerces/util/SymbolTable;)V

    goto :goto_1

    :cond_3
    new-instance p1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    invoke-direct {p1, v0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public addAllowedNS(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fImportedNS:Ljava/util/Vector;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method addAnnotation(Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fAnnotations:Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    iput-object v0, p1, Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;->next:Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fAnnotations:Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    return-void
.end method

.method backupNSSupport(Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->SchemaNamespaceSupportStack:Ljava/util/Stack;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupportRoot:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;-><init>(Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    return-void
.end method

.method getAnnotations()Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fAnnotations:Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    return-object v0
.end method

.method getSchemaAttrs()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaAttrs:[Ljava/lang/Object;

    return-object v0
.end method

.method public isAllowedNS(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fImportedNS:Ljava/util/Vector;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final needReportTNSError(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fReportedTNS:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fReportedTNS:Ljava/util/Vector;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fReportedTNS:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method removeAnnotations()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fAnnotations:Lmf/org/apache/xerces/impl/xs/traversers/XSAnnotationInfo;

    return-void
.end method

.method restoreNSSupport()V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->SchemaNamespaceSupportStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    return-void
.end method

.method returnSchemaAttrs()V
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaAttrs:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaAttrs:[Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "no targetNamspace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v1, "targetNamespace is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fSchemaElement:Lmf/org/w3c/dom/Element;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lmf/org/w3c/dom/Element;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    instance-of v2, v1, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lmf/org/w3c/dom/Document;->getDocumentURI()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, " :: schemaLocation is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
