.class public Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;
.super Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$MovieDecoderThread;,
        Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$EventHandler;,
        Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$VideoSpeedControlInterface;,
        Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;,
        Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDecoderError;
    }
.end annotation


# instance fields
.field private a:Landroid/view/Surface;

.field private b:Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

.field private c:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

.field private d:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

.field private e:J

.field private f:J

.field private g:Lorg/lasque/tusdk/core/decoder/TuSDKVideoSpeedControl;

.field private h:Z

.field private volatile i:Z

.field private j:Z

.field private k:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$EventHandler;

.field private l:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$MovieDecoderThread;

.field private m:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->create(Ljava/lang/String;)Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;)V

    return-void
.end method

.method public constructor <init>(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->h:Z

    new-instance p1, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$EventHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$EventHandler;-><init>(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$1;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->k:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$EventHandler;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->d()V

    return-void
.end method

.method private a()Z
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->e()V

    return-void
.end method

.method private b()Z
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->d:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->d:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    iget v0, v0, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->end:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getVideoDuration()J

    move-result-wide v2

    long-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->d:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->contains(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method private c()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->destroyExtractor()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->createMediaExtractor()Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->findVideoTrack()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->destroyExtractor()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getVideoTrackFormat()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->findAudioTrack()I

    move-result v2

    if-eq v2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->createWithMediaFormat(Landroid/media/MediaFormat;Z)Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->b:Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    return-void
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->f()V

    return-void
.end method

.method private d()V
    .locals 2

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->c()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getVideoInfo()Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getVideoInfo()Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    move-result-object v0

    iget v0, v0, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->width:I

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getDelegate()Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getDelegate()Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getVideoInfo()Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;->onVideoDecoderInfoReady(Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;)V

    :cond_2
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->j:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->findAudioTrack()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getDelegate()Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getAudioTrackFormat()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getDelegate()Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;->onAudioDecoderInfoReady(Landroid/media/MediaFormat;)V

    :cond_3
    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->a:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->createVideoDecoder(Landroid/view/Surface;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->mVideoDecoder:Landroid/media/MediaCodec;

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->mVideoDecoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->mVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    new-instance v0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$MovieDecoderThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$MovieDecoderThread;-><init>(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$1;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->l:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$MovieDecoderThread;

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->l:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$MovieDecoderThread;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$MovieDecoderThread;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->i:Z

    return-void

    :cond_5
    :goto_0
    const-string v0, "Invalid video size"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic d(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->i:Z

    return p0
.end method

.method private e()V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->i:Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->l:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$MovieDecoderThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$MovieDecoderThread;->interrupt()V

    :try_start_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->l:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$MovieDecoderThread;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$MovieDecoderThread;->join()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->l:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$MovieDecoderThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    :goto_0
    invoke-super {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->stop()V

    return-void
.end method

.method static synthetic e(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->k()V

    return-void
.end method

.method private f()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->e()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->destroyExtractor()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->m:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;

    iput-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->b:Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    return-void
.end method

.method static synthetic f(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->h:Z

    return p0
.end method

.method private g()F
    .locals 4

    iget-wide v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->e:J

    long-to-float v0, v0

    iget-wide v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->f:J

    long-to-float v1, v1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->d:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    invoke-virtual {v2}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->getStartTimeUS()F

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v3

    invoke-virtual {v3}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v3

    invoke-virtual {v3}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->getStartTimeUS()F

    move-result v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v3

    invoke-virtual {v3}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->getStartTimeUS()F

    move-result v3

    sub-float/2addr v2, v3

    :cond_1
    sub-float/2addr v1, v0

    const v0, 0x49742400    # 1000000.0f

    div-float/2addr v1, v0

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method

.method static synthetic g(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->j:Z

    return p0
.end method

.method private h()V
    .locals 5

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getDelegate()Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getDelegate()Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;

    move-result-object v0

    iget-wide v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->f:J

    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->g()F

    move-result v3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getProgress()F

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;->onProgressChanged(JFF)V

    return-void
.end method

.method static synthetic h(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->l()V

    return-void
.end method

.method private i()Z
    .locals 11

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->mVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->mVideoDecoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    const/4 v1, 0x0

    if-ltz v5, :cond_2

    aget-object v0, v0, v5

    iget-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    if-gez v7, :cond_0

    iget-object v4, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->mVideoDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v0

    iget v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->mVideoTrackIndex:I

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WEIRD: got sample from track "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", expected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->mVideoTrackIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v4, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->mVideoDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    :cond_2
    return v1
.end method

.method private j()Z
    .locals 9

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->mVideoDecoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_9

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->j:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getDelegate()Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getDelegate()Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;->onDecoderComplete()V

    :cond_0
    return v4

    :cond_1
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getVideoSpeedControl()Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$VideoSpeedControlInterface;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getVideoSpeedControl()Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$VideoSpeedControlInterface;

    move-result-object v5

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-interface {v5, v6, v7}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$VideoSpeedControlInterface;->preRender(J)V

    :cond_3
    iget-wide v5, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->e:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    iget-wide v5, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v5, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->e:J

    :cond_4
    iget-wide v5, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v5, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->f:J

    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->h()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->mVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getDelegate()Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getDelegate()Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;->onVideoDecoderNewFrameAvailable()V

    :cond_5
    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->f:J

    long-to-float v0, v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getPlaygroundTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->getEndTimeUS()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_7

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->unselectVideoTrack()V

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->j:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getDelegate()Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getDelegate()Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;->onDecoderComplete()V

    :cond_6
    return v4

    :cond_7
    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-wide v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->f:J

    long-to-float v0, v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->getEndTimeUS()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->unselectVideoTrack()V

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->j:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getDelegate()Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getDelegate()Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;->onDecoderComplete()V

    :cond_8
    return v4

    :cond_9
    return v2
.end method

.method private k()V
    .locals 4

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getVideoSpeedControl()Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$VideoSpeedControlInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$VideoSpeedControlInterface;->reset()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getVideoSpeedControl()Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$VideoSpeedControlInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$VideoSpeedControlInterface;->setFrameRate(I)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->e:J

    iput-wide v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->f:J

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->selectVideoTrack()I

    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getPlaygroundTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->getStartTimeUS()F

    move-result v0

    float-to-long v2, v0

    :cond_1
    invoke-virtual {p0, v2, v3}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->seekTo(J)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    goto :goto_0

    :goto_1
    move v0, v1

    :cond_3
    :goto_2
    if-nez v1, :cond_6

    iget-boolean v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->i:Z

    if-nez v2, :cond_4

    return-void

    :cond_4
    if-nez v0, :cond_5

    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->i()Z

    move-result v0

    :cond_5
    if-nez v1, :cond_3

    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->j()Z

    move-result v1

    goto :goto_2

    :cond_6
    return-void
.end method

.method private l()V
    .locals 7

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->selectAudioTrack()I

    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->getStartTimeUS()F

    move-result v0

    float-to-long v0, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->seekTo(J)V

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->i:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/high16 v0, 0x40000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v1

    if-gtz v1, :cond_4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->unselectAudioTrack()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getDelegate()Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;

    move-result-object v0

    if-eqz v0, :cond_5

    :goto_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getDelegate()Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;->onDecoderComplete()V

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->a()Z

    move-result v5

    if-eqz v5, :cond_6

    long-to-float v5, v3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v6

    invoke-virtual {v6}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->getEndTimeUS()F

    move-result v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_6

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->unselectAudioTrack()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getDelegate()Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    return-void

    :cond_6
    iget-object v5, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->advance()Z

    new-instance v5, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput v2, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iput v1, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput-wide v3, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getDelegate()Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getDelegate()Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;

    move-result-object v1

    invoke-interface {v1, v3, v4, v0, v5}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;->onAudioFrameDataAvailable(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->k:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->k:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$EventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$EventHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getAudioDecoder()Landroid/media/MediaCodec;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDelegate()Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->m:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;

    return-object v0
.end method

.method public getPlaygroundTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->d:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    return-object v0
.end method

.method public getProgress()F
    .locals 5

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getVideoDuration()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->g()F

    move-result v1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v2

    invoke-virtual {v2}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->durationTimeUS()F

    move-result v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getVideoDurationTimeUS()J

    move-result-wide v3

    long-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->duration()F

    move-result v0

    :cond_0
    div-float/2addr v1, v0

    return v1
.end method

.method public getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->c:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    return-object v0
.end method

.method public getVideoDecoder()Landroid/media/MediaCodec;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->mVideoDecoder:Landroid/media/MediaCodec;

    return-object v0
.end method

.method public getVideoDuration()J
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getVideoDurationTimeUS()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getVideoDurationTimeUS()J
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->b:Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-wide v0, v0, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->durationTimeUs:J

    return-wide v0
.end method

.method public getVideoInfo()Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->b:Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    return-object v0
.end method

.method public getVideoSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->b:Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->width:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->b:Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    iget v1, v1, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->height:I

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(I)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    return-object v0
.end method

.method public getVideoSpeedControl()Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$VideoSpeedControlInterface;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->g:Lorg/lasque/tusdk/core/decoder/TuSDKVideoSpeedControl;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/decoder/TuSDKVideoSpeedControl;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKVideoSpeedControl;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->g:Lorg/lasque/tusdk/core/decoder/TuSDKVideoSpeedControl;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->g:Lorg/lasque/tusdk/core/decoder/TuSDKVideoSpeedControl;

    return-object v0
.end method

.method protected onDecoderError(I)V
    .locals 1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->m:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;

    if-eqz p1, :cond_0

    sget-object v0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDecoderError;->UnsupportedVideoFormat:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDecoderError;

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;->onDecoderError(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDecoderError;)V

    :cond_0
    return-void
.end method

.method public prepare(Landroid/view/Surface;Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;Z)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->a:Landroid/view/Surface;

    iput-object p2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->c:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    iput-object p3, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->d:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    iput-boolean p4, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->j:Z

    return-void
.end method

.method public prepare(Landroid/view/Surface;Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->prepare(Landroid/view/Surface;Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;Z)V

    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->m:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;

    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->h:Z

    return-void
.end method

.method public setPlaygroundTimeRange(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->d:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->k:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$EventHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$EventHandler;->removeMessages(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->k:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$EventHandler;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$EventHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->k:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$EventHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$EventHandler;->removeMessages(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->k:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$EventHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$EventHandler;->sendEmptyMessage(I)Z

    return-void
.end method
