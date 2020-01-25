.class final Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;
.super Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
.source "BalancedDTDGrammar.java"


# instance fields
.field private fDepth:I

.field private fGroupIndexStack:[[I

.field private fGroupIndexStackSizes:[I

.field private fMixed:Z

.field private fOpStack:[S


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;)V

    const/4 p1, 0x0

    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    return-void
.end method

.method private addContentSpecNodes(II)I
    .locals 3

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-object p2, p2, v0

    aget p1, p2, p1

    return p1

    :cond_0
    add-int v0, p1, p2

    ushr-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-short v1, v1, v2

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNodes(II)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p2}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNodes(II)I

    move-result p2

    invoke-virtual {p0, v1, p1, p2}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNode(SII)I

    move-result p1

    return p1
.end method

.method private addToCurrentGroup(I)V
    .locals 6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-object v2, v0, v1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    aget v4, v3, v1

    add-int/lit8 v5, v4, 0x1

    aput v5, v3, v1

    if-nez v2, :cond_0

    const/16 v2, 0x8

    new-array v2, v2, [I

    aput-object v2, v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v2

    if-ne v4, v0, :cond_1

    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    array-length v1, v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aput-object v0, v1, v2

    move-object v2, v0

    :cond_1
    :goto_0
    aput p1, v2, v4

    return-void
.end method

.method private initializeContentModelStacks()V
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    new-array v2, v0, [S

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    new-array v2, v0, [[I

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    goto :goto_0

    :cond_0
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    array-length v3, v0

    if-ne v2, v3, :cond_1

    mul-int/lit8 v3, v2, 0x2

    new-array v3, v3, [S

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [[I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    :cond_1
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    const/4 v3, -0x1

    aput-short v3, v0, v2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    aput v1, v0, v2

    return-void
.end method


# virtual methods
.method protected final addContentSpecToElement(Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;)V
    .locals 1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    aget-object p1, p1, v0

    aget p1, p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fCurrentElementIndex:I

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->setContentSpecIndex(II)V

    return-void
.end method

.method public final element(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addUniqueLeafNode(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addToCurrentGroup(I)V

    return-void
.end method

.method public final endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    return-void
.end method

.method public final endGroup(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget p1, p1, v0

    if-lez p1, :cond_0

    const/4 v0, 0x0

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNodes(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addUniqueLeafNode(Ljava/lang/String;)I

    move-result p1

    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addToCurrentGroup(I)V

    return-void
.end method

.method public final occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean p2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fMixed:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget p2, p2, v0

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    aget-object v2, p1, v0

    aget-object p1, p1, v0

    aget p1, p1, p2

    invoke-virtual {p0, v1, p1, v3}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNode(SII)I

    move-result p1

    aput p1, v2, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    aget-object v1, p1, v0

    aget-object p1, p1, v0

    aget p1, p1, p2

    invoke-virtual {p0, v2, p1, v3}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNode(SII)I

    move-result p1

    aput p1, v1, p2

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    aget-object v2, p1, v0

    aget-object p1, p1, v0

    aget p1, p1, p2

    invoke-virtual {p0, v1, p1, v3}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNode(SII)I

    move-result p1

    aput p1, v2, p2

    :cond_2
    :goto_0
    return-void
.end method

.method public final pcdata(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fMixed:Z

    return-void
.end method

.method public final separator(SLmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    iget p2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    const/4 v0, 0x4

    aput-short v0, p1, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    iget p2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    const/4 v0, 0x5

    aput-short v0, p1, p2

    :cond_1
    :goto_0
    return-void
.end method

.method public final startContentModel(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->initializeContentModelStacks()V

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->startContentModel(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public final startGroup(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget p1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->initializeContentModelStacks()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fMixed:Z

    return-void
.end method
