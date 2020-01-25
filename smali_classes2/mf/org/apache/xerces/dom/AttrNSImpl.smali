.class public Lmf/org/apache/xerces/dom/AttrNSImpl;
.super Lmf/org/apache/xerces/dom/AttrImpl;
.source "AttrNSImpl.java"


# static fields
.field static final serialVersionUID:J = -0xad9e3ec88a50756L

.field static final xmlURI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field static final xmlnsURI:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"


# instance fields
.field protected localName:Ljava/lang/String;

.field protected namespaceURI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/dom/AttrImpl;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/AttrImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/dom/AttrImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lmf/org/apache/xerces/dom/AttrNSImpl;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/dom/AttrImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput-object p4, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->localName:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->namespaceURI:Ljava/lang/String;

    return-void
.end method

.method private setName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrNSImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->namespaceURI:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    iput-object v2, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->namespaceURI:Ljava/lang/String;

    :cond_1
    const/16 v2, 0x3a

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, p2, v3, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->checkNamespaceWF(Ljava/lang/String;II)V

    if-gez v3, :cond_4

    iput-object p2, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->localName:Ljava/lang/String;

    iget-boolean v2, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->localName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->checkQName(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xmlns"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p1, :cond_5

    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "xmlns"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string p2, "NAMESPACE_ERR"

    invoke-static {p1, p2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lmf/org/w3c/dom/DOMException;

    const/16 v0, 0xe

    invoke-direct {p2, v0, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p2

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->localName:Ljava/lang/String;

    iget-object p2, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->localName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->checkQName(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->checkDOMNSErr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public getLocalName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrNSImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrNSImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrNSImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrNSImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->namespaceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrNSImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrNSImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->name:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->type:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->type:Ljava/lang/Object;

    instance-of v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->type:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->type:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->type:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->type:Ljava/lang/Object;

    instance-of v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->type:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "http://www.w3.org/TR/REC-xml"

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->type:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->type:Ljava/lang/Object;

    instance-of v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->type:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrNSImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrNSImpl;->synchronizeData()V

    :cond_0
    iput-object p2, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->name:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/AttrNSImpl;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrNSImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrNSImpl;->synchronizeData()V

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrNSImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrNSImpl;->isReadOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrNSImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v0

    invoke-static {p1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->namespaceURI:Ljava/lang/String;

    const/16 v2, 0xe

    if-eqz v0, :cond_6

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_6

    const-string v0, "xmlns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->namespaceURI:Ljava/lang/String;

    const-string v3, "http://www.w3.org/2000/xmlns/"

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
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->namespaceURI:Ljava/lang/String;

    const-string v3, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string v0, "NAMESPACE_ERR"

    invoke-static {p1, v0, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v0, v2, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->name:Ljava/lang/String;

    const-string v3, "xmlns"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string v0, "NAMESPACE_ERR"

    invoke-static {p1, v0, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v0, v2, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_6
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string v0, "NAMESPACE_ERR"

    invoke-static {p1, v0, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v0, v2, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_7
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string v0, "INVALID_CHARACTER_ERR"

    invoke-static {p1, v0, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_8
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string v0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {p1, v0, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_9
    :goto_0
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->localName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->name:Ljava/lang/String;

    goto :goto_1

    :cond_a
    iget-object p1, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->localName:Ljava/lang/String;

    iput-object p1, p0, Lmf/org/apache/xerces/dom/AttrNSImpl;->name:Ljava/lang/String;

    :goto_1
    return-void
.end method
