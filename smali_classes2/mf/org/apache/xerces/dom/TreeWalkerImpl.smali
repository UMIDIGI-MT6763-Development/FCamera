.class public Lmf/org/apache/xerces/dom/TreeWalkerImpl;
.super Ljava/lang/Object;
.source "TreeWalkerImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/traversal/TreeWalker;


# instance fields
.field fCurrentNode:Lmf/org/w3c/dom/Node;

.field private fEntityReferenceExpansion:Z

.field fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

.field fRoot:Lmf/org/w3c/dom/Node;

.field private fUseIsSameNode:Z

.field fWhatToShow:I


# direct methods
.method public constructor <init>(Lmf/org/w3c/dom/Node;ILmf/org/w3c/dom/traversal/NodeFilter;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fEntityReferenceExpansion:Z

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fWhatToShow:I

    iput-object p1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iput-object p1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fRoot:Lmf/org/w3c/dom/Node;

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->useIsSameNode(Lmf/org/w3c/dom/Node;)Z

    move-result p1

    iput-boolean p1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fUseIsSameNode:Z

    iput p2, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fWhatToShow:I

    iput-object p3, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    iput-boolean p4, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fEntityReferenceExpansion:Z

    return-void
.end method

.method private isSameNode(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fUseIsSameNode:Z

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lmf/org/w3c/dom/Node;->isSameNode(Lmf/org/w3c/dom/Node;)Z

    move-result p1

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private useIsSameNode(Lmf/org/w3c/dom/Node;)Z
    .locals 3

    instance-of v0, p1, Lmf/org/apache/xerces/dom/NodeImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    check-cast p1, Lmf/org/w3c/dom/Document;

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lmf/org/w3c/dom/Document;->getImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object p1

    const-string v0, "Core"

    const-string v2, "3.0"

    invoke-interface {p1, v0, v2}, Lmf/org/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method


# virtual methods
.method acceptNode(Lmf/org/w3c/dom/Node;)S
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fWhatToShow:I

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
    iget v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fWhatToShow:I

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    sub-int/2addr v3, v2

    shl-int/2addr v2, v3

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/traversal/NodeFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public firstChild()Lmf/org/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getFirstChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    :cond_1
    return-object v0
.end method

.method public getCurrentNode()Lmf/org/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getExpandEntityReferences()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fEntityReferenceExpansion:Z

    return v0
.end method

.method public getFilter()Lmf/org/w3c/dom/traversal/NodeFilter;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    return-object v0
.end method

.method getFirstChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fEntityReferenceExpansion:Z

    if-nez v1, :cond_1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    return-object v1

    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getFirstChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v1, p1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0

    :cond_5
    invoke-virtual {p0, v1, p1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method getLastChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fEntityReferenceExpansion:Z

    if-nez v1, :cond_1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    return-object v1

    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getLastChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v1, p1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0

    :cond_5
    invoke-virtual {p0, v1, p1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method getNextSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fRoot:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->isSameNode(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    const/4 v2, 0x3

    if-nez v1, :cond_4

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->isSameNode(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    return-object v1

    :cond_5
    if-ne p1, v2, :cond_7

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getFirstChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v1, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object p1

    return-object p1

    :cond_6
    return-object p1

    :cond_7
    invoke-virtual {p0, v1, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_1
    return-object v0
.end method

.method getParentNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fRoot:Lmf/org/w3c/dom/Node;

    invoke-direct {p0, p1, v1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->isSameNode(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getParentNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method getPreviousSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fRoot:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->isSameNode(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    const/4 v2, 0x3

    if-nez v1, :cond_4

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->isSameNode(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    return-object v1

    :cond_5
    if-ne p1, v2, :cond_7

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getLastChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v1, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object p1

    return-object p1

    :cond_6
    return-object p1

    :cond_7
    invoke-virtual {p0, v1, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_1
    return-object v0
.end method

.method public getRoot()Lmf/org/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fRoot:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getWhatToShow()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fWhatToShow:I

    return v0
.end method

.method public lastChild()Lmf/org/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getLastChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    :cond_1
    return-object v0
.end method

.method public nextNode()Lmf/org/w3c/dom/Node;
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getFirstChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    return-object v0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getParentNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_4

    iput-object v2, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    return-object v2

    :cond_4
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getParentNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public nextSibling()Lmf/org/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    :cond_1
    return-object v0
.end method

.method public parentNode()Lmf/org/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getParentNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    :cond_1
    return-object v0
.end method

.method public previousNode()Lmf/org/w3c/dom/Node;
    .locals 5

    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getParentNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    return-object v0

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getLastChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    move-object v3, v2

    :goto_0
    if-nez v2, :cond_5

    if-eqz v3, :cond_3

    iput-object v3, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    return-object v0

    :cond_3
    if-eqz v0, :cond_4

    iput-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    return-object v0

    :cond_4
    return-object v1

    :cond_5
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getLastChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v3

    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    goto :goto_0
.end method

.method public previousSibling()Lmf/org/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    :cond_1
    return-object v0
.end method

.method public setCurrentNode(Lmf/org/w3c/dom/Node;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    return-void

    :cond_0
    const/4 p1, 0x0

    const-string v0, "http://www.w3.org/dom/DOMTR"

    const-string v1, "NOT_SUPPORTED_ERR"

    invoke-static {v0, v1, p1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setWhatShow(I)V
    .locals 0

    iput p1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fWhatToShow:I

    return-void
.end method
