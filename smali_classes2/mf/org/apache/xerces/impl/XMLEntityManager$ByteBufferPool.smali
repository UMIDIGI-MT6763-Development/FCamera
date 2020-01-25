.class final Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;
.super Ljava/lang/Object;
.source "XMLEntityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteBufferPool"
.end annotation


# static fields
.field private static final DEFAULT_POOL_SIZE:I = 0x3


# instance fields
.field private fBufferSize:I

.field private fByteBufferPool:[[B

.field private fDepth:I

.field private fPoolSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fPoolSize:I

    iput p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fBufferSize:I

    iget p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fPoolSize:I

    new-array p1, p1, [[B

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fByteBufferPool:[[B

    const/4 p1, 0x0

    iput p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fDepth:I

    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fDepth:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fByteBufferPool:[[B

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fDepth:I

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fBufferSize:I

    new-array v0, v0, [B

    :goto_0
    return-object v0
.end method

.method public returnBuffer([B)V
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fByteBufferPool:[[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fDepth:I

    aput-object p1, v1, v0

    :cond_0
    return-void
.end method

.method public setBufferSize(I)V
    .locals 0

    iput p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fBufferSize:I

    iget p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fPoolSize:I

    new-array p1, p1, [[B

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fByteBufferPool:[[B

    const/4 p1, 0x0

    iput p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fDepth:I

    return-void
.end method
