.class public Lcom/badlogic/gdx/math/ConvexHull;
.super Ljava/lang/Object;
.source "ConvexHull.java"


# instance fields
.field private final hull:Lcom/badlogic/gdx/utils/FloatArray;

.field private final indices:Lcom/badlogic/gdx/utils/IntArray;

.field private final originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

.field private final quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

.field private sortedPoints:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->hull:Lcom/badlogic/gdx/utils/FloatArray;

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->indices:Lcom/badlogic/gdx/utils/IntArray;

    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/utils/ShortArray;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    return-void
.end method

.method private ccw(FF)F
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->hull:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v2, v1, -0x4

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    add-int/lit8 v3, v1, -0x3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v3

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->peek()F

    move-result v0

    sub-float/2addr v1, v2

    sub-float/2addr p2, v3

    mul-float/2addr v1, p2

    sub-float/2addr v0, v3

    sub-float/2addr p1, v2

    mul-float/2addr v0, p1

    sub-float/2addr v1, v0

    return v1
.end method

.method private quicksortPartition([FII)I
    .locals 8

    aget v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget v2, p1, v1

    move v3, p3

    move p3, p2

    :cond_0
    :goto_0
    if-ge p3, v3, :cond_4

    :goto_1
    if-ge p3, v3, :cond_1

    aget v4, p1, p3

    cmpg-float v4, v4, v0

    if-gtz v4, :cond_1

    add-int/lit8 p3, p3, 0x2

    goto :goto_1

    :cond_1
    :goto_2
    aget v4, p1, v3

    cmpl-float v4, v4, v0

    if-gtz v4, :cond_3

    aget v4, p1, v3

    cmpl-float v4, v4, v0

    if-nez v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    aget v4, p1, v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_2

    goto :goto_3

    :cond_2
    if-ge p3, v3, :cond_0

    aget v4, p1, p3

    aget v5, p1, v3

    aput v5, p1, p3

    aput v4, p1, v3

    add-int/lit8 v4, p3, 0x1

    aget v5, p1, v4

    add-int/lit8 v6, v3, 0x1

    aget v7, p1, v6

    aput v7, p1, v4

    aput v5, p1, v6

    goto :goto_0

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, -0x2

    goto :goto_2

    :cond_4
    aget p3, p1, v3

    aput p3, p1, p2

    aput v0, p1, v3

    add-int/lit8 p2, v3, 0x1

    aget p3, p1, p2

    aput p3, p1, v1

    aput v2, p1, p2

    return v3
.end method

.method private quicksortPartitionWithIndices([FIIZ[S)I
    .locals 8

    aget v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget v2, p1, v1

    move v3, p3

    move p3, p2

    :cond_0
    :goto_0
    if-ge p3, v3, :cond_6

    :goto_1
    if-ge p3, v3, :cond_1

    aget v4, p1, p3

    cmpg-float v4, v4, v0

    if-gtz v4, :cond_1

    add-int/lit8 p3, p3, 0x2

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_3

    :goto_2
    aget v4, p1, v3

    cmpl-float v4, v4, v0

    if-gtz v4, :cond_2

    aget v4, p1, v3

    cmpl-float v4, v4, v0

    if-nez v4, :cond_4

    add-int/lit8 v4, v3, 0x1

    aget v4, p1, v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_4

    :cond_2
    add-int/lit8 v3, v3, -0x2

    goto :goto_2

    :cond_3
    :goto_3
    aget v4, p1, v3

    cmpl-float v4, v4, v0

    if-gtz v4, :cond_5

    aget v4, p1, v3

    cmpl-float v4, v4, v0

    if-nez v4, :cond_4

    add-int/lit8 v4, v3, 0x1

    aget v4, p1, v4

    cmpl-float v4, v4, v2

    if-lez v4, :cond_4

    goto :goto_4

    :cond_4
    if-ge p3, v3, :cond_0

    aget v4, p1, p3

    aget v5, p1, v3

    aput v5, p1, p3

    aput v4, p1, v3

    add-int/lit8 v4, p3, 0x1

    aget v5, p1, v4

    add-int/lit8 v6, v3, 0x1

    aget v7, p1, v6

    aput v7, p1, v4

    aput v5, p1, v6

    div-int/lit8 v4, p3, 0x2

    aget-short v5, p5, v4

    div-int/lit8 v6, v3, 0x2

    aget-short v7, p5, v6

    aput-short v7, p5, v4

    aput-short v5, p5, v6

    goto :goto_0

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, -0x2

    goto :goto_3

    :cond_6
    aget p3, p1, v3

    aput p3, p1, p2

    aput v0, p1, v3

    add-int/lit8 p3, v3, 0x1

    aget p4, p1, p3

    aput p4, p1, v1

    aput v2, p1, p3

    div-int/lit8 p2, p2, 0x2

    aget-short p1, p5, p2

    div-int/lit8 p3, v3, 0x2

    aget-short p4, p5, p3

    aput-short p4, p5, p2

    aput-short p1, p5, p3

    return v3
.end method

.method private sort([FI)V
    .locals 6

    add-int/lit8 p2, p2, -0x1

    iget-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    :cond_0
    :goto_0
    iget p2, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lez p2, :cond_3

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result p2

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result v1

    if-gt p2, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v1, p2}, Lcom/badlogic/gdx/math/ConvexHull;->quicksortPartition([FII)I

    move-result v2

    sub-int v3, v2, v1

    sub-int v4, p2, v2

    if-le v3, v4, :cond_2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    add-int/lit8 v5, v2, -0x2

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    :cond_2
    add-int/lit8 v5, v2, 0x2

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    if-lt v4, v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private sortWithIndices([FIZ)V
    .locals 9

    div-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    aput-short v3, v1, v3

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    iget-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    :cond_1
    :goto_1
    iget p2, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lez p2, :cond_4

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result p2

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result v8

    if-gt p2, v8, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, p0

    move-object v3, p1

    move v4, v8

    move v5, p2

    move v6, p3

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/math/ConvexHull;->quicksortPartitionWithIndices([FIIZ[S)I

    move-result v2

    sub-int v3, v2, v8

    sub-int v4, p2, v2

    if-le v3, v4, :cond_3

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    add-int/lit8 v5, v2, -0x2

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    :cond_3
    add-int/lit8 v5, v2, 0x2

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    if-lt v4, v3, :cond_1

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public computeIndices(Lcom/badlogic/gdx/utils/FloatArray;ZZ)Lcom/badlogic/gdx/utils/IntArray;
    .locals 6

    iget-object v1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v3, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v2, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/math/ConvexHull;->computeIndices([FIIZZ)Lcom/badlogic/gdx/utils/IntArray;

    move-result-object p1

    return-object p1
.end method

.method public computeIndices([FIIZZ)Lcom/badlogic/gdx/utils/IntArray;
    .locals 9

    add-int v0, p2, p3

    const/4 v1, 0x0

    if-nez p4, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    if-eqz v2, :cond_0

    array-length v2, v2

    if-ge v2, p3, :cond_1

    :cond_0
    new-array v2, p3, [F

    iput-object v2, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    invoke-direct {p0, p1, p3, p5}, Lcom/badlogic/gdx/math/ConvexHull;->sortWithIndices([FIZ)V

    move p2, v1

    :cond_2
    iget-object p3, p0, Lcom/badlogic/gdx/math/ConvexHull;->indices:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    iget-object p5, p0, Lcom/badlogic/gdx/math/ConvexHull;->hull:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {p5}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    div-int/lit8 v2, p2, 0x2

    move v3, v2

    move v2, p2

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x4

    if-ge v2, v0, :cond_4

    aget v6, p1, v2

    add-int/lit8 v7, v2, 0x1

    aget v7, p1, v7

    :goto_1
    iget v8, p5, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lt v8, v5, :cond_3

    invoke-direct {p0, v6, v7}, Lcom/badlogic/gdx/math/ConvexHull;->ccw(FF)F

    move-result v8

    cmpg-float v8, v8, v4

    if-gtz v8, :cond_3

    iget v8, p5, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v8, v8, -0x2

    iput v8, p5, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget v8, p3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    goto :goto_1

    :cond_3
    invoke-virtual {p5, v6}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    invoke-virtual {p5, v7}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    invoke-virtual {p3, v3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    sub-int/2addr v0, v5

    div-int/lit8 v2, v0, 0x2

    iget v3, p5, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v3, v3, 0x2

    :goto_2
    if-lt v0, p2, :cond_6

    aget v5, p1, v0

    add-int/lit8 v6, v0, 0x1

    aget v6, p1, v6

    :goto_3
    iget v7, p5, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lt v7, v3, :cond_5

    invoke-direct {p0, v5, v6}, Lcom/badlogic/gdx/math/ConvexHull;->ccw(FF)F

    move-result v7

    cmpg-float v7, v7, v4

    if-gtz v7, :cond_5

    iget v7, p5, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v7, v7, -0x2

    iput v7, p5, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget v7, p3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    goto :goto_3

    :cond_5
    invoke-virtual {p5, v5}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    invoke-virtual {p5, v6}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    add-int/lit8 v0, v0, -0x2

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_6
    if-nez p4, :cond_7

    iget-object p1, p0, Lcom/badlogic/gdx/math/ConvexHull;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget-object p2, p3, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget p4, p3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    :goto_4
    if-ge v1, p4, :cond_7

    aget p5, p2, v1

    aget-short p5, p1, p5

    aput p5, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return-object p3
.end method

.method public computeIndices([FZZ)Lcom/badlogic/gdx/utils/IntArray;
    .locals 6

    array-length v3, p1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/math/ConvexHull;->computeIndices([FIIZZ)Lcom/badlogic/gdx/utils/IntArray;

    move-result-object p1

    return-object p1
.end method

.method public computePolygon(Lcom/badlogic/gdx/utils/FloatArray;Z)Lcom/badlogic/gdx/utils/FloatArray;
    .locals 2

    iget-object v0, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/math/ConvexHull;->computePolygon([FIIZ)Lcom/badlogic/gdx/utils/FloatArray;

    move-result-object p1

    return-object p1
.end method

.method public computePolygon([FIIZ)Lcom/badlogic/gdx/utils/FloatArray;
    .locals 6

    add-int v0, p2, p3

    const/4 v1, 0x0

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    if-eqz p4, :cond_0

    array-length p4, p4

    if-ge p4, p3, :cond_1

    :cond_0
    new-array p4, p3, [F

    iput-object p4, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    :cond_1
    iget-object p4, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    invoke-static {p1, p2, p4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    invoke-direct {p0, p1, p3}, Lcom/badlogic/gdx/math/ConvexHull;->sort([FI)V

    move p2, v1

    :cond_2
    iget-object p3, p0, Lcom/badlogic/gdx/math/ConvexHull;->hull:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    move p4, p2

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge p4, v0, :cond_4

    aget v3, p1, p4

    add-int/lit8 v4, p4, 0x1

    aget v4, p1, v4

    :goto_1
    iget v5, p3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lt v5, v2, :cond_3

    invoke-direct {p0, v3, v4}, Lcom/badlogic/gdx/math/ConvexHull;->ccw(FF)F

    move-result v5

    cmpg-float v5, v5, v1

    if-gtz v5, :cond_3

    iget v5, p3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v5, v5, -0x2

    iput v5, p3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    goto :goto_1

    :cond_3
    invoke-virtual {p3, v3}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    invoke-virtual {p3, v4}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    add-int/lit8 p4, p4, 0x2

    goto :goto_0

    :cond_4
    sub-int/2addr v0, v2

    iget p4, p3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 p4, p4, 0x2

    :goto_2
    if-lt v0, p2, :cond_6

    aget v2, p1, v0

    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    :goto_3
    iget v4, p3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lt v4, p4, :cond_5

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/math/ConvexHull;->ccw(FF)F

    move-result v4

    cmpg-float v4, v4, v1

    if-gtz v4, :cond_5

    iget v4, p3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v4, v4, -0x2

    iput v4, p3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    goto :goto_3

    :cond_5
    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    invoke-virtual {p3, v3}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    add-int/lit8 v0, v0, -0x2

    goto :goto_2

    :cond_6
    return-object p3
.end method

.method public computePolygon([FZ)Lcom/badlogic/gdx/utils/FloatArray;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/badlogic/gdx/math/ConvexHull;->computePolygon([FIIZ)Lcom/badlogic/gdx/utils/FloatArray;

    move-result-object p1

    return-object p1
.end method
