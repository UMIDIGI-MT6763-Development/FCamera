.class final Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;
.super Ljava/lang/Object;
.source "FloatDV.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/datatypes/XSFloat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/xs/FloatDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XFloat"
.end annotation


# instance fields
.field private canonical:Ljava/lang/String;

.field private final value:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV;->isPossibleFP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    goto :goto_0

    :cond_0
    const-string v0, "INF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 p1, 0x7f800000    # Float.POSITIVE_INFINITY

    iput p1, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    goto :goto_0

    :cond_1
    const-string v0, "-INF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 p1, -0x800000    # Float.NEGATIVE_INFINITY

    iput p1, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    goto :goto_0

    :cond_2
    const-string v0, "NaN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;)I
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->compareTo(Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;)I

    move-result p0

    return p0
.end method

.method private compareTo(Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;)I
    .locals 3

    iget p1, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    cmpl-float v1, v0, p1

    if-lez v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    cmpl-float v1, v0, p1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    cmpl-float v0, v0, v0

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    cmpl-float p1, p1, p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget p1, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v3, v1, p1

    if-nez v3, :cond_2

    return v0

    :cond_2
    cmpl-float v1, v1, v1

    if-eqz v1, :cond_3

    cmpl-float p1, p1, p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public getValue()F
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    :goto_0
    return v0
.end method

.method public isIdentical(Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v3, v1, v2

    const/4 v4, 0x0

    if-nez v3, :cond_2

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget p1, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    if-eq v1, p1, :cond_1

    return v4

    :cond_1
    return v0

    :cond_2
    cmpl-float p1, v1, v1

    if-eqz p1, :cond_3

    cmpl-float p1, v2, v2

    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v4
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    if-nez v0, :cond_d

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const-string v0, "INF"

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    goto/16 :goto_7

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const-string v0, "-INF"

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    goto/16 :goto_7

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    const-string v0, "NaN"

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    goto/16 :goto_7

    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    const-string v0, "0.0E1"

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    goto/16 :goto_7

    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, 0x3

    new-array v2, v2, [C

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    aget-char v3, v2, v4

    const/16 v5, 0x2d

    if-ne v3, v5, :cond_4

    const/4 v3, 0x2

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    :goto_0
    iget v6, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    const/16 v7, 0x2e

    const/16 v8, 0x30

    if-gez v6, :cond_9

    iget v6, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/high16 v9, -0x40800000    # -1.0f

    cmpg-float v6, v6, v9

    if-gtz v6, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v3, 0x1

    move v9, v6

    :goto_1
    aget-char v10, v2, v9

    if-eq v10, v8, :cond_8

    add-int/lit8 v10, v3, -0x1

    aget-char v11, v2, v9

    aput-char v11, v2, v10

    aput-char v7, v2, v3

    add-int/lit8 v7, v9, 0x1

    move v10, v6

    :goto_2
    if-lt v7, v0, :cond_7

    sub-int/2addr v9, v3

    sub-int/2addr v0, v9

    if-ne v0, v6, :cond_6

    add-int/lit8 v3, v0, 0x1

    aput-char v8, v2, v0

    move v0, v3

    :cond_6
    add-int/lit8 v3, v0, 0x1

    aput-char v1, v2, v0

    add-int/lit8 v0, v3, 0x1

    aput-char v5, v2, v3

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v9, v8

    int-to-char v3, v9

    aput-char v3, v2, v0

    goto :goto_6

    :cond_7
    aget-char v11, v2, v7

    aput-char v11, v2, v10

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_9
    :goto_3
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    move v6, v5

    :goto_4
    if-gt v6, v3, :cond_c

    aput-char v7, v2, v3

    :goto_5
    add-int/lit8 v6, v0, -0x1

    aget-char v9, v2, v6

    if-eq v9, v8, :cond_b

    aget-char v6, v2, v6

    if-ne v6, v7, :cond_a

    add-int/lit8 v0, v0, 0x1

    :cond_a
    add-int/lit8 v6, v0, 0x1

    aput-char v1, v2, v0

    sub-int/2addr v5, v3

    add-int/lit8 v1, v6, 0x1

    add-int/2addr v5, v8

    int-to-char v0, v5

    aput-char v0, v2, v6

    :goto_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v4, v1}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    goto :goto_7

    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_c
    add-int/lit8 v9, v6, -0x1

    aget-char v9, v2, v9

    aput-char v9, v2, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_d
    :goto_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
