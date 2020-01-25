.class public Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$DecoderRunnable;,
        Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;,
        Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$TuSDKAudioConverterDelegate;,
        Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/net/Uri;

.field private c:Landroid/media/MediaExtractor;

.field private d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "[B>;"
        }
    .end annotation
.end field

.field private e:J

.field private f:Landroid/media/MediaCodec;

.field private g:[Ljava/nio/ByteBuffer;

.field private h:[Ljava/nio/ByteBuffer;

.field private i:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;

.field private j:Landroid/media/MediaCodec;

.field private k:[Ljava/nio/ByteBuffer;

.field private l:[Ljava/nio/ByteBuffer;

.field private m:Ljava/lang/Thread;

.field private n:Z

.field private o:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$TuSDKAudioConverterDelegate;

.field private volatile p:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

.field private volatile q:Z

.field private r:J

.field private s:J

.field private t:J

.field private u:J


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->n:Z

    sget-object v1, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;->UnKnow:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    iput-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->p:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->q:Z

    const-wide/16 v0, 0x5ab3

    iput-wide v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->u:J

    iput-object p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->b:Landroid/net/Uri;

    iput-object p2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->i:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->n:Z

    sget-object v1, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;->UnKnow:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    iput-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->p:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->q:Z

    const-wide/16 v0, 0x5ab3

    iput-wide v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->u:J

    iput-object p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->i:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a([B)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->d:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a()Z
    .locals 7

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->c:Landroid/media/MediaExtractor;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->f:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->c:Landroid/media/MediaExtractor;

    iget-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->a:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->c:Landroid/media/MediaExtractor;

    iget-object v4, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->b:Landroid/net/Uri;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->c:Landroid/media/MediaExtractor;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->context()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->b:Landroid/net/Uri;

    invoke-virtual {v2, v4, v5, v3}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    :cond_2
    :goto_0
    move v2, v0

    :goto_1
    iget-object v4, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v4

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    const-string v5, "mime"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v6, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    invoke-static {v5}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->f:Landroid/media/MediaCodec;

    iget-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->f:Landroid/media/MediaCodec;

    invoke-virtual {v2, v4, v3, v3, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    const-string v2, "durationUs"

    invoke-virtual {v4, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "durationUs"

    invoke-virtual {v4, v2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->e:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_2
    iget-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->f:Landroid/media/MediaCodec;

    if-nez v2, :cond_5

    const-string v1, "create mediaDecode failed"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_5
    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    iget-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->f:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->g:[Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->f:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->h:[Ljava/nio/ByteBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buffers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->g:[Ljava/nio/ByteBuffer;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_3
    return v1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->q:Z

    return p0
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->e()V

    return-void
.end method

.method private b()Z
    .locals 6

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->j:Landroid/media/MediaCodec;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->i:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;->getMeimeType()Ljava/lang/String;

    move-result-object v2

    const v3, 0xac44

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "bitrate"

    const v5, 0x17700

    invoke-virtual {v2, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "aac-profile"

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "max-input-size"

    const v5, 0x19000

    invoke-virtual {v2, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-array v3, v4, [B

    const/16 v4, 0x11

    aput-byte v4, v3, v0

    const/16 v4, -0x70

    aput-byte v4, v3, v1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    const-string v4, "csd-0"

    invoke-virtual {v2, v4, v3}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    iget-object v3, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->i:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;->getMeimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->j:Landroid/media/MediaCodec;

    iget-object v3, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->j:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    iget-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->j:Landroid/media/MediaCodec;

    if-nez v2, :cond_1

    const-string v1, "create mediaEncoder failed"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    :goto_1
    const/4 v3, -0x2

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->j:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    goto :goto_1

    :cond_2
    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->j:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v2, "sample-rate"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "sample-rate"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const/high16 v3, 0x3d090000

    div-int/2addr v3, v2

    int-to-long v2, v3

    iput-wide v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->u:J

    :cond_3
    iget-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->o:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$TuSDKAudioConverterDelegate;

    if-eqz v2, :cond_4

    invoke-interface {v2, v0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$TuSDKAudioConverterDelegate;->onReady(Landroid/media/MediaFormat;)V

    :cond_4
    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->j:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->k:[Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->j:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->l:[Ljava/nio/ByteBuffer;

    return v1
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->d:Ljava/util/Queue;

    return-object p0
.end method

.method private c()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->isStoped()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->o:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$TuSDKAudioConverterDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$TuSDKAudioConverterDelegate;->onDone(Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->q:Z

    sget-object v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;->Stoped:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    iput-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->p:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->m:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->m:Ljava/lang/Thread;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->release()V

    return-void
.end method

.method public static create(Landroid/net/Uri;Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;)Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;-><init>(Landroid/net/Uri;Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;)Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;-><init>(Ljava/lang/String;Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;)V

    return-object v0
.end method

.method static synthetic d(Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->f()V

    return-void
.end method

.method private d()[B
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->isStoped()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->d:Ljava/util/Queue;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method private e()V
    .locals 12

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->isStoped()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x1388

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->g:[Ljava/nio/ByteBuffer;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->f:Landroid/media/MediaCodec;

    invoke-virtual {v4, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v6

    if-ltz v6, :cond_3

    iget-object v4, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->g:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v5, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v5, v4, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    iget-wide v7, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->s:J

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    iput-wide v7, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->s:J

    :cond_1
    if-gez v4, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->q:Z

    const-string v4, "sampleSize < 0"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->f:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move v8, v4

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget-object v5, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->c:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->advance()Z

    iget-wide v5, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->t:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->t:J

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    :goto_2
    iget-object v4, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->f:Landroid/media/MediaCodec;

    invoke-virtual {v4, v3, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    if-ltz v4, :cond_5

    iget-object v5, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->h:[Ljava/nio/ByteBuffer;

    aget-object v5, v5, v4

    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v6, v6, [B

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-direct {p0, v6}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->a([B)V

    iget-object v5, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->f:Landroid/media/MediaCodec;

    invoke-virtual {v5, v4, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method static synthetic e(Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->g()V

    return-void
.end method

.method static synthetic f(Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;)J
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->t:J

    return-wide v0
.end method

.method private f()V
    .locals 13

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->isStoped()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x1388

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->k:[Ljava/nio/ByteBuffer;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->d()[B

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->j:Landroid/media/MediaCodec;

    invoke-virtual {v5, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v7

    if-ltz v7, :cond_2

    iget-object v5, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->k:[Ljava/nio/ByteBuffer;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    array-length v6, v4

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->j:Landroid/media/MediaCodec;

    const/4 v8, 0x0

    array-length v9, v4

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    :goto_2
    iget-object v4, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->j:Landroid/media/MediaCodec;

    invoke-virtual {v4, v3, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    if-ltz v4, :cond_7

    iget v5, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v6, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->l:[Ljava/nio/ByteBuffer;

    aget-object v6, v6, v4

    iget v7, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v7, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v7, v5

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v5, 0x1

    iput v5, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v7, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->s:J

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-nez v5, :cond_4

    iget-wide v7, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v7, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->s:J

    goto :goto_3

    :cond_4
    iget-wide v11, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->u:J

    add-long/2addr v7, v11

    iput-wide v7, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :goto_3
    iget-wide v7, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v11, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->s:J

    cmp-long v5, v7, v11

    if-lez v5, :cond_6

    iget-wide v7, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v7, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->s:J

    iget-wide v7, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->r:J

    cmp-long v5, v7, v9

    if-nez v5, :cond_5

    iget-wide v7, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->s:J

    iput-wide v7, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->r:J

    :cond_5
    iget-object v5, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->o:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$TuSDKAudioConverterDelegate;

    if-eqz v5, :cond_6

    iget-wide v7, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface {v5, v7, v8, v6, v3}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$TuSDKAudioConverterDelegate;->onNewSampleData(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object v3, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->o:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$TuSDKAudioConverterDelegate;

    iget-wide v5, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->s:J

    iget-wide v7, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->r:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    div-long/2addr v5, v7

    invoke-interface {v3, v5, v6}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$TuSDKAudioConverterDelegate;->onProgressChanged(J)Z

    :cond_6
    iget-object v3, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->j:Landroid/media/MediaCodec;

    invoke-virtual {v3, v4, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    goto :goto_2

    :cond_7
    return-void
.end method

.method private g()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->c()V

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->n:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->start()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->o:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$TuSDKAudioConverterDelegate;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$TuSDKAudioConverterDelegate;->onDone(Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getAudioFrameInterval()J
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->u:J

    return-wide v0
.end method

.method public getDuraitonTimeUs()J
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->e:J

    return-wide v0
.end method

.method public isStarted()Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->p:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    sget-object v1, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;->Started:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStoped()Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->p:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    sget-object v1, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;->Stoped:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prepare()Z
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->i:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    sget-object v2, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;->AAC:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$AudioFormat;

    if-eq v0, v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->b:Landroid/net/Uri;

    if-nez v0, :cond_1

    :goto_0
    const-string v0, "Please set a valid audio path"

    :goto_1
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->b:Landroid/net/Uri;

    :cond_3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->d:Ljava/util/Queue;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->a()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->b()Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    sget-object v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;->Ready:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    iput-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->p:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    const/4 v0, 0x1

    return v0

    :cond_6
    :goto_2
    const-string v0, "Only supports aac format"

    goto :goto_1
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->c:Landroid/media/MediaExtractor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->c:Landroid/media/MediaExtractor;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->j:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->j:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->j:Landroid/media/MediaCodec;

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->f:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->f:Landroid/media/MediaCodec;

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->d:Ljava/util/Queue;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->d:Ljava/util/Queue;

    :cond_3
    iput-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->g:[Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->k:[Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$TuSDKAudioConverterDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->o:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$TuSDKAudioConverterDelegate;

    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->n:Z

    return-void
.end method

.method public start()V
    .locals 3

    invoke-static {}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$1;-><init>(Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;)V

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->prepare()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;->UnKnow:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    iput-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->p:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->p:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    sget-object v1, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;->Ready:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const-string v0, "TuSDKAudioConverter start failed\uff0cPlease check the configuration information"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    sget-object v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;->Started:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    iput-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->p:Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$State;

    iput-boolean v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->q:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$DecoderRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$DecoderRunnable;-><init>(Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->m:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->m:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$2;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$2;-><init>(Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;)V

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->q:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->n:Z

    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->c()V

    return-void
.end method

.method public syncAudioTimeUs(J)V
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->r:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->r:J

    iput-wide p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;->s:J

    :cond_1
    :goto_0
    return-void
.end method
