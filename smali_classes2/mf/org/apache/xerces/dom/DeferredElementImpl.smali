.class public Lmf/org/apache/xerces/dom/DeferredElementImpl;
.super Lmf/org/apache/xerces/dom/ElementImpl;
.source "DeferredElementImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = -0x6a74ccb2df45c8baL


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/ElementImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput p2, p0, Lmf/org/apache/xerces/dom/DeferredElementImpl;->fNodeIndex:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/DeferredElementImpl;->needsSyncChildren(Z)V

    return-void
.end method


# virtual methods
.method public final getNodeIndex()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredElementImpl;->fNodeIndex:I

    return v0
.end method

.method protected final synchronizeChildren()V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredElementImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredElementImpl;->fNodeIndex:I

    invoke-virtual {v0, p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->synchronizeChildren(Lmf/org/apache/xerces/dom/ParentNode;I)V

    return-void
.end method

.method protected final synchronizeData()V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredElementImpl;->needsSyncData(Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    check-cast v1, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget-boolean v2, v1, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    iput-boolean v0, v1, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredElementImpl;->fNodeIndex:I

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredElementImpl;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredElementImpl;->setupDefaultAttributes()V

    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredElementImpl;->fNodeIndex:I

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredElementImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v4

    :cond_0
    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-interface {v4, v5}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    :cond_1
    iput-boolean v2, v1, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    return-void
.end method
