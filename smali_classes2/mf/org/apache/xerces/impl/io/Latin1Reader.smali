.class public final Lmf/org/apache/xerces/impl/io/Latin1Reader;
.super Ljava/io/Reader;
.source "Latin1Reader.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x800


# instance fields
.field protected final fBuffer:[B

.field protected final fInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/io/Latin1Reader;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    new-array p2, p2, [B

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/io/Latin1Reader;-><init>(Ljava/io/InputStream;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/io/Latin1Reader;->fInputStream:Ljava/io/InputStream;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/io/Latin1Reader;->fBuffer:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/Latin1Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/Latin1Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/Latin1Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/Latin1Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/Latin1Reader;->fBuffer:[B

    array-length v1, v0

    if-le p3, v1, :cond_0

    array-length p3, v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/Latin1Reader;->fInputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/Latin1Reader;->fBuffer:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    :goto_0
    if-lt v2, p3, :cond_1

    return p3

    :cond_1
    add-int v0, p2, v2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/Latin1Reader;->fBuffer:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    aput-char v1, p1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/Latin1Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/Latin1Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
