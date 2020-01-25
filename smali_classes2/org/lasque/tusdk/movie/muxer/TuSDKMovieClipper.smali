.class public Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperListener;,
        Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;,
        Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;

.field private b:Landroid/media/MediaExtractor;

.field private c:Landroid/media/MediaMuxer;

.field private d:Landroid/os/HandlerThread;

.field private e:Landroid/os/Handler;

.field private f:J

.field private g:I

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:I

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:I

.field private p:Z


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->f:J

    const/4 v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->g:I

    iput v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->i:I

    iput v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->j:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->p:Z

    iput-object p1, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;

    iget-object p1, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;

    iget-object p1, p1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;->srcUri:Landroid/net/Uri;

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->context()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;

    iget-object v0, v0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;->srcUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->f:J

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    return-void
.end method

.method private a(Landroid/net/Uri;JJ)J
    .locals 7

    const-string v2, "video/"

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->b(Landroid/net/Uri;Ljava/lang/String;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private a()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->p:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->l:J

    iput-wide v1, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->k:J

    iget-object v1, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;

    iget-object v1, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;->savePath:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->createMuxer(Ljava/lang/String;I)Landroid/media/MediaMuxer;

    move-result-object v1

    iput-object v1, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->c:Landroid/media/MediaMuxer;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->context()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;

    iget-object v2, v2, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;->srcUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v1

    iput-object v1, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->b:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->h:Ljava/util/HashMap;

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_8

    iget-object v3, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "audio/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    iget-object v4, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v4, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v4

    iput v2, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->j:I

    iget-object v5, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->h:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "max-input-size"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "max-input-size"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    iget v5, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->g:I

    if-le v4, v5, :cond_0

    goto :goto_1

    :cond_0
    move v4, v5

    :goto_1
    iput v4, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->g:I

    :cond_1
    const/16 v4, 0x400

    invoke-static {v4, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getAudioInterval(ILandroid/media/MediaFormat;)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->n:J

    goto :goto_4

    :cond_2
    const-string v5, "video/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    iget-object v4, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v4, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v4

    iput v2, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->i:I

    iget-object v5, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->h:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "max-input-size"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "max-input-size"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    iget v5, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->g:I

    if-le v4, v5, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    iput v4, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->g:I

    :cond_4
    invoke-static {v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->containsKeyFrameRate(Landroid/media/MediaFormat;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getVideoFps(Landroid/media/MediaFormat;)I

    move-result v3

    :goto_3
    iput v3, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->o:I

    goto :goto_4

    :cond_5
    if-nez v4, :cond_6

    iget-object v3, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;

    if-eqz v3, :cond_6

    iget v3, v3, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;->fps:I

    goto :goto_3

    :cond_6
    const-string v3, "MediaFormat is not contains KEY_FRAME_RATE"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->g:I

    if-gez v0, :cond_9

    const/high16 v0, 0x100000

    iput v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->g:I

    :cond_9
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->context()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;

    iget-object v2, v2, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;->srcUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_a

    iget-object v1, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v1, v0}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    :cond_a
    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;JJ)V
    .locals 11

    move-object v6, p0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->a(Landroid/net/Uri;JJ)J

    move-result-wide v0

    iget v2, v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->o:I

    if-nez v2, :cond_0

    const/16 v2, 0xf

    iput v2, v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->o:I

    :cond_0
    const-wide/16 v7, 0x0

    cmp-long v2, v0, v7

    const-wide/32 v9, 0x7a120

    if-lez v2, :cond_1

    cmp-long v2, v0, v9

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    iget v0, v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->o:I

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getVideoInterval(I)J

    move-result-wide v0

    :goto_0
    iput-wide v0, v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->m:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->b(Landroid/net/Uri;JJ)J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-lez v2, :cond_2

    cmp-long v2, v0, v9

    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getAudioDefaultInterval()J

    move-result-wide v0

    :goto_1
    iput-wide v0, v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->n:J

    iget-object v0, v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->b:Landroid/media/MediaExtractor;

    const/4 v1, 0x2

    move-wide v2, p3

    invoke-virtual {v0, p3, p4, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    iget v0, v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->g:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    :goto_2
    const/4 v2, 0x0

    :try_start_0
    iget-boolean v3, v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->p:Z

    if-nez v3, :cond_7

    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v3, v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v0, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    iput v3, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v3, :cond_3

    const-string v0, "Saw input EOS."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_4

    :cond_3
    iget-object v3, v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    cmp-long v5, p5, v7

    if-lez v5, :cond_4

    cmp-long v3, v3, p5

    if-ltz v3, :cond_4

    const-string v0, "The current sample is over the trim end time."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    iget-object v3, v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v3

    iput v3, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v3, v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v3

    iget v4, v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->i:I

    if-ne v3, v4, :cond_5

    iget-wide v4, v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->k:J

    iget-wide v9, v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->m:J

    add-long/2addr v4, v9

    iput-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v4, v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->k:J

    goto :goto_3

    :cond_5
    iget v4, v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->j:I

    if-ne v3, v4, :cond_6

    iget-wide v4, v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->l:J

    iget-wide v9, v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->n:J

    add-long/2addr v4, v9

    iput-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v4, v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->l:J

    :cond_6
    :goto_3
    iget-object v4, v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->c:Landroid/media/MediaMuxer;

    iget-object v5, v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->h:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3, v0, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object v3, v6, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v0, "The source video file is malformed"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_4
    const-wide/32 v0, 0x903003

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "mime_type"

    const-string v3, "video/mp4"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_data"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "duration"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->context()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->a()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;Landroid/net/Uri;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->a(Landroid/net/Uri;Ljava/lang/String;JJ)V

    return-void
.end method

.method private a(JJ)Z
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->f:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iget-wide v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->f:J

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_1

    cmp-long p1, p3, v0

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const-string p1, "create segment is invalid"

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    invoke-static {p1, p3}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return p2
.end method

.method private b(Landroid/net/Uri;JJ)J
    .locals 7

    const-string v2, "audio/"

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->b(Landroid/net/Uri;Ljava/lang/String;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private b(Landroid/net/Uri;Ljava/lang/String;JJ)J
    .locals 9

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    move v4, v2

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v5

    const-string v6, "mime"

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const-string v3, "max-input-size"

    invoke-virtual {v5, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "max-input-size"

    invoke-virtual {v5, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    if-le v3, v4, :cond_0

    move v4, v3

    :cond_0
    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v5, 0x0

    if-nez v3, :cond_3

    return-wide v5

    :cond_3
    if-gez v4, :cond_4

    const/high16 v4, 0x100000

    :cond_4
    const/4 p2, 0x2

    invoke-virtual {p1, p3, p4, p2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-wide v2, v5

    :goto_1
    iput v1, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, p2, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    iput v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v4, :cond_5

    iput v1, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    cmp-long v4, p5, v5

    if-lez v4, :cond_7

    cmp-long v4, v7, p5

    if-ltz v4, :cond_7

    :goto_2
    cmp-long p1, v2, v5

    if-nez p1, :cond_6

    return-wide v5

    :cond_6
    sub-long/2addr p5, p3

    div-long/2addr p5, v2

    return-wide p5

    :cond_7
    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_1
.end method

.method static synthetic b(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;)J
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->f:J

    return-wide v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->c:Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    iput-object v1, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->c:Landroid/media/MediaMuxer;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->b:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    iput-object v1, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->b:Landroid/media/MediaExtractor;

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;

    iget-object v0, v0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;->savePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->d:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->e:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method static synthetic c(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;

    return-object p0
.end method

.method static synthetic d(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->b()V

    return-void
.end method

.method static synthetic e(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->p:Z

    return p0
.end method


# virtual methods
.method public addSegment(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v0, "addSegment"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "segment=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "list=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->p:Z

    return-void
.end method

.method public createSegment(JJ)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;

    invoke-direct {v0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;-><init>()V

    iput-wide p1, v0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;->startTime:J

    iput-wide p3, v0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;->endTime:J

    return-object v0
.end method

.method public getNewList(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;",
            "Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;",
            ">;"
        }
    .end annotation

    iget-wide v0, p1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;->startTime:J

    iget-wide v2, p1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;->endTime:J

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    iget-wide v4, p2, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;->startTime:J

    cmp-long p3, v0, v4

    if-eqz p3, :cond_0

    iget-wide v4, p2, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;->startTime:J

    invoke-virtual {p0, v4, v5, v2, v3}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->createSegment(JJ)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;

    move-result-object p3

    invoke-virtual {p0, p3, p1}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->addSegment(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;Ljava/util/List;)V

    :cond_0
    iget-wide v4, p2, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;->endTime:J

    cmp-long p3, v2, v4

    if-eqz p3, :cond_1

    iget-wide p2, p2, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;->endTime:J

    invoke-virtual {p0, v0, v1, p2, p3}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->createSegment(JJ)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->addSegment(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;Ljava/util/List;)V

    :cond_1
    return-object p1

    :cond_2
    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;

    iget-wide v4, p3, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;->endTime:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_3

    iget-wide v4, p3, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;->startTime:J

    cmp-long v4, v2, v4

    if-gtz v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {p1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-wide v4, p3, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;->startTime:J

    cmp-long v4, v4, v0

    if-nez v4, :cond_5

    :goto_1
    iget-wide v4, p3, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;->endTime:J

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->createSegment(JJ)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;

    move-result-object p3

    :goto_2
    invoke-virtual {p0, p3, p1}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->addSegment(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;Ljava/util/List;)V

    goto :goto_0

    :cond_5
    iget-wide v4, p3, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;->endTime:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_6

    iget-wide v4, p3, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;->startTime:J

    invoke-virtual {p0, v4, v5, v0, v1}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->createSegment(JJ)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;

    move-result-object p3

    goto :goto_2

    :cond_6
    iget-wide v4, p3, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;->startTime:J

    invoke-virtual {p0, v4, v5, v0, v1}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->createSegment(JJ)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->addSegment(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;Ljava/util/List;)V

    goto :goto_1

    :cond_7
    return-object p1
.end method

.method public getSegmentList(JLjava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->getTotalSegment(J)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;

    invoke-virtual {p0, p3, p1, v0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->getNewList(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$1;-><init>(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0

    :cond_2
    :goto_1
    const-string p1, "newlist"

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "newlist== null || newlist.size() == 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    aput-object v0, p2, p3

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTotalSegment(J)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->createSegment(JJ)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;

    move-result-object p1

    return-object p1
.end method

.method public startEdit(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;

    if-eqz v2, :cond_2

    iget-wide v3, v2, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;->startTime:J

    iget-wide v5, v2, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;->endTime:J

    invoke-direct {p0, v3, v4, v5, v6}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    const-string p1, "is invalid segment"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->d:Landroid/os/HandlerThread;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->e:Landroid/os/Handler;

    if-nez v0, :cond_5

    :cond_4
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TuSDKMovieEditThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->d:Landroid/os/HandlerThread;

    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->e:Landroid/os/Handler;

    :cond_5
    iget-object v0, p0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->e:Landroid/os/Handler;

    new-instance v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$2;

    invoke-direct {v1, p0, p1}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$2;-><init>(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_6
    :goto_0
    const-string p1, "is invalid option or segment"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
