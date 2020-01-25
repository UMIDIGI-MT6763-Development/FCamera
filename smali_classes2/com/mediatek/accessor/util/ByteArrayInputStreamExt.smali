.class public Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;
.super Ljava/io/ByteArrayInputStream;
.source "ByteArrayInputStreamExt.java"


# static fields
.field private static final BIT_SHIFT_COUNT_16:I = 0x10

.field private static final BIT_SHIFT_COUNT_24:I = 0x18

.field private static final BIT_SHIFT_COUNT_8:I = 0x8

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->Tag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v0, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<ByteArrayInputStreamExt> new instance, buf count 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getFilePointer()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read([B)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->read([BII)I

    move-result p1

    return p1
.end method

.method public final readInt()I
    .locals 4

    invoke-virtual {p0}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->read()I

    move-result v0

    invoke-virtual {p0}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->read()I

    move-result v1

    invoke-virtual {p0}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->read()I

    move-result v2

    invoke-virtual {p0}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->read()I

    move-result v3

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public final readReverseInt()I
    .locals 4

    invoke-virtual {p0}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->read()I

    move-result v0

    invoke-virtual {p0}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->read()I

    move-result v1

    invoke-virtual {p0}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->read()I

    move-result v2

    invoke-virtual {p0}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public final readUnsignedShort()I
    .locals 2

    invoke-virtual {p0}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->read()I

    move-result v0

    invoke-virtual {p0}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->read()I

    move-result v1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized seek(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->count:I

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    long-to-int p1, p1

    iput p1, p0, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset out of buffer range: offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", buffer count "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->count:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
