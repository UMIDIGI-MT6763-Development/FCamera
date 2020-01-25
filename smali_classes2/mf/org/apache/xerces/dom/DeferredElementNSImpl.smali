.class public Lmf/org/apache/xerces/dom/DeferredElementNSImpl;
.super Lmf/org/apache/xerces/dom/ElementNSImpl;
.source "DeferredElementNSImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = -0x456a4409e1232119L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/ElementNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput p2, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->needsSyncChildren(Z)V

    return-void
.end method


# virtual methods
.method public final getNodeIndex()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    return v0
.end method

.method protected final synchronizeChildren()V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v0, p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->synchronizeChildren(Lmf/org/apache/xerces/dom/ParentNode;I)V

    return-void
.end method

.method protected final synchronizeData()V
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->needsSyncData(Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    check-cast v1, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget-boolean v2, v1, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    iput-boolean v0, v1, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    iget v3, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->name:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->name:Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v5, 0x1

    if-gez v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->name:Ljava/lang/String;

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->localName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->name:Ljava/lang/String;

    add-int/2addr v3, v5

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->localName:Ljava/lang/String;

    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->namespaceURI:Ljava/lang/String;

    iget v3, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getTypeInfo(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->type:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->setupDefaultAttributes()V

    iget v3, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_4

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v7

    :cond_1
    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v8}, Lmf/org/apache/xerces/dom/AttrImpl;->getSpecified()Z

    move-result v9

    if-nez v9, :cond_3

    if-nez v0, :cond_2

    invoke-virtual {v8}, Lmf/org/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Lmf/org/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-eq v9, v10, :cond_3

    invoke-virtual {v8}, Lmf/org/apache/xerces/dom/AttrImpl;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-gez v9, :cond_3

    :cond_2
    invoke-interface {v7, v8}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItemNS(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move v0, v5

    goto :goto_1

    :cond_3
    invoke-interface {v7, v8}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :goto_1
    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v3

    if-ne v3, v6, :cond_1

    :cond_4
    iput-boolean v2, v1, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    return-void
.end method
