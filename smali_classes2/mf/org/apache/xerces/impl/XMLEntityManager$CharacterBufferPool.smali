.class final Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;
.super Ljava/lang/Object;
.source "XMLEntityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CharacterBufferPool"
.end annotation


# static fields
.field private static final DEFAULT_POOL_SIZE:I = 0x3


# instance fields
.field private fExternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

.field private fExternalBufferSize:I

.field private fExternalTop:I

.field private fInternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

.field private fInternalBufferSize:I

.field private fInternalTop:I

.field private fPoolSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalBufferSize:I

    iput p3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalBufferSize:I

    iput p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fPoolSize:I

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fPoolSize:I

    new-array v1, v0, [Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    new-array v0, v0, [Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalTop:I

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalTop:I

    return-void
.end method


# virtual methods
.method public getBuffer(Z)Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;
    .locals 2

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    iget p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalTop:I

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalTop:I

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance p1, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalBufferSize:I

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;-><init>(ZI)V

    return-object p1

    :cond_1
    iget p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalTop:I

    if-le p1, v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalTop:I

    aget-object p1, v0, p1

    return-object p1

    :cond_2
    new-instance p1, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    const/4 v0, 0x0

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalBufferSize:I

    invoke-direct {p1, v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;-><init>(ZI)V

    return-object p1
.end method

.method public returnBuffer(Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;)V
    .locals 3

    invoke-static {p1}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;->access$1(Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalTop:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalTop:I

    aput-object p1, v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalTop:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fInternalTop:I

    aput-object p1, v1, v0

    :cond_1
    :goto_0
    return-void
.end method

.method public setExternalBufferSize(I)V
    .locals 0

    iput p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalBufferSize:I

    iget p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fPoolSize:I

    new-array p1, p1, [Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalBufferPool:[Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    const/4 p1, -0x1

    iput p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->fExternalTop:I

    return-void
.end method
