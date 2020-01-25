.class public Lmf/org/apache/xerces/dom/ElementNSImpl;
.super Lmf/org/apache/xerces/dom/ElementImpl;
.source "ElementNSImpl.java"


# static fields
.field static final serialVersionUID:J = -0x7ee003136adf5f42L

.field static final xmlURI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field protected localName:Ljava/lang/String;

.field protected namespaceURI:Ljava/lang/String;

.field transient type:Lmf/org/apache/xerces/xs/XSTypeDefinition;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/dom/ElementImpl;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/ElementImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/dom/ElementImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lmf/org/apache/xerces/dom/ElementNSImpl;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/dom/ElementImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput-object p4, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->localName:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    return-void
.end method

.method private setName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iput-object p1, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    :cond_1
    const/16 v1, 0xe

    if-eqz p2, :cond_8

    const/16 v2, 0x3a

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    iget-object v4, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4, p2, v3, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->checkNamespaceWF(Ljava/lang/String;II)V

    if-gez v3, :cond_4

    iput-object p2, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->localName:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->localName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->checkQName(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "xmlns"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_3

    sget-object v2, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz p1, :cond_7

    sget-object v2, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "xmlns"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string p2, "NAMESPACE_ERR"

    invoke-static {p1, p2, v0}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lmf/org/w3c/dom/DOMException;

    invoke-direct {p2, v1, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p2

    :cond_4
    const/4 v4, 0x0

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->localName:Ljava/lang/String;

    iget-object p2, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean p2, p2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz p2, :cond_7

    if-eqz p1, :cond_6

    const-string p2, "xml"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p2, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    iget-object p2, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->localName:Ljava/lang/String;

    invoke-virtual {p2, v3, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->checkQName(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {p2, v3, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->checkDOMNSErr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string p2, "NAMESPACE_ERR"

    invoke-static {p1, p2, v0}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lmf/org/w3c/dom/DOMException;

    invoke-direct {p2, v1, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p2

    :cond_7
    :goto_1
    return-void

    :cond_8
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string p2, "NAMESPACE_ERR"

    invoke-static {p1, p2, v0}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lmf/org/w3c/dom/DOMException;

    invoke-direct {p2, v1, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public getLocalName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->name:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->type:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v1, :cond_0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v1, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v1, :cond_1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->type:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getXMLBaseAttribute()Lmf/org/w3c/dom/Attr;
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    const-string v2, "base"

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/dom/AttributeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    return-object v0
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->type:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v0, :cond_2

    instance-of v1, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v1, :cond_1

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_1
    instance-of v1, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v1, :cond_2

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->synchronizeData()V

    :cond_0
    iput-object p2, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->name:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/ElementNSImpl;->setName(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->reconcileDefaultAttributes()V

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->isReadOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v0

    invoke-static {p1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    const/16 v2, 0xe

    if-eqz v0, :cond_2

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    const-string v3, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string v0, "NAMESPACE_ERR"

    invoke-static {p1, v0, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v0, v2, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_2
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string v0, "NAMESPACE_ERR"

    invoke-static {p1, v0, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v0, v2, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_3
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string v0, "INVALID_CHARACTER_ERR"

    invoke-static {p1, v0, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_4
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string v0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {p1, v0, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->localName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->name:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->localName:Ljava/lang/String;

    iput-object p1, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->name:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public setType(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->type:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    return-void
.end method
