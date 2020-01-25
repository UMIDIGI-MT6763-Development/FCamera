.class public Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoderInterface;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;,
        Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDequeueOutputBufferThread;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Landroid/media/MediaCodec;

.field private c:Landroid/media/MediaFormat;

.field private d:Z

.field private e:J

.field private f:[Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

.field private g:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

.field private h:I

.field private i:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

.field private j:J

.field private k:Landroid/os/HandlerThread;

.field private l:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;

.field private m:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDequeueOutputBufferThread;

.field private n:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

.field private o:Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->a:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->e:J

    return-void
.end method

.method private a(Landroid/media/MediaCodec$BufferInfo;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    iget-wide v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->e:J

    cmp-long v0, v2, v0

    const-wide/16 v1, 0x3e8

    if-nez v0, :cond_1

    iget-wide v3, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long/2addr v3, v1

    iput-wide v3, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->e:J

    :cond_1
    iget-wide v3, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long/2addr v3, v1

    iget-wide v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->e:J

    sub-long/2addr v3, v0

    return-wide v3
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;Landroid/media/MediaCodec$BufferInfo;)J
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->a(Landroid/media/MediaCodec$BufferInfo;)J

    move-result-wide p0

    return-wide p0
.end method

.method private a(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const-string v0, "mime"

    const-string v1, "video/avc"

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "width"

    iget-object v1, p1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "height"

    iget-object v1, p1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "bitrate"

    iget-object v1, p1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoQuality:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;->getBitrate()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "frame-rate"

    iget-object v1, p1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoQuality:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;->getFps()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "i-frame-interval"

    iget v1, p1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->mediacodecAVCIFrameInterval:I

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "profile"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "level"

    const/16 v1, 0x200

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "bitrate-mode"

    const/4 v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "mime"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v2

    const-string v3, "mime"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v2

    iget-object v2, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    const/16 v3, 0x15

    invoke-static {v2, v3}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->a([II)Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_0

    iput v3, p1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->mediacodecAVCColorFormat:I

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    const/16 v4, 0x13

    if-ne v3, v5, :cond_1

    invoke-static {v2, v4}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->a([II)Z

    move-result v2

    if-eqz v2, :cond_1

    iput v4, p1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->mediacodecAVCColorFormat:I

    move v3, v4

    :cond_1
    if-ne v3, v5, :cond_2

    const-string p1, "!!!!!!!!!!!UnSupport,mediaCodecColorFormat"

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_2
    const-string p1, "color-format"

    invoke-virtual {p2, p1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->d:Z

    return p0
.end method

.method private static a([II)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Landroid/media/MediaCodec;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->b:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)[Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->f:[Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    return-object p0
.end method

.method static synthetic d(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->g:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    return-object p0
.end method

.method static synthetic e(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->i:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    return-object p0
.end method

.method static synthetic f(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->a:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public getDelegate()Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->o:Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    return-object v0
.end method

.method public getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->n:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->n:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->n:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    return-object v0
.end method

.method public initEncoder(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;)Z
    .locals 10

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->n:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->n:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    iget-object p1, p1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    const-string v3, "video/avc"

    invoke-static {p1, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->isVideoSizeSupported(Lorg/lasque/tusdk/core/struct/TuSdkSize;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TuSDKSoftVideoDataEncoder | May not support video size for "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->n:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    iget-object v3, v3, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, v3}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance p1, Landroid/media/MediaFormat;

    invoke-direct {p1}, Landroid/media/MediaFormat;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->c:Landroid/media/MediaFormat;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object p1

    iget-object v3, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->c:Landroid/media/MediaFormat;

    invoke-direct {p0, p1, v3}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->b:Landroid/media/MediaCodec;

    iput-boolean v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->d:Z

    iget-object p1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->b:Landroid/media/MediaCodec;

    if-nez p1, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object p1

    iget-object p1, p1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v3

    iget-object v3, v3, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v3, v3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v4

    iget v4, v4, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->previewColorFormat:I

    invoke-static {p1, v3, v4}, Lorg/lasque/tusdk/core/encoder/TuSDKBuffSizeCalculator;->calculator(III)I

    move-result p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v3

    iget-object v3, v3, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v3, v3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v4

    iget-object v4, v4, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v4, v4, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v5

    iget v5, v5, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoBufferQueueNum:I

    new-array v6, v5, [Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    iput-object v6, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->f:[Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_2

    iget-object v7, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->f:[Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    new-instance v8, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v9

    iget v9, v9, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->previewColorFormat:I

    invoke-direct {v8, v9, p1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;-><init>(II)V

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iput v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->h:I

    new-instance p1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    invoke-static {v3, v4, v1}, Lorg/lasque/tusdk/core/encoder/TuSDKBuffSizeCalculator;->calculator(III)I

    move-result v2

    invoke-direct {p1, v1, v2}, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;-><init>(II)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->g:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    new-instance p1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v1

    iget v1, v1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->mediacodecAVCColorFormat:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v2

    iget v2, v2, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->mediacodecAVCColorFormat:I

    invoke-static {v3, v4, v2}, Lorg/lasque/tusdk/core/encoder/TuSDKBuffSizeCalculator;->calculator(III)I

    move-result v2

    invoke-direct {p1, v1, v2}, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;-><init>(II)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->i:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected onVideoEncoderCodecConfig(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->getDelegate()Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->getDelegate()Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;->onVideoEncoderCodecConfig(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_0
    return-void
.end method

.method public onVideoEncoderFrameDataAvailable(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 4

    iget-wide v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->j:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    iget-wide v0, p4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->j:J

    goto :goto_1

    :cond_1
    iget-wide v2, p4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->j:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->getDelegate()Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->getDelegate()Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;->onVideoEncoderFrameDataAvailable(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_2
    return-void
.end method

.method public onVideoEncoderStarted(Landroid/media/MediaFormat;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->getDelegate()Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->getDelegate()Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;->onVideoEncoderStarted(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method public queueVideo([B)V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->d:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->h:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget-object v3, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->f:[Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    array-length v3, v3

    rem-int/2addr v1, v3

    iget-object v3, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->f:[Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;->isReadyToFill:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->f:[Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    aget-object v3, v3, v1

    iput-object p1, v3, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;->buff:[B

    iget-object p1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->f:[Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;

    aget-object p1, p1, v1

    iput-boolean v4, p1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoBuff;->isReadyToFill:Z

    iput v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->h:I

    iget-object p1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->l:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;

    iget-object v3, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->l:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;

    invoke-virtual {v3, v2, v1, v4}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queueVideo,abandon,targetIndex"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDelegate(Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->o:Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    return-void
.end method

.method public start()Z
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->b:Landroid/media/MediaCodec;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->c:Landroid/media/MediaFormat;

    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->b:Landroid/media/MediaCodec;

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->b:Landroid/media/MediaCodec;

    iget-object v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->c:Landroid/media/MediaFormat;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    iput-boolean v4, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->d:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->e:J

    new-instance v1, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDequeueOutputBufferThread;

    const-string v2, "AudioDequeueOutputBufferThread"

    invoke-direct {v1, p0, v2}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDequeueOutputBufferThread;-><init>(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->m:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDequeueOutputBufferThread;

    iget-object v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->m:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDequeueOutputBufferThread;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDequeueOutputBufferThread;->start()V

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "videoFilterHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->k:Landroid/os/HandlerThread;

    iget-object v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;

    iget-object v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->k:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;-><init>(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->l:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v4

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->d:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->d:Z

    iget-object v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->b:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-object v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->b:Landroid/media/MediaCodec;

    :cond_1
    iget-object v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->m:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDequeueOutputBufferThread;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDequeueOutputBufferThread;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->m:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDequeueOutputBufferThread;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDequeueOutputBufferThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    iput-object v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->m:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDequeueOutputBufferThread;

    iget-object v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->l:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->l:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDataEncoderHandler;->removeMessages(I)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->j:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
