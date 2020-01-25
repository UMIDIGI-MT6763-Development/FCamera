.class public Lmf/org/apache/xerces/dom/NodeIteratorImpl;
.super Ljava/lang/Object;
.source "NodeIteratorImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/traversal/NodeIterator;


# instance fields
.field private fCurrentNode:Lmf/org/w3c/dom/Node;

.field private fDetach:Z

.field private fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

.field private fEntityReferenceExpansion:Z

.field private fForward:Z

.field private fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

.field private fRoot:Lmf/org/w3c/dom/Node;

.field private fWhatToShow:I


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/DocumentImpl;Lmf/org/w3c/dom/Node;ILmf/org/w3c/dom/traversal/NodeFilter;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fWhatToShow:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fDetach:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    iput-object p1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iput-object p2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iput p3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fWhatToShow:I

    iput-object p4, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    iput-boolean p5, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fEntityReferenceExpansion:Z

    return-void
.end method


# virtual methods
.method acceptNode(Lmf/org/w3c/dom/Node;)Z
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fWhatToShow:I

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result p1

    sub-int/2addr p1, v2

    shl-int p1, v2, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fWhatToShow:I

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    sub-int/2addr v3, v2

    shl-int v3, v2, v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/traversal/NodeFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result p1

    if-ne p1, v2, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public detach()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fDetach:Z

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/DocumentImpl;->removeNodeIterator(Lmf/org/w3c/dom/traversal/NodeIterator;)V

    return-void
.end method

.method public getExpandEntityReferences()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fEntityReferenceExpansion:Z

    return v0
.end method

.method public getFilter()Lmf/org/w3c/dom/traversal/NodeFilter;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    return-object v0
.end method

.method public getRoot()Lmf/org/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getWhatToShow()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fWhatToShow:I

    return v0
.end method

.method matchNodeOrParent(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public nextNode()Lmf/org/w3c/dom/Node;
    .locals 6

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fDetach:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    :cond_1
    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    const/4 v4, 0x1

    if-nez v0, :cond_3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object v3, v0

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fEntityReferenceExpansion:Z

    if-nez v0, :cond_4

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v5, 0x5

    if-ne v0, v5, :cond_4

    invoke-virtual {p0, v3, v2}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    move-object v3, v0

    :goto_0
    iput-boolean v4, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    if-nez v3, :cond_5

    return-object v1

    :cond_5
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->acceptNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    return-object v0

    :cond_6
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0xb

    const-string v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "INVALID_STATE_ERR"

    invoke-static {v3, v4, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    return-object v0

    :cond_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p2

    if-eqz p2, :cond_3

    return-object p2

    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_6

    iget-object p2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    if-ne p1, p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p2

    if-eqz p2, :cond_5

    return-object p2

    :cond_5
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_6
    :goto_1
    return-object v0
.end method

.method public previousNode()Lmf/org/w3c/dom/Node;
    .locals 5

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fDetach:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    :cond_1
    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object v3, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->previousNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    move-object v3, v0

    :goto_0
    iput-boolean v2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    if-nez v3, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->acceptNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    return-object v0

    :cond_5
    :goto_1
    return-object v1

    :cond_6
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0xb

    const-string v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "INVALID_STATE_ERR"

    invoke-static {v3, v4, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method previousNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fEntityReferenceExpansion:Z

    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    :cond_2
    :goto_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public removeNode(Lmf/org/w3c/dom/Node;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->matchNodeOrParent(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->previousNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->previousNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    :goto_0
    return-void
.end method
