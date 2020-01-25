.class final Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
.super Lmf/org/apache/xerces/impl/xpath/regex/Token;
.source "RangeToken.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MAPSIZE:I = 0x100

.field private static final serialVersionUID:J = -0x7b024b6ae8cc53eL


# instance fields
.field compacted:Z

.field icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

.field map:[I

.field nonMapIndex:I

.field ranges:[I

.field sorted:Z


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->map:[I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setSorted(Z)V

    return-void
.end method

.method static complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 11

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Token#complementRanges(): must be RANGE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    check-cast p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v1, v0

    const/4 v2, 0x2

    add-int/2addr v1, v2

    const/4 v3, 0x0

    aget v0, v0, v3

    if-nez v0, :cond_2

    add-int/lit8 v1, v1, -0x2

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget v0, v0, v4

    const v4, 0x10ffff

    if-ne v0, v4, :cond_3

    add-int/lit8 v1, v1, -0x2

    :cond_3
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v6

    new-array v1, v1, [I

    iput-object v1, v6, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v7, v1, v3

    if-lez v7, :cond_4

    iget-object v7, v6, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aput v3, v7, v3

    aget v1, v1, v3

    sub-int/2addr v1, v5

    aput v1, v7, v5

    move v3, v2

    :cond_4
    move v1, v5

    :goto_1
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v8, v7

    sub-int/2addr v8, v2

    if-lt v1, v8, :cond_6

    if-eq v0, v4, :cond_5

    iget-object p0, v6, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v5

    aput v0, p0, v3

    aput v4, p0, v1

    :cond_5
    invoke-direct {v6}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setCompacted()V

    return-object v6

    :cond_6
    iget-object v8, v6, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v3, 0x1

    aget v10, v7, v1

    add-int/2addr v10, v5

    aput v10, v8, v3

    add-int/lit8 v3, v9, 0x1

    add-int/lit8 v10, v1, 0x1

    aget v7, v7, v10

    sub-int/2addr v7, v5

    aput v7, v8, v9

    add-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method private createMap()V
    .locals 10

    const/16 v0, 0x8

    new-array v1, v0, [I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v2, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v0, :cond_5

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v4, v0

    if-lt v3, v4, :cond_0

    goto :goto_5

    :cond_0
    aget v4, v0, v3

    add-int/lit8 v5, v3, 0x1

    aget v0, v0, v5

    const/16 v5, 0x100

    if-ge v4, v5, :cond_4

    :goto_2
    if-gt v4, v0, :cond_2

    if-lt v4, v5, :cond_1

    goto :goto_3

    :cond_1
    div-int/lit8 v6, v4, 0x20

    aget v7, v1, v6

    and-int/lit8 v8, v4, 0x1f

    const/4 v9, 0x1

    shl-int v8, v9, v8

    or-int/2addr v7, v8

    aput v7, v1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-lt v0, v5, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_4
    :goto_4
    move v2, v3

    :goto_5
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->map:[I

    iput v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->nonMapIndex:I

    return-void

    :cond_5
    aput v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static escapeCharInCharClass(I)Ljava/lang/String;
    .locals 3

    sparse-switch p0, :sswitch_data_0

    const/16 v0, 0x20

    if-ge p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :sswitch_1
    const-string p0, "\\e"

    goto :goto_0

    :sswitch_2
    const-string p0, "\\r"

    goto :goto_0

    :sswitch_3
    const-string p0, "\\f"

    goto :goto_0

    :sswitch_4
    const-string p0, "\\n"

    goto :goto_0

    :sswitch_5
    const-string p0, "\\t"

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_5
        0xa -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_2
        0x1b -> :sswitch_1
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x5e -> :sswitch_0
    .end sparse-switch
.end method

.method private final isCompacted()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compacted:Z

    return v0
.end method

.method private final isSorted()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sorted:Z

    return v0
.end method

.method private final setCompacted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compacted:Z

    return-void
.end method

.method private final setSorted(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sorted:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compacted:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected addRange(II)V
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v6, p2

    move p2, p1

    move p1, v6

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aput p1, v0, v1

    aput p2, v0, v2

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setSorted(Z)V

    goto :goto_1

    :cond_1
    array-length v3, v0

    add-int/lit8 v4, v3, -0x1

    aget v5, v0, v4

    add-int/2addr v5, v2

    if-ne v5, p1, :cond_2

    aput p2, v0, v4

    return-void

    :cond_2
    add-int/lit8 v2, v3, 0x2

    new-array v2, v2, [I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v0, v0, v4

    if-lt v0, p1, :cond_3

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setSorted(Z)V

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v1, v3, 0x1

    aput p1, v0, v3

    aput p2, v0, v1

    iget-boolean p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sorted:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected compactRanges()V
    .locals 8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v0, :cond_a

    array-length v0, v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->isCompacted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v4, v3

    if-lt v1, v4, :cond_3

    array-length v1, v3

    if-eq v2, v1, :cond_2

    new-array v1, v2, [I

    invoke-static {v3, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    :cond_2
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setCompacted()V

    return-void

    :cond_3
    if-eq v2, v1, :cond_4

    add-int/lit8 v4, v1, 0x1

    aget v1, v3, v1

    aput v1, v3, v2

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v5, v4, 0x1

    aget v4, v3, v4

    aput v4, v3, v1

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v1, 0x2

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v3, v2, 0x1

    aget v1, v1, v3

    move v4, v1

    move v1, v5

    :goto_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v6, v5

    if-lt v1, v6, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v4, 0x1

    aget v7, v5, v1

    if-ge v6, v7, :cond_6

    :goto_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_6
    aget v7, v5, v1

    if-ne v6, v7, :cond_7

    add-int/lit8 v4, v1, 0x1

    aget v4, v5, v4

    aput v4, v5, v3

    aget v4, v5, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_7
    add-int/lit8 v6, v1, 0x1

    aget v7, v5, v6

    if-lt v4, v7, :cond_8

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_8
    aget v7, v5, v6

    if-ge v4, v7, :cond_9

    aget v4, v5, v6

    aput v4, v5, v3

    aget v4, v5, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Token#compactRanges(): Internel Error: ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v2, v5, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v2, v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] ["

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v1, v2, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v1, v1, v6

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_4
    return-void
.end method

.method dumpRanges()V
    .locals 5

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "RANGE: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, " NULL"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method declared-synchronized getCaseInsensitiveToken()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createNRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v4, v4

    const v5, 0xffff

    if-lt v3, v4, :cond_6

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->type:I

    if-ne v3, v1, :cond_2

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createNRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v1

    :goto_2
    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v3, v3

    if-lt v2, v3, :cond_3

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    invoke-virtual {v1, p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_3
    :try_start_2
    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v2

    :goto_3
    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v2, 0x1

    aget v4, v4, v6

    if-le v3, v4, :cond_4

    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_4
    if-le v3, v5, :cond_5

    invoke-virtual {v1, v3, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    goto :goto_4

    :cond_5
    int-to-char v4, v3

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v1, v4, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v4, v4, v3

    :goto_5
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v3, 0x1

    aget v6, v6, v7

    if-le v4, v6, :cond_7

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_7
    if-le v4, v5, :cond_8

    invoke-virtual {v0, v4, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    goto :goto_6

    :cond_8
    int-to-char v6, v4

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {v0, v6, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected intersectRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 11

    check-cast p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v0, v0

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v6, v5

    if-ge v2, v6, :cond_8

    iget-object v6, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v7, v6

    if-lt v3, v7, :cond_1

    goto/16 :goto_1

    :cond_1
    aget v7, v5, v2

    add-int/lit8 v8, v2, 0x1

    aget v5, v5, v8

    aget v9, v6, v3

    add-int/lit8 v10, v3, 0x1

    aget v6, v6, v10

    if-ge v5, v9, :cond_2

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    if-lt v5, v9, :cond_6

    if-gt v7, v6, :cond_6

    if-gt v9, v7, :cond_3

    if-gt v5, v6, :cond_3

    add-int/lit8 v6, v4, 0x1

    aput v7, v0, v4

    add-int/lit8 v4, v6, 0x1

    aput v5, v0, v6

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    if-gt v9, v7, :cond_4

    add-int/lit8 v5, v4, 0x1

    aput v7, v0, v4

    add-int/lit8 v4, v5, 0x1

    aput v6, v0, v5

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v2

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_4
    if-gt v5, v6, :cond_5

    add-int/lit8 v6, v4, 0x1

    aput v9, v0, v4

    add-int/lit8 v4, v6, 0x1

    aput v5, v0, v6

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_5
    add-int/lit8 v5, v4, 0x1

    aput v9, v0, v4

    add-int/lit8 v4, v5, 0x1

    aput v6, v0, v5

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v2

    goto :goto_0

    :cond_6
    if-ge v6, v7, :cond_7

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Token#intersectRanges(): Internal Error: ["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] & ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget p1, p1, v10

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_1
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v3, p1

    if-lt v2, v3, :cond_9

    new-array p1, v4, [I

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    invoke-static {v0, v1, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_9
    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v5, v2, 0x1

    aget v2, p1, v2

    aput v2, v0, v4

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v2, v5, 0x1

    aget p1, p1, v5

    aput p1, v0, v3

    goto :goto_1

    :cond_a
    :goto_2
    return-void
.end method

.method match(I)Z
    .locals 5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->map:[I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->createMap()V

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->type:I

    const/4 v1, 0x4

    const/16 v2, 0x100

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_5

    if-ge p1, v2, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->map:[I

    div-int/lit8 v1, p1, 0x20

    aget v0, v0, v1

    and-int/lit8 p1, p1, 0x1f

    shl-int p1, v4, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    return v4

    :cond_1
    return v3

    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->nonMapIndex:I

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v2, v1

    if-lt v0, v2, :cond_3

    goto :goto_2

    :cond_3
    aget v2, v1, v0

    if-gt v2, p1, :cond_4

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    if-gt p1, v1, :cond_4

    return v4

    :cond_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_5
    if-ge p1, v2, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->map:[I

    div-int/lit8 v1, p1, 0x20

    aget v0, v0, v1

    and-int/lit8 p1, p1, 0x1f

    shl-int p1, v4, p1

    and-int/2addr p1, v0

    if-nez p1, :cond_6

    return v4

    :cond_6
    return v3

    :cond_7
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->nonMapIndex:I

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v2, v1

    if-lt v0, v2, :cond_8

    move v3, v4

    :goto_2
    return v3

    :cond_8
    aget v2, v1, v0

    if-gt v2, p1, :cond_9

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    if-gt p1, v1, :cond_9

    return v3

    :cond_9
    add-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method protected mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 8

    check-cast p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setSorted(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    array-length v0, v0

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v2, v2

    add-int/2addr v0, v2

    new-array v0, v0, [I

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v4, v4

    if-lt v1, v4, :cond_2

    iget-object v4, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v4, v4

    if-lt v2, v4, :cond_2

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    return-void

    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v5, v4

    if-lt v1, v5, :cond_3

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v2, 0x1

    aget v2, v5, v2

    aput v2, v0, v3

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v2, v6, 0x1

    aget v5, v5, v6

    aput v5, v0, v4

    goto :goto_0

    :cond_3
    iget-object v5, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v6, v5

    if-lt v2, v6, :cond_4

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v1, 0x1

    aget v1, v4, v1

    aput v1, v0, v3

    add-int/lit8 v3, v5, 0x1

    add-int/lit8 v1, v6, 0x1

    aget v4, v4, v6

    aput v4, v0, v5

    goto :goto_0

    :cond_4
    aget v6, v5, v2

    aget v7, v4, v1

    if-lt v6, v7, :cond_6

    aget v6, v5, v2

    aget v7, v4, v1

    if-ne v6, v7, :cond_5

    add-int/lit8 v6, v2, 0x1

    aget v5, v5, v6

    add-int/lit8 v6, v1, 0x1

    aget v4, v4, v6

    if-ge v5, v4, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v1, 0x1

    aget v1, v5, v1

    aput v1, v0, v3

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v1, v6, 0x1

    aget v5, v5, v6

    aput v5, v0, v4

    goto :goto_0

    :cond_6
    :goto_1
    add-int/lit8 v4, v3, 0x1

    iget-object v5, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v2, 0x1

    aget v2, v5, v2

    aput v2, v0, v3

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v2, v6, 0x1

    aget v5, v5, v6

    aput v5, v0, v4

    goto :goto_0
.end method

.method protected sortRanges()V
    .locals 7

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->isSorted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-nez v0, :cond_1

    return-void

    :cond_1
    array-length v0, v0

    add-int/lit8 v0, v0, -0x4

    :goto_0
    if-gez v0, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setSorted(Z)V

    return-void

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-le v1, v0, :cond_3

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v2, v1

    add-int/lit8 v4, v1, 0x2

    aget v5, v2, v4

    if-gt v3, v5, :cond_4

    aget v3, v2, v1

    aget v5, v2, v4

    if-ne v3, v5, :cond_5

    add-int/lit8 v3, v1, 0x1

    aget v3, v2, v3

    add-int/lit8 v5, v1, 0x3

    aget v2, v2, v5

    if-le v3, v2, :cond_5

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v2, v4

    aget v5, v2, v1

    aput v5, v2, v4

    aput v3, v2, v1

    add-int/lit8 v3, v1, 0x3

    aget v5, v2, v3

    add-int/lit8 v1, v1, 0x1

    aget v6, v2, v1

    aput v6, v2, v3

    aput v5, v2, v1

    :cond_5
    move v1, v4

    goto :goto_1
.end method

.method protected subtractRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 12

    iget v0, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->intersectRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    return-void

    :cond_0
    check-cast p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v0, v0

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v6, v5

    if-ge v2, v6, :cond_9

    iget-object v6, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v7, v6

    if-lt v3, v7, :cond_2

    goto/16 :goto_1

    :cond_2
    aget v7, v5, v2

    add-int/lit8 v8, v2, 0x1

    aget v9, v5, v8

    aget v10, v6, v3

    add-int/lit8 v11, v3, 0x1

    aget v6, v6, v11

    if-ge v9, v10, :cond_3

    add-int/lit8 v6, v4, 0x1

    aget v2, v5, v2

    aput v2, v0, v4

    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v2, v8, 0x1

    aget v5, v5, v8

    aput v5, v0, v6

    goto :goto_0

    :cond_3
    if-lt v9, v10, :cond_7

    if-gt v7, v6, :cond_7

    if-gt v10, v7, :cond_4

    if-gt v9, v6, :cond_4

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_4
    if-gt v10, v7, :cond_5

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v2

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_5
    if-gt v9, v6, :cond_6

    add-int/lit8 v5, v4, 0x1

    aput v7, v0, v4

    add-int/lit8 v4, v5, 0x1

    add-int/lit8 v10, v10, -0x1

    aput v10, v0, v5

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_6
    add-int/lit8 v5, v4, 0x1

    aput v7, v0, v4

    add-int/lit8 v4, v5, 0x1

    add-int/lit8 v10, v10, -0x1

    aput v10, v0, v5

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v2

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_7
    if-ge v6, v7, :cond_8

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Token#subtractRanges(): Internal Error: ["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] - ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget p1, p1, v11

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_1
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v3, p1

    if-lt v2, v3, :cond_a

    new-array p1, v4, [I

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    invoke-static {v0, v1, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_a
    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v5, v2, 0x1

    aget v2, p1, v2

    aput v2, v0, v4

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v2, v5, 0x1

    aget p1, p1, v5

    aput p1, v0, v3

    goto :goto_1

    :cond_b
    :goto_2
    return-void
.end method

.method public toString(I)Ljava/lang/String;
    .locals 9

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->type:I

    const/16 v1, 0x2c

    const/16 v2, 0x2d

    const/16 v3, 0x5d

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_7

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_dot:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne p0, v0, :cond_0

    const-string p1, "."

    goto/16 :goto_3

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne p0, v0, :cond_1

    const-string p1, "\\d"

    goto/16 :goto_3

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne p0, v0, :cond_2

    const-string p1, "\\w"

    goto/16 :goto_3

    :cond_2
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne p0, v0, :cond_3

    const-string p1, "\\s"

    goto/16 :goto_3

    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v5, 0x5b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v5, v5

    if-lt v4, v5, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    and-int/lit16 v5, p1, 0x400

    if-eqz v5, :cond_5

    if-lez v4, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v6, v5, v4

    add-int/lit8 v7, v4, 0x1

    aget v8, v5, v7

    if-ne v6, v8, :cond_6

    aget v5, v5, v4

    invoke-static {v5}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    aget v5, v5, v4

    invoke-static {v5}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v5, v5, v7

    invoke-static {v5}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_7
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne p0, v0, :cond_8

    const-string p1, "\\D"

    goto :goto_3

    :cond_8
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne p0, v0, :cond_9

    const-string p1, "\\W"

    goto :goto_3

    :cond_9
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne p0, v0, :cond_a

    const-string p1, "\\S"

    goto :goto_3

    :cond_a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "[^"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v5, v5

    if-lt v4, v5, :cond_b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    return-object p1

    :cond_b
    and-int/lit16 v5, p1, 0x400

    if-eqz v5, :cond_c

    if-lez v4, :cond_c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_c
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v6, v5, v4

    add-int/lit8 v7, v4, 0x1

    aget v8, v5, v7

    if-ne v6, v8, :cond_d

    aget v5, v5, v4

    invoke-static {v5}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_d
    aget v5, v5, v4

    invoke-static {v5}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v5, v5, v7

    invoke-static {v5}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v4, v4, 0x2

    goto :goto_2
.end method
