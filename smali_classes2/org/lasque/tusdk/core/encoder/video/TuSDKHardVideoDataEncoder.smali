.class public Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoderInterface;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field private final a:I

.field private b:Landroid/view/Surface;

.field private c:Landroid/media/MediaCodec;

.field private d:Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

.field private e:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

.field private f:J

.field private g:J

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    iput v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->f:J

    return-void
.end method

.method private a(Landroid/media/MediaCodec$BufferInfo;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    iget-wide v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->f:J

    cmp-long v0, v2, v0

    const-wide/16 v1, 0x3e8

    if-nez v0, :cond_1

    iget-wide v3, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long/2addr v3, v1

    iput-wide v3, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->f:J

    :cond_1
    iget-wide v3, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long/2addr v3, v1

    iget-wide v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->f:J

    sub-long/2addr v3, v0

    return-wide v3
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;)Landroid/media/MediaCodec;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->c:Landroid/media/MediaCodec;

    return-object p0
.end method


# virtual methods
.method public drainEncoder(Z)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "sending EOS to encoder"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->j:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder$1;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder$1;-><init>(Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;)V

    const-wide/16 v2, 0x258

    invoke-static {v1, v2, v3}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->c:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    if-nez p1, :cond_1

    goto :goto_2

    :cond_2
    const/4 v3, -0x3

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, -0x2

    if-ne v2, v3, :cond_4

    iget-object v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->onEncoderStarted(Landroid/media/MediaFormat;)V

    goto :goto_0

    :cond_4
    if-ltz v2, :cond_1

    iget-object v3, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->c:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    aget-object v3, v3, v2

    if-eqz v3, :cond_8

    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v4, :cond_6

    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    invoke-direct {p0, v1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->a(Landroid/media/MediaCodec$BufferInfo;)J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v4, v5, v3, v1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->onVideoEncoderCodecConfig(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->a(Landroid/media/MediaCodec$BufferInfo;)J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v4, v5, v3, v1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->onVideoEncoderFrameDataAvailable(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_6
    :goto_1
    iget-object v3, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->c:Landroid/media/MediaCodec;

    invoke-virtual {v3, v2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->j:Z

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    if-nez p1, :cond_7

    const-string p1, "reached end of stream unexpectedly"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    const-string p1, "end of stream reached"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void

    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encoderOutputBuffer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " was null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->c:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    :cond_0
    return-void
.end method

.method public getDelegate()Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->d:Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    return-object v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->b:Landroid/view/Surface;

    return-object v0
.end method

.method public getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->e:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->e:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->e:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    return-object v0
.end method

.method public initCodec(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->e:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    const-string p1, "video/avc"

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getEncoderCodecInfo(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "Unable to find an appropriate codec for video/avc"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "choose codec ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "video/avc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->e:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    iget-object v1, v1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    const-string v2, "video/avc"

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->isVideoSizeSupported(Lorg/lasque/tusdk/core/struct/TuSdkSize;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TuSDKHardVideoDataEncoder | May not support video size for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->e:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    iget-object v2, v2, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const-string v1, "video/avc"

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v2

    iget-object v2, v2, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v3

    iget-object v3, v3, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v3, v3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-static {v1, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "color-format"

    const v3, 0x7f000789

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "bitrate"

    iget v3, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->i:I

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v3

    iget-object v3, v3, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoQuality:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;->getBitrate()I

    move-result v3

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "frame-rate"

    iget v3, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->h:I

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v3

    iget-object v3, v3, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoQuality:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;->getFps()I

    move-result v3

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "i-frame-interval"

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v3

    iget v3, v3, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->mediacodecAVCIFrameInterval:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "profile"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "level"

    const/16 v4, 0x200

    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "bitrate-mode"

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :try_start_0
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v5, "HUAWEI"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "FRD-AL00"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "OMX.google.h264.encoder"

    invoke-static {v2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->c:Landroid/media/MediaCodec;

    :cond_4
    iget-object v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->c:Landroid/media/MediaCodec;

    if-nez v2, :cond_5

    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->c:Landroid/media/MediaCodec;

    :cond_5
    iget-object v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->c:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->b:Landroid/view/Surface;

    iget-object v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->j:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    const-string v1, "fail to create MediaCodec with name: %s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method protected onEncoderStarted(Landroid/media/MediaFormat;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->getDelegate()Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->getDelegate()Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;->onVideoEncoderStarted(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method protected onVideoEncoderCodecConfig(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->getDelegate()Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->getDelegate()Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;->onVideoEncoderCodecConfig(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_0
    return-void
.end method

.method protected onVideoEncoderFrameDataAvailable(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 4

    iget-wide v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->g:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    iget-wide v0, p4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->g:J

    goto :goto_1

    :cond_1
    iget-wide v2, p4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->g:J

    iget-wide v2, p4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->g:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->getDelegate()Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->getDelegate()Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;->onVideoEncoderFrameDataAvailable(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_2
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->c:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->c:Landroid/media/MediaCodec;

    :cond_0
    return-void
.end method

.method public requestKeyFrame()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->c:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "request-sync"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDefaultVideoQuality(II)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->h:I

    iput p2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->i:I

    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->d:Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    return-void
.end method
