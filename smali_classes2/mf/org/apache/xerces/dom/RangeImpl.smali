.class public Lmf/org/apache/xerces/dom/RangeImpl;
.super Ljava/lang/Object;
.source "RangeImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/ranges/Range;


# static fields
.field static final CLONE_CONTENTS:I = 0x2

.field static final DELETE_CONTENTS:I = 0x3

.field static final EXTRACT_CONTENTS:I = 0x1


# instance fields
.field private fDeleteNode:Lmf/org/w3c/dom/Node;

.field private fDetach:Z

.field private fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

.field private fEndContainer:Lmf/org/w3c/dom/Node;

.field private fEndOffset:I

.field private fInsertNode:Lmf/org/w3c/dom/Node;

.field private fInsertedFromRange:Z

.field private fRemoveChild:Lmf/org/w3c/dom/Node;

.field private fSplitNode:Lmf/org/w3c/dom/Node;

.field private fStartContainer:Lmf/org/w3c/dom/Node;

.field private fStartOffset:I


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/DocumentImpl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fInsertNode:Lmf/org/w3c/dom/Node;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDeleteNode:Lmf/org/w3c/dom/Node;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fSplitNode:Lmf/org/w3c/dom/Node;

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fInsertedFromRange:Z

    iput-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fRemoveChild:Lmf/org/w3c/dom/Node;

    iput-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iput-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iput-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    iput v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    iput v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    return-void
.end method

