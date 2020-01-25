.class public Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;,
        Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;,
        Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerListener;,
        Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSegment;
    }
.end annotation


# static fields
.field public static final INVALID_END_TIME:I = 0x0

.field public static final INVALID_START_TIME:I = -0x1

.field public static final INVALID_TRACK_INDEX:I = -0x1


# instance fields
.field private a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;

.field private b:Landroid/media/MediaMuxer;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private final e:I

.field private f:I

.field private g:I

.field private h:I

.field private final i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:Landroid/media/MediaFormat;

.field private o:Landroid/media/MediaFormat;


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x100000

    iput v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->e:I

    iput v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->g:I

    iput v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->h:I

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->i:J

    if-nez p1, :cond_0

    const-string v0, "option is null"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;

    return-void
.end method

.method private a(JJ)J
    .locals 1

    sub-long/2addr p3, p1

    const-wide/16 p1, 0x1

    cmp-long v0, p3, p1

    if-lez v0, :cond_0

    move-wide p1, p3

    :cond_0
    return-wide p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;

    return-object p0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->b:Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    iput-object v1, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->b:Landroid/media/MediaMuxer;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->d:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 7

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->j:J

    iput-wide v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->k:J

    iput-wide v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->l:J

    const-wide/16 v0, 0x5ab3

    iput-wide v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->m:J

    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;

    iget-object v0, v0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;->savePath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->createMuxer(Ljava/lang/String;I)Landroid/media/MediaMuxer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->b:Landroid/media/MediaMuxer;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_8

    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    invoke-static {v4}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->isAudioFormat(Landroid/media/MediaFormat;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;

    iget-object v5, v5, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;->splicerType:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;

    sget-object v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;->SplicerVideoType:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->o:Landroid/media/MediaFormat;

    if-nez v5, :cond_0

    iput-object v4, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->o:Landroid/media/MediaFormat;

    :cond_0
    iget-object v5, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->b:Landroid/media/MediaMuxer;

    iget-object v6, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->o:Landroid/media/MediaFormat;

    invoke-virtual {v5, v6}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v5

    iput v5, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->h:I

    const-string v5, "Initializing Splicer audio track "

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "max-input-size"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "max-input-size"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iget v6, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->f:I

    if-le v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    iput v5, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->f:I

    :cond_2
    const-string v5, "sample-rate"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "sample-rate"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_7

    const/high16 v5, 0x3d090000

    const-string v6, "sample-rate"

    invoke-virtual {v4, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    div-int/2addr v5, v4

    int-to-long v4, v5

    iput-wide v4, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->m:J

    goto :goto_3

    :cond_3
    invoke-static {v4}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->isVideoFormat(Landroid/media/MediaFormat;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;

    iget-object v5, v5, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;->splicerType:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;

    sget-object v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;->SplicerAudioType:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;

    if-eq v5, v6, :cond_7

    iget-object v5, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->n:Landroid/media/MediaFormat;

    if-nez v5, :cond_4

    iput-object v4, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->n:Landroid/media/MediaFormat;

    :cond_4
    iget-object v5, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->b:Landroid/media/MediaMuxer;

    iget-object v6, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->n:Landroid/media/MediaFormat;

    invoke-virtual {v5, v6}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v5

    iput v5, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->g:I

    const-string v5, "Initializing Splicer video track "

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "max-input-size"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "max-input-size"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iget v6, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->f:I

    if-le v5, v6, :cond_5

    goto :goto_2

    :cond_5
    move v5, v6

    :goto_2
    iput v5, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->f:I

    :cond_6
    const-string v5, "frame-rate"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const v5, 0xf4240

    const-string v6, "frame-rate"

    invoke-virtual {v4, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    div-int/2addr v5, v4

    int-to-long v4, v5

    iput-wide v4, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->l:J

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 p1, 0x18

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    :cond_9
    iget-object p1, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->b:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->start()V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSegment;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-wide v2, v0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSegment;->startTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    iget-wide v6, v0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSegment;->endTime:J

    cmp-long v2, v6, v3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->context()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSegment;->sourceUri:Landroid/net/Uri;

    invoke-static {v6, v7}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v6

    const/4 v7, 0x2

    if-eqz v2, :cond_2

    invoke-virtual {v6, v3, v4, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move-wide v10, v3

    goto :goto_2

    :cond_2
    iget-wide v8, v0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSegment;->startTime:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    iget-wide v12, v0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSegment;->endTime:J

    mul-long/2addr v10, v12

    invoke-virtual {v6, v8, v9, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_2
    iget-object v0, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;

    iget-object v0, v0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;->splicerType:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;

    sget-object v7, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;->SplicerAudioType:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;

    const/4 v8, -0x1

    if-eq v0, v7, :cond_3

    invoke-static {v6}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v0

    goto :goto_3

    :cond_3
    move v0, v8

    :goto_3
    iget-object v7, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;

    iget-object v7, v7, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;->splicerType:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;

    sget-object v9, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;->SplicerVideoType:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;

    if-eq v7, v9, :cond_4

    invoke-static {v6}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v8

    :cond_4
    iget v7, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->f:I

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    new-instance v9, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v9}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    :goto_4
    :try_start_0
    iput v5, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v6, v7, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v12

    iput v12, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    cmp-long v14, v10, v3

    if-lez v14, :cond_5

    cmp-long v14, v12, v10

    if-ltz v14, :cond_5

    if-nez v2, :cond_5

    const-string v0, "The current sample is over the trim end time."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_5
    iget v14, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v14, :cond_6

    const-string v0, "Saw input EOS."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iput v5, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto/16 :goto_7

    :cond_6
    iput-wide v12, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v12

    iput v12, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v12

    if-ne v12, v0, :cond_7

    invoke-direct {v1, v0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a(I)Z

    move-result v13

    if-eqz v13, :cond_7

    iget v12, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->g:I

    :cond_7
    if-ne v12, v8, :cond_8

    invoke-direct {v1, v8}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a(I)Z

    move-result v13

    if-eqz v13, :cond_8

    iget v12, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->h:I

    :cond_8
    iget v13, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->g:I

    const-wide/16 v14, 0x1

    if-ne v12, v13, :cond_c

    iget-wide v3, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->l:J

    cmp-long v3, v3, v14

    if-gtz v3, :cond_9

    iget-wide v3, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->j:J

    cmp-long v3, v3, v14

    if-eqz v3, :cond_9

    iget-wide v3, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->j:J

    move-object/from16 v16, v6

    iget-wide v5, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {v1, v3, v4, v5, v6}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a(JJ)J

    move-result-wide v3

    iput-wide v3, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->l:J

    goto :goto_5

    :cond_9
    move-object/from16 v16, v6

    :goto_5
    iget-wide v3, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->l:J

    invoke-direct {v1, v3, v4}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a(J)Z

    move-result v3

    if-nez v3, :cond_a

    iput-wide v14, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->l:J

    :cond_a
    iget-wide v3, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v5, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->j:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_b

    iget-wide v3, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->j:J

    iget-wide v5, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->l:J

    add-long/2addr v3, v5

    iput-wide v3, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :cond_b
    iget-wide v3, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v3, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->j:J

    goto :goto_6

    :cond_c
    move-object/from16 v16, v6

    iget v3, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->h:I

    if-ne v12, v3, :cond_10

    iget-wide v3, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->m:J

    cmp-long v3, v3, v14

    if-gtz v3, :cond_d

    iget-wide v3, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->k:J

    cmp-long v3, v3, v14

    if-eqz v3, :cond_d

    iget-wide v3, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->k:J

    iget-wide v5, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {v1, v3, v4, v5, v6}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a(JJ)J

    move-result-wide v3

    iput-wide v3, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->m:J

    :cond_d
    iget-wide v3, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->m:J

    invoke-direct {v1, v3, v4}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a(J)Z

    move-result v3

    if-nez v3, :cond_e

    iput-wide v14, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->m:J

    :cond_e
    iget-wide v3, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v5, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->k:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_f

    iget-wide v3, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->k:J

    iget-wide v5, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->m:J

    add-long/2addr v3, v5

    iput-wide v3, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :cond_f
    iget-wide v3, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v3, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->k:J

    :cond_10
    :goto_6
    iget-object v3, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v3, v12, v7, v9}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v6, v16

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    const-string v2, "The source video file is malformed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;

    iget-object v2, v2, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;->listener:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerListener;

    if-eqz v2, :cond_11

    iget-object v2, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;

    iget-object v2, v2, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;->listener:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerListener;

    invoke-interface {v2, v0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerListener;->onError(Ljava/lang/Exception;)V

    :cond_11
    :goto_7
    const-wide/32 v2, 0x903000

    invoke-static {v2, v3}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSegment;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSegment;)V

    return-void
.end method

.method private a(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(J)Z
    .locals 2

    const-wide/16 v0, 0x1

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private a(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSegment;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSegment;

    iget-object v1, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSegment;->sourceUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->context()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSegment;

    iget-object v2, v2, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSegment;->sourceUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {v1, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    invoke-static {v4}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->isAudioFormat(Landroid/media/MediaFormat;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;

    iget-object v5, v5, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;->splicerType:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;

    sget-object v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;->SplicerVideoType:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;

    if-eq v5, v6, :cond_1

    iput-object v4, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->o:Landroid/media/MediaFormat;

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->isVideoFormat(Landroid/media/MediaFormat;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;

    iget-object v5, v5, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;->splicerType:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;

    sget-object v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;->SplicerAudioType:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;

    if-eq v5, v6, :cond_2

    iput-object v4, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->n:Landroid/media/MediaFormat;

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSegment;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->context()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSegment;->sourceUri:Landroid/net/Uri;

    invoke-static {v2, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;

    iget-object v2, v2, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;->splicerType:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;

    sget-object v3, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;->SplicerVideoType:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->o:Landroid/media/MediaFormat;

    if-eqz v2, :cond_5

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getAudioFormat(Landroid/media/MediaExtractor;)Landroid/media/MediaFormat;

    move-result-object v2

    iget-object v3, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->o:Landroid/media/MediaFormat;

    invoke-static {v2, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->isSameAudioFormat(Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z

    move-result v2

    if-nez v2, :cond_5

    return v0

    :cond_5
    iget-object v2, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;

    iget-object v2, v2, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerOption;->splicerType:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;

    sget-object v3, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;->SplicerAudioType:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSplicerType;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->n:Landroid/media/MediaFormat;

    if-eqz v2, :cond_4

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getVideoFormat(Landroid/media/MediaExtractor;)Landroid/media/MediaFormat;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->n:Landroid/media/MediaFormat;

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->isSameVideoFormat(Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_6
    const/4 p1, 0x1

    return p1

    :cond_7
    :goto_2
    const-string p1, "Resource path is not valid"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;Ljava/util/List;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->a()V

    return-void
.end method


# virtual methods
.method public start(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$TuSDKMovieSegment;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->d:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TuSDKMovieSplicerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->c:Landroid/os/HandlerThread;

    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->d:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;->d:Landroid/os/Handler;

    new-instance v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$1;

    invoke-direct {v1, p0, p1}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer$1;-><init>(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieSplicer;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
