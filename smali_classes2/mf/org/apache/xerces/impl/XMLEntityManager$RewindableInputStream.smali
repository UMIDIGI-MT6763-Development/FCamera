.class public final Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;
.super Ljava/io/InputStream;
.source "XMLEntityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "RewindableInputStream"
.end annotation


# instance fields
.field private fData:[B

.field private fEndOffset:I

.field private fInputStream:Ljava/io/InputStream;

.field private fLength:I

.field private fMark:I

.field private fOffset:I

.field private fStartOffset:I

.field final synthetic this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/XMLEntityManager;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 p1, 0x40

    new-array p1, p1, [B

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    const/4 p1, 0x0

    iput p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fStartOffset:I

    const/4 p2, -0x1

    iput p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    iput p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iput p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    iput p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fMark:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-ne v1, v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    :cond_0
    return-void
.end method

.method public mark(I)V
    .locals 0

    iget p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iput p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fMark:I

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    const/4 v2, -0x1

    if-ne v1, v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result p3

    if-ne p3, v2, :cond_2

    iget p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iput p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    return v2

    :cond_2
    int-to-byte p3, p3

    aput-byte p3, p1, p2

    const/4 p1, 0x1

    return p1

    :cond_3
    if-ge p3, v0, :cond_4

    if-gtz p3, :cond_5

    const/4 p1, 0x0

    return p1

    :cond_4
    move p3, v0

    :cond_5
    if-eqz p1, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iget p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    add-int/2addr p1, p3

    iput p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    return p3
.end method

.method public readAndBuffer()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    array-length v2, v1

    if-ne v0, v2, :cond_0

    shl-int/lit8 v2, v0, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    return v1

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public reset()V
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fMark:I

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    return-void
.end method

.method public rewind()V
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fStartOffset:I

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    return-void
.end method

.method public setStartOffset(I)V
    .locals 0

    iput p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fStartOffset:I

    return-void
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    sub-int/2addr v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-ne v3, v2, :cond_1

    return-wide v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1

    :cond_2
    int-to-long v0, v2

    cmp-long v4, p1, v0

    if-gtz v4, :cond_3

    int-to-long v0, v3

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    return-wide p1

    :cond_3
    add-int/2addr v3, v2

    iput v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-ne v2, v3, :cond_4

    return-wide v0

    :cond_4
    sub-long/2addr p1, v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    add-long/2addr p1, v0

    return-wide p1
.end method