.method private getRootContainer(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_0
.end method

.method private getSelectedNode(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;
    .locals 2

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    if-gez p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    if-gtz p2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    return-object p1
.end method

.method private hasLegalRootContainer(Lmf/org/w3c/dom/Node;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->getRootContainer(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb

    if-eq p1, v1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isLegalContainedNode(Lmf/org/w3c/dom/Node;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    :cond_1
    :pswitch_0
    return v0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isLegalContainer(Lmf/org/w3c/dom/Node;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private traverseCharacterDataNode(Lmf/org/w3c/dom/Node;ZI)Lmf/org/w3c/dom/Node;
    .locals 3

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/RangeImpl;->getStartOffset()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/RangeImpl;->getEndOffset()I

    move-result p2

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    invoke-interface {p1, p2}, Lmf/org/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    :cond_1
    const/4 p2, 0x3

    if-ne p3, p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    invoke-interface {p1, v1}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1, v2}, Lmf/org/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    return-object p1
.end method

.method private traverseCommonAncestors(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/DocumentFragment;
    .locals 5

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DocumentImpl;->createDocumentFragment()Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseLeftBoundary(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/dom/RangeImpl;->indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v2

    invoke-virtual {p0, p2, v1}, Lmf/org/apache/xerces/dom/RangeImpl;->indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    :goto_1
    if-gtz v1, :cond_4

    invoke-direct {p0, p2, p3}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseRightBoundary(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object p2

    if-eqz v0, :cond_2

    invoke-interface {v0, p2}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_2
    const/4 p2, 0x2

    if-eq p3, p2, :cond_3

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->setStartAfter(Lmf/org/w3c/dom/Node;)V

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_3
    return-object v0

    :cond_4
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    invoke-direct {p0, v2, p3}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseFullySelected(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-eqz v0, :cond_5

    invoke-interface {v0, v2}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_5
    add-int/lit8 v1, v1, -0x1

    move-object v2, v4

    goto :goto_1
.end method

.method private traverseCommonEndContainer(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/DocumentFragment;
    .locals 5

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DocumentImpl;->createDocumentFragment()Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseLeftBoundary(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/dom/RangeImpl;->indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    sub-int/2addr v3, v1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_1
    if-gtz v3, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->setStartAfter(Lmf/org/w3c/dom/Node;)V

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_2
    return-object v0

    :cond_3
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    invoke-direct {p0, v1, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseFullySelected(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_4
    add-int/lit8 v3, v3, -0x1

    move-object v1, v4

    goto :goto_1
.end method

.method private traverseCommonStartContainer(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/DocumentFragment;
    .locals 7

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DocumentImpl;->createDocumentFragment()Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseRightBoundary(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/dom/RangeImpl;->indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v1

    iget v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-gtz v1, :cond_3

    if-eq p2, v3, :cond_2

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->setEndBefore(Lmf/org/w3c/dom/Node;)V

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_2
    return-object v0

    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    :goto_1
    if-gtz v1, :cond_5

    if-eq p2, v3, :cond_4

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->setEndBefore(Lmf/org/w3c/dom/Node;)V

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_4
    return-object v0

    :cond_5
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v5

    invoke-direct {p0, v4, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseFullySelected(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v4

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentFragment;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Lmf/org/w3c/dom/DocumentFragment;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_6
    add-int/lit8 v1, v1, -0x1

    move-object v4, v5

    goto :goto_1
.end method

.method private traverseContents(I)Lmf/org/w3c/dom/DocumentFragment;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-boolean v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-nez v3, :cond_9

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseSameContainer(I)Lmf/org/w3c/dom/DocumentFragment;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    const/4 v3, 0x0

    move-object v1, v2

    move-object v2, v0

    move v0, v3

    :goto_0
    if-nez v2, :cond_7

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_1
    if-nez v1, :cond_5

    sub-int/2addr v3, v0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    :goto_2
    if-gtz v3, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    :goto_3
    if-ltz v3, :cond_3

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    :goto_4
    if-ne v0, v1, :cond_2

    invoke-direct {p0, v2, v3, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseCommonAncestors(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/DocumentFragment;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_4

    :cond_3
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v1, v4, :cond_6

    invoke-direct {p0, v2, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseCommonEndContainer(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/DocumentFragment;

    move-result-object p1

    return-object p1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne v2, v4, :cond_8

    invoke-direct {p0, v1, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseCommonStartContainer(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/DocumentFragment;

    move-result-object p1

    return-object p1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    :cond_9
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const/16 v0, 0xb

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    invoke-static {v2, v3, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_a
    :goto_5
    return-object v1
.end method

.method private traverseFullySelected(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;
    .locals 3

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    return-object v0

    :pswitch_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p2

    invoke-interface {p2, p1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    return-object v0

    :pswitch_1
    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result p2

    const/16 v1, 0xa

    if-eq p2, v1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const/4 p2, 0x3

    const-string v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "HIERARCHY_REQUEST_ERR"

    invoke-static {v1, v2, v0}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private traverseLeftBoundary(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;
    .locals 8

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/RangeImpl;->getStartContainer()Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/RangeImpl;->getStartOffset()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/dom/RangeImpl;->getSelectedNode(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/RangeImpl;->getStartContainer()Lmf/org/w3c/dom/Node;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-ne v0, p1, :cond_1

    invoke-direct {p0, v0, v1, v3, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    invoke-direct {p0, v4, v2, v3, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;

    move-result-object v5

    :goto_1
    if-nez v4, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_2
    const/4 v6, 0x3

    if-nez v0, :cond_5

    if-ne v4, p1, :cond_3

    return-object v5

    :cond_3
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    invoke-direct {p0, v4, v2, v3, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;

    move-result-object v7

    if-eq p2, v6, :cond_4

    invoke-interface {v7, v5}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_4
    move-object v5, v7

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v7

    invoke-direct {p0, v0, v1, v3, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eq p2, v6, :cond_6

    invoke-interface {v5, v0}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_6
    move v1, v3

    move-object v0, v7

    goto :goto_2
.end method

.method private traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p4}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseFullySelected(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result p2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_2

    const/4 v0, 0x7

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p4}, Lmf/org/apache/xerces/dom/RangeImpl;->traversePartiallySelected(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseCharacterDataNode(Lmf/org/w3c/dom/Node;ZI)Lmf/org/w3c/dom/Node;

    move-result-object p1

    return-object p1
.end method

.method private traversePartiallySelected(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    return-object v0

    :pswitch_0
    return-object v0

    :pswitch_1
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private traverseRightBoundary(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;
    .locals 8

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    iget v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/dom/RangeImpl;->getSelectedNode(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-ne v0, p1, :cond_1

    invoke-direct {p0, v0, v1, v3, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    invoke-direct {p0, v4, v3, v3, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;

    move-result-object v5

    :goto_1
    if-nez v4, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_2
    const/4 v6, 0x3

    if-nez v0, :cond_5

    if-ne v4, p1, :cond_3

    return-object v5

    :cond_3
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    invoke-direct {p0, v4, v3, v3, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;

    move-result-object v7

    if-eq p2, v6, :cond_4

    invoke-interface {v7, v5}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_4
    move-object v5, v7

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v7

    invoke-direct {p0, v0, v1, v3, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseNode(Lmf/org/w3c/dom/Node;ZZI)Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eq p2, v6, :cond_6

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_6
    move v1, v2

    move-object v0, v7

    goto :goto_2
.end method

.method private traverseSameContainer(I)Lmf/org/w3c/dom/DocumentFragment;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/DocumentImpl;->createDocumentFragment()Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    iget v4, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    if-ne v3, v4, :cond_1

    return-object v2

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x2

    if-eq v3, v1, :cond_6

    if-eq v3, v6, :cond_6

    if-eq v3, v4, :cond_6

    const/4 v8, 0x7

    if-ne v3, v8, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/dom/RangeImpl;->getSelectedNode(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    iget v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    iget v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    sub-int/2addr v1, v3

    :goto_1
    if-gtz v1, :cond_4

    if-eq p1, v7, :cond_3

    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_3
    return-object v2

    :cond_4
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseFullySelected(Lmf/org/w3c/dom/Node;I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v2, :cond_5

    invoke-interface {v2, v0}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_5
    add-int/lit8 v1, v1, -0x1

    move-object v0, v3

    goto :goto_1

    :cond_6
    :goto_2
    iget-object v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v8}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    iget v10, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    if-eq p1, v7, :cond_7

    iget-object v7, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    check-cast v7, Lmf/org/apache/xerces/dom/CharacterDataImpl;

    iget v9, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    iget v10, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    sub-int/2addr v10, v9

    invoke-virtual {v7, v9, v10}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->deleteData(II)V

    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_7
    if-ne p1, v1, :cond_8

    return-object v0

    :cond_8
    if-ne v3, v1, :cond_9

    iget-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {p1, v8}, Lmf/org/apache/xerces/dom/DocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object p1

    invoke-interface {v2, p1}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_3

    :cond_9
    if-ne v3, v6, :cond_a

    iget-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {p1, v8}, Lmf/org/apache/xerces/dom/DocumentImpl;->createCDATASection(Ljava/lang/String;)Lmf/org/w3c/dom/CDATASection;

    move-result-object p1

    invoke-interface {v2, p1}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_3

    :cond_a
    if-ne v3, v4, :cond_b

    iget-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {p1, v8}, Lmf/org/apache/xerces/dom/DocumentImpl;->createComment(Ljava/lang/String;)Lmf/org/w3c/dom/Comment;

    move-result-object p1

    invoke-interface {v2, p1}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_3

    :cond_b
    iget-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v8}, Lmf/org/apache/xerces/dom/DocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ProcessingInstruction;

    move-result-object p1

    invoke-interface {v2, p1}, Lmf/org/w3c/dom/DocumentFragment;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :goto_3
    return-object v2
.end method


# virtual methods
.method checkIndex(Lmf/org/w3c/dom/Node;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_4

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getChildNodes()Lmf/org/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result p1

    if-gt p2, p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const-string p2, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INDEX_SIZE_ERR"

    invoke-static {p2, v2, v0}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p2, p1, :cond_3

    :goto_1
    return-void

    :cond_3
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const-string p2, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INDEX_SIZE_ERR"

    invoke-static {p2, v2, v0}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const-string p2, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INDEX_SIZE_ERR"

    invoke-static {p2, v2, v0}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public cloneContents()Lmf/org/w3c/dom/DocumentFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseContents(I)Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v0

    return-object v0
.end method

.method public cloneRange()Lmf/org/w3c/dom/ranges/Range;
    .locals 5

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DocumentImpl;->createRange()Lmf/org/w3c/dom/ranges/Range;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    invoke-interface {v0, v1, v2}, Lmf/org/w3c/dom/ranges/Range;->setStart(Lmf/org/w3c/dom/Node;I)V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    iget v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    invoke-interface {v0, v1, v2}, Lmf/org/w3c/dom/ranges/Range;->setEnd(Lmf/org/w3c/dom/Node;I)V

    return-object v0

    :cond_0
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const-string v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "INVALID_STATE_ERR"

    invoke-static {v3, v4, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public collapse(Z)V
    .locals 4

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iput-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    iget p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    iput p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    iput-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    iput p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    :goto_0
    return-void

    :cond_1
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const/16 v0, 0xb

    const/4 v1, 0x0

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    invoke-static {v2, v3, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public compareBoundaryPoints(SLmf/org/w3c/dom/ranges/Range;)S
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p2}, Lmf/org/w3c/dom/ranges/Range;->getStartContainer()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p2}, Lmf/org/w3c/dom/ranges/Range;->getStartContainer()Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-eq v0, v2, :cond_0

    invoke-interface {p2}, Lmf/org/w3c/dom/ranges/Range;->getStartContainer()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p2}, Lmf/org/w3c/dom/ranges/Range;->getEndContainer()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p2}, Lmf/org/w3c/dom/ranges/Range;->getEndContainer()Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-eq v0, v2, :cond_3

    invoke-interface {p2}, Lmf/org/w3c/dom/ranges/Range;->getStartContainer()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const/4 p2, 0x4

    const-string v0, "http://www.w3.org/dom/DOMTR"

    const-string v2, "WRONG_DOCUMENT_ERR"

    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const/16 p2, 0xb

    const-string v0, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INVALID_STATE_ERR"

    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    if-nez p1, :cond_4

    invoke-interface {p2}, Lmf/org/w3c/dom/ranges/Range;->getStartContainer()Lmf/org/w3c/dom/Node;

    move-result-object p1

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {p2}, Lmf/org/w3c/dom/ranges/Range;->getStartOffset()I

    move-result p2

    iget v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    goto :goto_1

    :cond_4
    if-ne p1, v0, :cond_5

    invoke-interface {p2}, Lmf/org/w3c/dom/ranges/Range;->getStartContainer()Lmf/org/w3c/dom/Node;

    move-result-object p1

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {p2}, Lmf/org/w3c/dom/ranges/Range;->getStartOffset()I

    move-result p2

    iget v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    goto :goto_1

    :cond_5
    const/4 v1, 0x3

    if-ne p1, v1, :cond_6

    invoke-interface {p2}, Lmf/org/w3c/dom/ranges/Range;->getEndContainer()Lmf/org/w3c/dom/Node;

    move-result-object p1

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {p2}, Lmf/org/w3c/dom/ranges/Range;->getEndOffset()I

    move-result p2

    iget v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    goto :goto_1

    :cond_6
    invoke-interface {p2}, Lmf/org/w3c/dom/ranges/Range;->getEndContainer()Lmf/org/w3c/dom/Node;

    move-result-object p1

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {p2}, Lmf/org/w3c/dom/ranges/Range;->getEndOffset()I

    move-result p2

    iget v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    :goto_1
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne p1, v1, :cond_9

    if-ge p2, v2, :cond_7

    return v0

    :cond_7
    if-ne p2, v2, :cond_8

    return v3

    :cond_8
    return v4

    :cond_9
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v5

    move-object v6, v1

    :goto_2
    if-nez v5, :cond_14

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p2

    move-object v5, p1

    :goto_3
    if-nez p2, :cond_11

    move-object p2, p1

    :goto_4
    if-nez p2, :cond_10

    move-object p2, v1

    :goto_5
    if-nez p2, :cond_f

    :goto_6
    if-gtz v3, :cond_e

    :goto_7
    if-ltz v3, :cond_d

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p2

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_8
    if-ne p1, v1, :cond_c

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p1

    :goto_9
    if-nez p1, :cond_a

    return v4

    :cond_a
    if-ne p1, v2, :cond_b

    return v0

    :cond_b
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_9

    :cond_c
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p2

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_8

    :cond_d
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_e
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_f
    add-int/lit8 v3, v3, -0x1

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p2

    goto :goto_5

    :cond_10
    add-int/lit8 v3, v3, 0x1

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p2

    goto :goto_4

    :cond_11
    if-ne p2, v1, :cond_13

    invoke-virtual {p0, v5, v1}, Lmf/org/apache/xerces/dom/RangeImpl;->indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result p1

    if-ge p1, v2, :cond_12

    return v0

    :cond_12
    return v4

    :cond_13
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v5

    move-object v7, v5

    move-object v5, p2

    move-object p2, v7

    goto :goto_3

    :cond_14
    if-ne v5, p1, :cond_16

    invoke-virtual {p0, v6, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result p1

    if-gt p2, p1, :cond_15

    return v0

    :cond_15
    return v4

    :cond_16
    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v6

    move-object v7, v6

    move-object v6, v5

    move-object v5, v7

    goto/16 :goto_2
.end method

.method public deleteContents()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseContents(I)Lmf/org/w3c/dom/DocumentFragment;

    return-void
.end method

.method deleteData(Lmf/org/w3c/dom/CharacterData;II)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDeleteNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p1, p2, p3}, Lmf/org/w3c/dom/CharacterData;->deleteData(II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDeleteNode:Lmf/org/w3c/dom/Node;

    return-void
.end method

.method public detach()V
    .locals 5

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/DocumentImpl;->removeRange(Lmf/org/w3c/dom/ranges/Range;)V

    return-void

    :cond_0
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const-string v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "INVALID_STATE_ERR"

    invoke-static {v3, v4, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public extractContents()Lmf/org/w3c/dom/DocumentFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/RangeImpl;->traverseContents(I)Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v0

    return-object v0
.end method

.method public getCollapsed()Z
    .locals 5

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    iget v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const-string v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "INVALID_STATE_ERR"

    invoke-static {v3, v4, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public getCommonAncestorContainer()Lmf/org/w3c/dom/Node;
    .locals 7

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    :goto_0
    if-nez v2, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    :goto_1
    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_2
    if-ltz v2, :cond_1

    if-gez v4, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_1
    :goto_3
    check-cast v1, Lmf/org/w3c/dom/Node;

    return-object v1

    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    :cond_4
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0xb

    const-string v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "INVALID_STATE_ERR"

    invoke-static {v3, v4, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public getEndContainer()Lmf/org/w3c/dom/Node;
    .locals 5

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    return-object v0

    :cond_0
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const-string v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "INVALID_STATE_ERR"

    invoke-static {v3, v4, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public getEndOffset()I
    .locals 5

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-nez v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    return v0

    :cond_0
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const-string v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "INVALID_STATE_ERR"

    invoke-static {v3, v4, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public getStartContainer()Lmf/org/w3c/dom/Node;
    .locals 5

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    return-object v0

    :cond_0
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const-string v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "INVALID_STATE_ERR"

    invoke-static {v3, v4, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public getStartOffset()I
    .locals 5

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-nez v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    return v0

    :cond_0
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const-string v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "INVALID_STATE_ERR"

    invoke-static {v3, v4, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I
    .locals 1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eq v0, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object p2

    :goto_0
    if-ne p2, p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p2

    goto :goto_0
.end method

.method insertData(Lmf/org/w3c/dom/CharacterData;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fInsertNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p1, p2, p3}, Lmf/org/w3c/dom/CharacterData;->insertData(ILjava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fInsertNode:Lmf/org/w3c/dom/Node;

    return-void
.end method

.method public insertNode(Lmf/org/w3c/dom/Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;,
            Lmf/org/w3c/dom/ranges/RangeException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v3

    if-ne v1, v3, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    const/16 v3, 0xc

    if-eq v0, v3, :cond_1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    const-string v0, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_NODE_TYPE_ERR"

    invoke-static {v0, v3, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const/4 v0, 0x4

    const-string v1, "http://www.w3.org/dom/DOMTR"

    const-string v3, "WRONG_DOCUMENT_ERR"

    invoke-static {v1, v3, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const/16 v0, 0xb

    const-string v1, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    invoke-static {v1, v3, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fInsertedFromRange:Z

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getChildNodes()Lmf/org/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v1

    iget-object v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v3, v2}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lmf/org/apache/xerces/dom/TextImpl;

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/dom/TextImpl;->setNodeValueInternal(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    move-object v5, v4

    check-cast v5, Lmf/org/apache/xerces/dom/TextImpl;

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lmf/org/apache/xerces/dom/TextImpl;->setNodeValueInternal(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_5

    if-eqz v0, :cond_6

    invoke-interface {v0, p1, v4}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-interface {v0, v3, v4}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-interface {v0, v3}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_6
    :goto_1
    iget-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    iget-object v4, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v4, :cond_7

    iput-object v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    iget p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    sub-int/2addr p1, v0

    iput p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    goto :goto_2

    :cond_7
    if-ne p1, v0, :cond_8

    iget p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getChildNodes()Lmf/org/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    :cond_8
    :goto_2
    iget-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    invoke-virtual {p0, p1, v3, v0}, Lmf/org/apache/xerces/dom/RangeImpl;->signalSplitData(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;I)V

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne v0, v1, :cond_a

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getChildNodes()Lmf/org/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v0

    goto :goto_3

    :cond_a
    move v0, v2

    :goto_3
    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    move-object v3, v1

    move v1, v2

    :goto_4
    iget v4, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge v1, v4, :cond_c

    if-nez v3, :cond_b

    goto :goto_5

    :cond_b
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_c
    :goto_5
    if-eqz v3, :cond_d

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v1, p1, v3}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_6

    :cond_d
    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v1, p1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :goto_6
    iget-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v1, :cond_e

    iget v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    if-eqz v1, :cond_e

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getChildNodes()Lmf/org/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result p1

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    iput v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    :cond_e
    :goto_7
    iput-boolean v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fInsertedFromRange:Z

    return-void
.end method

.method public insertedNodeFromDOM(Lmf/org/w3c/dom/Node;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fInsertNode:Lmf/org/w3c/dom/Node;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fInsertedFromRange:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/dom/RangeImpl;->indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v1

    iget v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge v1, v2, :cond_3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/dom/RangeImpl;->indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result p1

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    if-ge p1, v0, :cond_4

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    :cond_4
    return-void
.end method

.method isAncestorOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z
    .locals 0

    :goto_0
    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p2

    goto :goto_0
.end method

.method nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object p2

    if-eqz p2, :cond_1

    return-object p2

    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p2

    if-eqz p2, :cond_2

    return-object p2

    :cond_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_5

    iget-object p2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-ne p1, p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p2

    if-eqz p2, :cond_4

    return-object p2

    :cond_4
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_5
    :goto_1
    return-object v0
.end method

.method receiveDeletedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDeleteNode:Lmf/org/w3c/dom/Node;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v0, :cond_3

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    add-int v1, p2, p3

    if-le v0, v1, :cond_2

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    iput v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    goto :goto_0

    :cond_2
    if-le v0, p2, :cond_3

    iput p2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    :cond_3
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v0, :cond_5

    iget p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    add-int/2addr p3, p2

    if-le p1, p3, :cond_4

    sub-int/2addr p1, p3

    add-int/2addr p2, p1

    iput p2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    goto :goto_1

    :cond_4
    if-le p1, p2, :cond_5

    iput p2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    :cond_5
    :goto_1
    return-void
.end method

.method receiveInsertedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fInsertNode:Lmf/org/w3c/dom/Node;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v0, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge p2, v0, :cond_2

    add-int/2addr v0, p3

    iput v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v0, :cond_3

    iget p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    if-ge p2, p1, :cond_3

    add-int/2addr p1, p3

    iput p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    :cond_3
    return-void
.end method

.method receiveReplacedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iput v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v0, :cond_2

    iput v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    :cond_2
    return-void
.end method

.method receiveSplitData(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;I)V
    .locals 2

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fSplitNode:Lmf/org/w3c/dom/Node;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    const/4 v1, 0x3

    if-ne p1, v0, :cond_2

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v1, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-le v0, p3, :cond_2

    sub-int/2addr v0, p3

    iput v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    iput-object p2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v0, :cond_3

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result p1

    if-ne p1, v1, :cond_3

    iget p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    if-le p1, p3, :cond_3

    sub-int/2addr p1, p3

    iput p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    iput-object p2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method removeChild(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 0

    iput-object p2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fRemoveChild:Lmf/org/w3c/dom/Node;

    invoke-interface {p1, p2}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fRemoveChild:Lmf/org/w3c/dom/Node;

    return-object p1
.end method

.method removeNode(Lmf/org/w3c/dom/Node;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fRemoveChild:Lmf/org/w3c/dom/Node;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/dom/RangeImpl;->indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v1

    iget v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/dom/RangeImpl;->indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v1

    iget v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    if-ge v1, v2, :cond_3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-eq v0, v1, :cond_6

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/dom/RangeImpl;->isAncestorOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/RangeImpl;->indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result v1

    iput v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/dom/RangeImpl;->isAncestorOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/RangeImpl;->indexOf(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)I

    move-result p1

    iput p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    :cond_6
    return-void
.end method

.method public selectNode(Lmf/org/w3c/dom/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ranges/RangeException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/RangeImpl;->isLegalContainer(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->isLegalContainedNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const/4 v0, 0x4

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "WRONG_DOCUMENT_ERR"

    invoke-static {v2, v3, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    const/4 v0, 0x2

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_NODE_TYPE_ERR"

    invoke-static {v2, v3, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const/16 v0, 0xb

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    invoke-static {v2, v3, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_5

    iput-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    const/4 v0, 0x0

    :goto_1
    if-nez p1, :cond_4

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    iget p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public selectNodeContents(Lmf/org/w3c/dom/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ranges/RangeException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->isLegalContainer(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const/4 v0, 0x4

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "WRONG_DOCUMENT_ERR"

    invoke-static {v2, v3, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    const/4 v0, 0x2

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_NODE_TYPE_ERR"

    invoke-static {v2, v3, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const/16 v0, 0xb

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    invoke-static {v2, v3, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iput-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-nez p1, :cond_4

    iput v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    goto :goto_2

    :cond_4
    :goto_1
    if-nez p1, :cond_5

    iput v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    :goto_2
    return-void

    :cond_5
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_1
.end method

.method public setEnd(Lmf/org/w3c/dom/Node;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ranges/RangeException;,
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->isLegalContainer(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const/4 p2, 0x4

    const-string v0, "http://www.w3.org/dom/DOMTR"

    const-string v2, "WRONG_DOCUMENT_ERR"

    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    const/4 p2, 0x2

    const-string v0, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INVALID_NODE_TYPE_ERR"

    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const/16 p2, 0xb

    const-string v0, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INVALID_STATE_ERR"

    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->checkIndex(Lmf/org/w3c/dom/Node;I)V

    iput-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    iput p2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/RangeImpl;->getCommonAncestorContainer()Lmf/org/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object p2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, p2, :cond_5

    iget p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    iget p2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge p1, p2, :cond_5

    :cond_4
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_5
    return-void
.end method

.method public setEndAfter(Lmf/org/w3c/dom/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ranges/RangeException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->hasLegalRootContainer(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->isLegalContainedNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const/4 v0, 0x4

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "WRONG_DOCUMENT_ERR"

    invoke-static {v2, v3, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    const/4 v0, 0x2

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_NODE_TYPE_ERR"

    invoke-static {v2, v3, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const/16 v0, 0xb

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    invoke-static {v2, v3, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-nez p1, :cond_6

    iput v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/RangeImpl;->getCommonAncestorContainer()Lmf/org/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v1, :cond_5

    iget p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    iget v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge p1, v1, :cond_5

    :cond_4
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_5
    return-void

    :cond_6
    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_1
.end method

.method public setEndBefore(Lmf/org/w3c/dom/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ranges/RangeException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->hasLegalRootContainer(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->isLegalContainedNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const/4 v0, 0x4

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "WRONG_DOCUMENT_ERR"

    invoke-static {v2, v3, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    const/4 v0, 0x2

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_NODE_TYPE_ERR"

    invoke-static {v2, v3, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const/16 v0, 0xb

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    invoke-static {v2, v3, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-nez p1, :cond_6

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/RangeImpl;->getCommonAncestorContainer()Lmf/org/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v1, :cond_5

    iget p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    iget v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge p1, v1, :cond_5

    :cond_4
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_5
    return-void

    :cond_6
    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_1
.end method

.method public setStart(Lmf/org/w3c/dom/Node;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ranges/RangeException;,
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->isLegalContainer(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const/4 p2, 0x4

    const-string v0, "http://www.w3.org/dom/DOMTR"

    const-string v2, "WRONG_DOCUMENT_ERR"

    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    const/4 p2, 0x2

    const-string v0, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INVALID_NODE_TYPE_ERR"

    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const/16 p2, 0xb

    const-string v0, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INVALID_STATE_ERR"

    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/dom/RangeImpl;->checkIndex(Lmf/org/w3c/dom/Node;I)V

    iput-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iput p2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/RangeImpl;->getCommonAncestorContainer()Lmf/org/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object p2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, p2, :cond_5

    iget p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    iget p2, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge p1, p2, :cond_5

    :cond_4
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_5
    return-void
.end method

.method public setStartAfter(Lmf/org/w3c/dom/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ranges/RangeException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->hasLegalRootContainer(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->isLegalContainedNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const/4 v0, 0x4

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "WRONG_DOCUMENT_ERR"

    invoke-static {v2, v3, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    const/4 v0, 0x2

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_NODE_TYPE_ERR"

    invoke-static {v2, v3, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const/16 v0, 0xb

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    invoke-static {v2, v3, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    const/4 v0, 0x0

    :goto_1
    if-nez p1, :cond_6

    iput v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/RangeImpl;->getCommonAncestorContainer()Lmf/org/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne p1, v0, :cond_5

    iget p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge p1, v0, :cond_5

    :cond_4
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_5
    return-void

    :cond_6
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_1
.end method

.method public setStartBefore(Lmf/org/w3c/dom/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ranges/RangeException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->hasLegalRootContainer(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->isLegalContainedNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const/4 v0, 0x4

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "WRONG_DOCUMENT_ERR"

    invoke-static {v2, v3, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    const/4 v0, 0x2

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_NODE_TYPE_ERR"

    invoke-static {v2, v3, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const/16 v0, 0xb

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_STATE_ERR"

    invoke-static {v2, v3, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    const/4 v0, 0x0

    :goto_1
    if-nez p1, :cond_6

    const/4 p1, 0x1

    sub-int/2addr v0, p1

    iput v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/RangeImpl;->getCommonAncestorContainer()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v0, v1, :cond_5

    iget v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    iget v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge v0, v1, :cond_5

    :cond_4
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_5
    return-void

    :cond_6
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_1
.end method

.method signalSplitData(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;I)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fSplitNode:Lmf/org/w3c/dom/Node;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/dom/DocumentImpl;->splitData(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fSplitNode:Lmf/org/w3c/dom/Node;

    return-void
.end method

.method public surroundContents(Lmf/org/w3c/dom/Node;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;,
            Lmf/org/w3c/dom/ranges/RangeException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    const/16 v3, 0xb

    if-nez v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v4, 0x6

    if-eq v0, v4, :cond_1

    const/16 v4, 0xc

    if-eq v0, v4, :cond_1

    const/16 v4, 0xa

    if-eq v0, v4, :cond_1

    const/16 v4, 0x9

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    const-string v0, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_NODE_TYPE_ERR"

    invoke-static {v0, v3, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const-string v0, "http://www.w3.org/dom/DOMTR"

    const-string v1, "INVALID_STATE_ERR"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v3, v4, :cond_5

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :cond_5
    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/RangeImpl;->extractContents()Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->insertNode(Lmf/org/w3c/dom/Node;)V

    invoke-interface {p1, v0}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/RangeImpl;->selectNode(Lmf/org/w3c/dom/Node;)V

    return-void

    :cond_6
    new-instance p1, Lmf/org/apache/xerces/dom/RangeExceptionImpl;

    const/4 v0, 0x1

    const-string v1, "http://www.w3.org/dom/DOMTR"

    const-string v3, "BAD_BOUNDARYPOINTS_ERR"

    invoke-static {v1, v3, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lmf/org/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eq v3, v7, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v3, v6, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    iget v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-lez v3, :cond_3

    move-object v3, v0

    move v0, v5

    :goto_0
    iget v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge v0, v8, :cond_2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move-object v0, v3

    :cond_3
    if-nez v0, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v0, v5}, Lmf/org/apache/xerces/dom/RangeImpl;->nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartContainer:Lmf/org/w3c/dom/Node;

    iget-object v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    if-ne v3, v8, :cond_5

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    iget v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    iget v8, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fStartOffset:I

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/RangeImpl;->nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    :cond_6
    :goto_3
    iget-object v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-eq v3, v7, :cond_a

    iget-object v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-eq v3, v6, :cond_a

    iget v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    iget-object v3, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v3

    :goto_4
    if-lez v1, :cond_8

    if-nez v3, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v1, v1, -0x1

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v3

    goto :goto_4

    :cond_8
    :goto_5
    if-nez v3, :cond_9

    iget-object v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v1, v5}, Lmf/org/apache/xerces/dom/RangeImpl;->nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_6

    :cond_9
    move-object v1, v3

    :cond_a
    :goto_6
    if-ne v0, v1, :cond_b

    goto :goto_7

    :cond_b
    if-nez v0, :cond_e

    :goto_7
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-eq v0, v7, :cond_c

    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v6, :cond_d

    :cond_c
    iget-object v0, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndContainer:Lmf/org/w3c/dom/Node;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lmf/org/apache/xerces/dom/RangeImpl;->fEndOffset:I

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-eq v3, v7, :cond_f

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v3, v6, :cond_10

    :cond_f
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/RangeImpl;->nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_6

    :cond_11
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const-string v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "INVALID_STATE_ERR"

    invoke-static {v3, v4, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method
