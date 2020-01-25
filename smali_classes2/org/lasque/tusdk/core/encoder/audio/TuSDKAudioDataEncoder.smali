.class public Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;,
        Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderThread;,
        Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;
    }
.end annotation


# instance fields
.field private a:Landroid/media/MediaCodec;

.field private b:Landroid/media/MediaFormat;

.field private c:Landroid/os/HandlerThread;

.field private d:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;

.field private e:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderThread;

.field private f:[Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;

.field private g:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;

.field private h:I

.field private i:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

.field private j:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;

.field private k:J

.field private l:J

.field private m:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->k:J

    sget-object v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;->UnKnow:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    iput-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->m:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AudioEncoderHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->c:Landroid/os/HandlerThread;

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;

    iget-object v1, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;-><init>(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->d:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;I)I
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->h:I

    return p1
.end method

.method private a(Landroid/media/MediaCodec$BufferInfo;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    iget-wide v2, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->k:J

    cmp-long v0, v2, v0

    const-wide/16 v1, 0x3e8

    if-nez v0, :cond_1

    iget-wide v3, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long/2addr v3, v1

    iput-wide v3, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->k:J

    :cond_1
    iget-wide v3, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long/2addr v3, v1

    iget-wide v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->k:J

    sub-long/2addr v3, v0

    return-wide v3
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;J)J
    .locals 0

    iput-wide p1, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->k:J

    return-wide p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;Landroid/media/MediaCodec$BufferInfo;)J
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->a(Landroid/media/MediaCodec$BufferInfo;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Landroid/media/MediaCodec;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->a:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->a:Landroid/media/MediaCodec;

    return-object p1
.end method

.method private a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 2

    const-string v0, "mime"

    const-string v1, "audio/mp4a-latm"

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "aac-profile"

    iget v1, p1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->mediacodecAACProfile:I

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "channel-count"

    iget v1, p1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->mediacodecAACChannelCount:I

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "sample-rate"

    iget-object v1, p1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->audioQuality:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->getSampleRate()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "bitrate"

    iget-object v1, p1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->audioQuality:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->getBitrate()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "max-input-size"

    iget p1, p1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->mediacodecAACMaxInputSize:I

    invoke-virtual {p2, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :try_start_0
    const-string p1, "audio/mp4a-latm"

    invoke-static {p1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->m:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    return-object p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderThread;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderThread;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->e:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderThread;

    return-object p1
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;J)J
    .locals 0

    iput-wide p1, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->l:J

    return-wide p1
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->m:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderState;

    return-object p0
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->i:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

    return-object p0
.end method

.method static synthetic d(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->h:I

    return p0
.end method

.method static synthetic e(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)[Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->f:[Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;

    return-object p0
.end method

.method static synthetic f(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->g:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;

    return-object p0
.end method

.method static synthetic g(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->d:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;

    return-object p0
.end method

.method static synthetic h(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Landroid/media/MediaFormat;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->b:Landroid/media/MediaFormat;

    return-object p0
.end method

.method static synthetic i(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderThread;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->e:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderThread;

    return-object p0
.end method


# virtual methods
.method public getDelegate()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->j:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;

    return-object v0
.end method

.method public getEncoderSetting()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->i:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->i:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->i:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

    return-object v0
.end method

.method public initEncoder(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;)Z
    .locals 4

    iput-object p1, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->i:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->b:Landroid/media/MediaFormat;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->getEncoderSetting()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->b:Landroid/media/MediaFormat;

    invoke-direct {p0, v0, v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->a:Landroid/media/MediaCodec;

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->a:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "create Audio MediaCodec failed"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    iget-boolean p1, p1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->enableBuffers:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->getEncoderSetting()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

    move-result-object p1

    iget p1, p1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->audioBufferQueueNum:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->getEncoderSetting()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->audioQuality:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->getSampleRate()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    new-array v2, p1, [Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;

    iput-object v2, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->f:[Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->f:[Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;

    new-instance v3, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;

    invoke-direct {v3, v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;-><init>(I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;

    invoke-direct {p1, v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;-><init>(I)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->g:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioBuff;

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method protected onAudioEncoderCodecConfig(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->getDelegate()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->getDelegate()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;->onAudioEncoderCodecConfig(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_0
    return-void
.end method

.method public onAudioEncoderFrameDataAvailable(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 4

    iget-wide v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->l:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    :cond_0
    iget-wide v0, p4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->l:J

    goto :goto_0

    :cond_1
    iget-wide v2, p4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    return-void

    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->getDelegate()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->getDelegate()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;->onAudioEncoderFrameDataAvailable(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_2
    return-void
.end method

.method public onAudioEncoderStarted(Landroid/media/MediaFormat;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->getDelegate()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->getDelegate()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;->onAudioEncoderStarted(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method protected onStopeed()V
    .locals 0

    return-void
.end method

.method public queueAudio([B)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->d:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->j:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;

    return-void
.end method

.method public setEncoderSetting(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->i:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->d:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->d:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder$AudioEncoderHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
