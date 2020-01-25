.class public Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
.super Ljava/lang/Object;
.source "CMStateSet.java"


# instance fields
.field fBitCount:I

.field fBits1:I

.field fBits2:I

.field fByteArray:[B

.field fByteCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    iget p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    if-ltz p1, :cond_2

    const/16 v0, 0x40

    if-le p1, v0, :cond_1

    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteCount:I

    rem-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    iget p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteCount:I

    :cond_0
    iget p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteCount:I

    new-array p1, p1, [B

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->zeroBits()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "ImplementationMessages.VAL_CMSI"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->isSameSet(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)Z

    move-result p1

    return p1
.end method

.method public final getBit(I)Z
    .locals 4

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    if-ge p1, v0, :cond_5

    const/16 v1, 0x41

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_3

    rem-int/lit8 v0, p1, 0x20

    shl-int v0, v3, v0

    const/16 v1, 0x20

    if-ge p1, v1, :cond_1

    iget p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    iget p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v2

    :cond_3
    rem-int/lit8 v0, p1, 0x8

    shl-int v0, v3, v0

    int-to-byte v0, v0

    shr-int/lit8 p1, p1, 0x3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    aget-byte p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_4

    return v3

    :cond_4
    return v2

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "ImplementationMessages.VAL_CMSI"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    const/16 v1, 0x41

    if-ge v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteCount:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gez v1, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    aget-byte v2, v2, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public final intersection(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 4

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    const/16 v1, 0x41

    if-ge v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    iget v1, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    and-int/2addr v0, v1

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    iget p1, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    and-int/2addr p1, v0

    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    goto :goto_1

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    aget-byte v2, v1, v0

    iget-object v3, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    aget-byte v3, v3, v0

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 4

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x41

    if-ge v0, v3, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    if-nez v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteCount:I

    sub-int/2addr v0, v2

    :goto_0
    if-gez v0, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method final isSameSet(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)Z
    .locals 5

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    iget v1, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/16 v1, 0x41

    const/4 v3, 0x1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    iget v1, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    iget p1, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    if-ne v0, p1, :cond_1

    return v3

    :cond_1
    return v2

    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteCount:I

    sub-int/2addr v0, v3

    :goto_0
    if-gez v0, :cond_3

    return v3

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    aget-byte v1, v1, v0

    iget-object v4, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    aget-byte v4, v4, v0

    if-eq v1, v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final setBit(I)V
    .locals 4

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    if-ge p1, v0, :cond_2

    const/16 v1, 0x41

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    rem-int/lit8 v0, p1, 0x20

    shl-int v0, v2, v0

    const/16 v1, 0x20

    if-ge p1, v1, :cond_0

    iget p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    not-int v1, v0

    and-int/2addr p1, v1

    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    iget p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    or-int/2addr p1, v0

    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    not-int v1, v0

    and-int/2addr p1, v1

    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    iget p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    or-int/2addr p1, v0

    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    goto :goto_0

    :cond_1
    rem-int/lit8 v0, p1, 0x8

    shl-int v0, v2, v0

    int-to-byte v0, v0

    shr-int/lit8 p1, p1, 0x3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    aget-byte v2, v1, p1

    not-int v3, v0

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    aget-byte v2, v1, p1

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, p1

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "ImplementationMessages.VAL_CMSI"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setTo(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    iget v1, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    if-ne v0, v1, :cond_2

    const/16 v1, 0x41

    if-ge v0, v1, :cond_0

    iget v0, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    iget p1, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    goto :goto_1

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    iget-object v2, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    aget-byte v2, v2, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "ImplementationMessages.VAL_CMSI"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x7b

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    if-lt v1, v2, :cond_0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 4

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    const/16 v1, 0x41

    if-ge v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    iget v1, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    or-int/2addr v0, v1

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    iget p1, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    or-int/2addr p1, v0

    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    goto :goto_1

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    aget-byte v2, v1, v0

    iget-object v3, p1, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    aget-byte v3, v3, v0

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final zeroBits()V
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBitCount:I

    const/4 v1, 0x0

    const/16 v2, 0x41

    if-ge v0, v2, :cond_0

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits1:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fBits2:I

    goto :goto_1

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->fByteArray:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
