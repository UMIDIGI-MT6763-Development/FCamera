.class public Lcom/badlogic/gdx/utils/CharArray;
.super Ljava/lang/Object;
.source "CharArray.java"


# instance fields
.field public items:[C

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/CharArray;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/CharArray;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/CharArray;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/CharArray;->ordered:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/CharArray;->ordered:Z

    iget v0, p1, Lcom/badlogic/gdx/utils/CharArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    new-array v1, v0, [C

    iput-object v1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget-object p1, p1, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget-object v1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/CharArray;->ordered:Z

    new-array p1, p2, [C

    iput-object p1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    return-void
.end method

.method public constructor <init>(Z[CII)V
    .locals 1

    invoke-direct {p0, p1, p4}, Lcom/badlogic/gdx/utils/CharArray;-><init>(ZI)V

    iput p4, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    iget-object p1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    const/4 v0, 0x0

    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([C)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/badlogic/gdx/utils/CharArray;-><init>(Z[CII)V

    return-void
.end method

.method public static varargs with([C)Lcom/badlogic/gdx/utils/CharArray;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/CharArray;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/CharArray;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public add(C)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/CharArray;->resize(I)[C

    move-result-object v0

    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    aput-char p1, v0, v1

    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/CharArray;)V
    .locals 2

    iget v0, p1, Lcom/badlogic/gdx/utils/CharArray;->size:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/CharArray;->addAll(Lcom/badlogic/gdx/utils/CharArray;II)V

    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/CharArray;II)V
    .locals 3

    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-gt v0, v1, :cond_0

    iget-object p1, p1, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/CharArray;->addAll([CII)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset + length must be <= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " + "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " <= "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs addAll([C)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/CharArray;->addAll([CII)V

    return-void
.end method

.method public addAll([CII)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/2addr v1, p3

    array-length v2, v0

    if-le v1, v2, :cond_0

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/CharArray;->resize(I)[C

    move-result-object v0

    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    return-void
.end method

.method public contains(C)Z
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    :goto_0
    if-ltz v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    aget-char v0, v2, v0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public ensureCapacity(I)[C
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    array-length p1, p1

    if-le v0, p1, :cond_0

    const/16 p1, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/CharArray;->resize(I)[C

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/CharArray;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/badlogic/gdx/utils/CharArray;

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    iget v3, p1, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    iget-object v4, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    aget-char v4, v4, v3

    iget-object v5, p1, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    aget-char v5, v5, v3

    if-eq v4, v5, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public first()C
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)C
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    aget-char p1, v0, p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public incr(IC)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    aget-char v1, v0, p1

    add-int/2addr v1, p2

    int-to-char p2, v1

    aput-char p2, v0, p1

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be >= size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public indexOf(C)I
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, v0, v2

    if-ne v3, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public insert(IC)V
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-gt p1, v0, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    array-length v2, v1

    if-ne v0, v2, :cond_0

    const/16 v1, 0x8

    int-to-float v0, v0

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/CharArray;->resize(I)[C

    move-result-object v1

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/CharArray;->ordered:Z

    if-eqz v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    aget-char v2, v1, p1

    aput-char v2, v1, v0

    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    aput-char p2, v1, p1

    return-void

    :cond_2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be > size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public lastIndexOf(C)I
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    aget-char v2, v0, v1

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public mul(IC)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    aget-char v1, v0, p1

    mul-int/2addr v1, p2

    int-to-char p2, v1

    aput-char p2, v0, p1

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be >= size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public peek()C
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    return v0
.end method

.method public pop()C
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    aget-char v0, v0, v1

    return v0
.end method

.method public random()C
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    aget-char v0, v2, v0

    return v0
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/CharArray;)Z
    .locals 9

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget v2, p1, Lcom/badlogic/gdx/utils/CharArray;->size:I

    const/4 v3, 0x0

    move v5, v0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/utils/CharArray;->get(I)C

    move-result v6

    move v7, v3

    :goto_1
    if-ge v7, v5, :cond_1

    aget-char v8, v1, v7

    if-ne v6, v8, :cond_0

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/utils/CharArray;->removeIndex(I)C

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eq v5, v0, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3
.end method

.method public removeIndex(I)C
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-ge p1, v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    aget-char v2, v1, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/CharArray;->ordered:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, v0, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    aget-char v0, v1, v0

    aput-char v0, v1, p1

    :goto_0
    return v2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeRange(II)V
    .locals 5

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-ge p2, v0, :cond_3

    if-gt p1, p2, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/CharArray;->ordered:Z

    if-eqz v2, :cond_0

    add-int v2, p1, p2

    sub-int/2addr v0, v2

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    add-int v3, p1, v2

    sub-int v4, v0, v2

    aget-char v4, v1, v4

    aput-char v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget p1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start can\'t be > end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end can\'t be >= size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " >= "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeValue(C)Z
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-char v4, v0, v3

    if-ne v4, p1, :cond_0

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/CharArray;->removeIndex(I)C

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method protected resize(I)[C
    .locals 3

    new-array p1, p1, [C

    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    return-object p1
.end method

.method public reverse()V
    .locals 7

    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/lit8 v2, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    sub-int v4, v2, v3

    aget-char v5, v0, v3

    aget-char v6, v0, v4

    aput-char v6, v0, v3

    aput-char v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public set(IC)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    aput-char p2, v0, p1

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be >= size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public shrink()[C
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/CharArray;->resize(I)[C

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    return-object v0
.end method

.method public shuffle()V
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v2

    aget-char v3, v0, v1

    aget-char v4, v0, v2

    aput-char v4, v0, v1

    aput-char v3, v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sort()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->sort([CII)V

    return-void
.end method

.method public swap(II)V
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-ge p1, v0, :cond_1

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    aget-char v1, v0, p1

    aget-char v2, v0, p2

    aput-char v2, v0, p1

    aput-char v1, v0, p2

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "second can\'t be >= size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " >= "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "first can\'t be >= size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public toArray()[C
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    new-array v1, v0, [C

    iget-object v2, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v2, 0x0

    aget-char v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v2, 0x1

    :goto_0
    iget v3, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-ge v2, v3, :cond_1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    aget-char v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/CharArray;->items:[C

    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    aget-char v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v2, 0x1

    :goto_0
    iget v3, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    aget-char v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public truncate(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    if-le v0, p1, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/utils/CharArray;->size:I

    :cond_0
    return-void
.end method
