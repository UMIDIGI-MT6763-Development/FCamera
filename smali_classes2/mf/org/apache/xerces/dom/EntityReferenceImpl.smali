.class public Lmf/org/apache/xerces/dom/EntityReferenceImpl;
.super Lmf/org/apache/xerces/dom/ParentNode;
.source "EntityReferenceImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/EntityReference;


# static fields
.field static final serialVersionUID:J = -0x6670305ac5fca66eL


# instance fields
.field protected baseURI:Ljava/lang/String;

.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    iput-object p2, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->name:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->isReadOnly(Z)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->needsSyncChildren(Z)V

    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 2

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->setReadOnly(ZZ)V

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->baseURI:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/EntityImpl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/EntityImpl;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->baseURI:Ljava/lang/String;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/URI;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->baseURI:Ljava/lang/String;

    return-object v0
.end method

.method protected getEntityRefValue()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->synchronizeChildren()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    check-cast v0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->getEntityRefValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v0

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v4, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v4, v4, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    if-nez v4, :cond_2

    return-object v0

    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v5

    if-ne v5, v3, :cond_4

    move-object v5, v0

    check-cast v5, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->getEntityRefValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v5

    if-ne v5, v2, :cond_5

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_1

    :cond_5
    return-object v1

    :cond_6
    return-object v1

    :cond_7
    const-string v0, ""

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->synchronizeData()V

    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->baseURI:Ljava/lang/String;

    return-void
.end method

.method public setReadOnly(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->synchronizeData()V

    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->needsSyncChildren()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->synchronizeChildren()V

    :cond_1
    iget-object p2, p0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_0
    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lmf/org/apache/xerces/dom/ChildNode;->setReadOnly(ZZ)V

    iget-object p2, p2, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->isReadOnly(Z)V

    return-void
.end method

.method protected synchronizeChildren()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->needsSyncChildren(Z)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/EntityImpl;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->isReadOnly(Z)V

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/EntityImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0, v1, v1}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->setReadOnly(ZZ)V

    goto :goto_1

    :cond_1
    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
