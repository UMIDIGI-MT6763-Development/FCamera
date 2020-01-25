.class public Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;
.super Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieCreatorInterface;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;,
        Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;,
        Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;,
        Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;,
        Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$TuSDKRecordVideoCameraDelegate;
    }
.end annotation


# instance fields
.field private A:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;

.field private B:Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

.field a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperListener;

.field private b:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

.field private c:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/io/File;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Z

.field private k:I

.field private l:I

.field private m:Landroid/os/HandlerThread;

.field protected mMuxer:Landroid/media/MediaMuxer;

.field private n:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;

.field private o:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;

.field private p:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$TuSDKRecordVideoCameraDelegate;

.field private q:I

.field private r:I

.field private s:F

.field private t:F

.field private u:J

.field private v:J

.field private w:J

.field private x:J

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;-><init>(Landroid/content/Context;Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;Landroid/widget/RelativeLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;-><init>(Landroid/content/Context;Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;Landroid/widget/RelativeLayout;)V

    sget-object p1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;->Normal:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->c:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->d:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->e:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->g:Z

    const-wide/32 p1, 0x3200000

    iput-wide p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->i:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->j:Z

    const/4 p1, -0x1

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->k:I

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->l:I

    const/4 p1, 0x2

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->q:I

    const/16 p1, 0xa

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->r:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->w:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->x:J

    new-instance p1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$1;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperListener;

    new-instance p1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$6;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$6;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->A:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;

    new-instance p1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$7;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$7;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->B:Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "WriteSampleDataWriter"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->m:Landroid/os/HandlerThread;

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->m:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;

    iget-object p2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->m:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->n:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;

    return-void
.end method

.method private A()Z
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;I)I
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->l:I

    return p1
.end method

.method private a(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieCreatorInterface$ByteDataFrame;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->isRecordingPaused()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->validateMaxRecordingTime()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->j:Z

    if-eqz v0, :cond_3

    iget v0, p1, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieCreatorInterface$ByteDataFrame;->trackIndex:I

    iget v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->l:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieCreatorInterface$ByteDataFrame;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->a(Landroid/media/MediaCodec$BufferInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Audio timeampUs error"

    :goto_0
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->z:Z

    :cond_1
    iget v0, p1, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieCreatorInterface$ByteDataFrame;->trackIndex:I

    iget v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->k:I

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieCreatorInterface$ByteDataFrame;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->b(Landroid/media/MediaCodec$BufferInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "Video timeampUs error"

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getMediaMuxer()Landroid/media/MediaMuxer;

    move-result-object v0

    iget v1, p1, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieCreatorInterface$ByteDataFrame;->trackIndex:I

    iget-object v2, p1, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieCreatorInterface$ByteDataFrame;->buffer:Ljava/nio/ByteBuffer;

    iget-object p1, p1, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieCreatorInterface$ByteDataFrame;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->m()V

    :cond_3
    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getVideoDelegate()Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$TuSDKRecordVideoCameraDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$3;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$3;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->t()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieCreatorInterface$ByteDataFrame;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->a(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieCreatorInterface$ByteDataFrame;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;)V

    return-void
.end method

.method private a()Z
    .locals 6

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/lasque/tusdk/core/utils/FileHelper;->mountedExternalStorage()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getMovieOutputPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->getAvailableStore(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getMinAvailableSpaceBytes()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private a(Landroid/media/MediaCodec$BufferInfo;)Z
    .locals 7

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->s:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-wide v3, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->w:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    long-to-float v1, v3

    sub-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->w:J

    :cond_1
    iget-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v3, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->w:J

    add-long/2addr v0, v3

    iput-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->u:J

    iget-wide v3, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v0, v1, v3, v4}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getSafePts(JJ)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->u:J

    iget-wide v3, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    return v2

    :cond_2
    iget-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->u:J

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->j:Z

    return p1
.end method

.method private b()F
    .locals 3

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->s:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->t:F

    sub-float/2addr v1, v0

    const v0, 0x49742400    # 1000000.0f

    div-float/2addr v1, v0

    return v1
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;I)I
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->k:I

    return p1
.end method

.method private b(Landroid/media/MediaCodec$BufferInfo;)Z
    .locals 6

    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->y:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->y:Z

    :cond_1
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->y:Z

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->s:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_4

    iget-wide v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->v:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    iget-wide v4, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->x:J

    goto :goto_1

    :cond_3
    iput-wide v4, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->x:J

    :goto_1
    iget-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v4, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->x:J

    add-long/2addr v2, v4

    long-to-float v0, v2

    iput v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->s:F

    :cond_4
    iget-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v4, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->x:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x64

    add-long/2addr v2, v4

    iput-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v4, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->v:J

    invoke-static {v4, v5, v2, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getSafePts(JJ)J

    move-result-wide v4

    iput-wide v4, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->v:J

    iget-wide v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->v:J

    long-to-float p1, v2

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->t:F

    return v1
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->j:Z

    return p0
.end method

.method private c()F
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    invoke-virtual {v2}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->duration()F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)Z
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->z()Z

    move-result p0

    return p0
.end method

.method private d()F
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    invoke-virtual {v2}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->duration()F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method static synthetic d(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)Z
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->A()Z

    move-result p0

    return p0
.end method

.method private e()F
    .locals 2

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->c()F

    move-result v0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->b()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method static synthetic e(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)F
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->s:F

    return p0
.end method

.method static synthetic f(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->l:I

    return p0
.end method

.method private f()Ljava/lang/Boolean;
    .locals 3

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->videoRecordEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "The video record feature has been expired, please contact us via http://tusdk.com"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->n:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;

    return-object p0
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->mMuxer:Landroid/media/MediaMuxer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getMovieOutputPath()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/media/MediaMuxer;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getMovieOutputPath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getDeviceOrient()Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->getDegree()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaMuxer;->setOrientationHint(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error on get mediaMuxer: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private h()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->validateMovieFile()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->mMuxer:Landroid/media/MediaMuxer;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->mMuxer:Landroid/media/MediaMuxer;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->j:Z

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->l:I

    iput v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iput-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->mMuxer:Landroid/media/MediaMuxer;

    return-void
.end method

.method static synthetic h(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)Z
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->y()Z

    move-result p0

    return p0
.end method

.method static synthetic i(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->k:I

    return p0
.end method

.method private i()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getRecordMode()Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;->Keep:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->f:Ljava/io/File;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->s:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->t:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->e()F

    move-result v0

    invoke-static {v2, v0}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->makeRange(FF)Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->e()F

    move-result v1

    iget v0, v0, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->end:F

    invoke-static {v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->makeRange(FF)Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->duration()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iput v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->s:F

    iput v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->t:F

    return-void
.end method

.method private j()V
    .locals 7

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->f:Ljava/io/File;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->notifyRecordingResultWithVideoFile(Ljava/io/File;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->f:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->w()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;

    invoke-direct {v1}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;->savePath:Ljava/lang/String;

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;->srcUri:Landroid/net/Uri;

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->a:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperListener;

    iput-object v0, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;->listener:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperListener;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoQuality:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;->getFps()I

    move-result v0

    iput v0, v1, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;->fps:I

    new-instance v0, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;

    invoke-direct {v0, v1}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;-><init>(Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperOption;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->o:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    invoke-virtual {v2}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->getStartTimeUS()F

    move-result v3

    float-to-long v3, v3

    invoke-virtual {v2}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->getEndTimeUS()F

    move-result v2

    float-to-long v5, v2

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->o:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->createSegment(JJ)Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieSegment;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->o:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->startEdit(Ljava/util/List;)V

    return-void
.end method

.method static synthetic j(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->o()V

    return-void
.end method

.method private k()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->i()V

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;->Paused:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->notifyRecordingState(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;)V

    return-void
.end method

.method static synthetic k(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->p()V

    return-void
.end method

.method private l()V
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->validateMinRecordingTime()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "Recording time is less than %d seconds"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getMinRecordingTime()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;->LessMinRecordingTime:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->validateMovieFile()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Invalid recording time  : %f seconds"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getMovieDuration()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;->InvalidRecordingTime:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->v()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getRecordMode()Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;->Keep:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    if-ne v0, v1, :cond_2

    const-wide/32 v0, 0x901002

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->j()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getMovieOutputPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->notifyRecordingResultWithVideoFile(Ljava/io/File;)V

    :goto_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->v()V

    return-void
.end method

.method static synthetic l(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->r()V

    return-void
.end method

.method private m()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;->RecordCompleted:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getMovieDuration()F

    move-result v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getVideoDelegate()Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$TuSDKRecordVideoCameraDelegate;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getMaxRecordingTime()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getMaxRecordingTime()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getMaxRecordingTime()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    new-instance v3, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$5;

    invoke-direct {v3, p0, v2, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$5;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;FF)V

    invoke-static {v3}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getMaxRecordingTime()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getMaxRecordingTime()I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getRecordMode()Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;->Keep:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->p()V

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;->RecordCompleted:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->notifyRecordingState(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->q()V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic m(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->q()V

    return-void
.end method

.method private n()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->w:J

    return-void
.end method

.method static synthetic n(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->s()V

    return-void
.end method

.method private o()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->validateMaxRecordingTime()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;->MoreMaxDuration:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->n()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->s:F

    iput v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->t:F

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->g()V

    invoke-super {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->startRecording()V

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;->Recording:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->notifyRecordingState(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;)V

    return-void
.end method

.method private p()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->isRecordingPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getRecordMode()Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;->Normal:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->_stopRecording()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->o:Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper;->cancel()V

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->pauseEncoder()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->k()V

    :cond_3
    :goto_0
    return-void
.end method

.method private q()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->validateMinRecordingTime()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;->LessMinRecordingTime:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->h()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->isRecordingPaused()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->l()V

    return-void

    :cond_1
    invoke-super {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->stopRecording()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->h()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->l()V

    return-void
.end method

.method private r()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->s()V

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;->Canceled:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->notifyRecordingState(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;)V

    return-void
.end method

.method private s()V
    .locals 0

    invoke-super {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->stopRecording()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->h()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->v()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->t()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->u()V

    return-void
.end method

.method private t()V
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getRecordMode()Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;->Keep:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->f:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->f:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->f:Ljava/io/File;

    return-void
.end method

.method private u()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->s:F

    iput v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->t:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->u:J

    iput-wide v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->v:J

    iput-wide v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->x:J

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->n()V

    return-void
.end method

.method private v()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->j:Z

    const/4 v1, -0x1

    iput v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->l:I

    iput v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->k:I

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->y:Z

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->z:Z

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->u()V

    return-void
.end method

.method private w()Ljava/io/File;
    .locals 6

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->isSaveToAlbum()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->x()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->getAppTempPath()Ljava/io/File;

    move-result-object v1

    const-string v2, "lsq_%s.mp4"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lorg/lasque/tusdk/core/utils/StringHelper;->timeStampString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private x()Ljava/io/File;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getSaveToAlbumName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/StringHelper;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getSaveToAlbumName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/AlbumHelper;->getAlbumVideoFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/utils/image/AlbumHelper;->getAlbumVideoFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private y()Z
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->z()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->isCanCaptureAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private z()Z
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public _stopRecording()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->isRecordingPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->q()V

    :cond_1
    :goto_0
    return-void
.end method

.method public cancelRecording()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->n:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->n:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public clearAllFragments()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getRecordMode()Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;->Normal:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getRecordingFragmentSize()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->n:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->n:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public finishRecording()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->n:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;->removeMessages(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->n:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getMaxRecordingTime()I
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->r:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getMediaMuxer()Landroid/media/MediaMuxer;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->mMuxer:Landroid/media/MediaMuxer;

    return-object v0
.end method

.method public getMinAvailableSpaceBytes()J
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->i:J

    return-wide v0
.end method

.method public getMinRecordingTime()I
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->q:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getMovieDuration()F
    .locals 2

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->c()F

    move-result v0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->d()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->b()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getMovieOutputPath()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->f:Ljava/io/File;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->w()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->f:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->f:Ljava/io/File;

    return-object v0
.end method

.method public getRecordMode()Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->c:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    return-object v0
.end method

.method public getRecordingFragmentSize()I
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getRecordMode()Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;->Normal:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSaveToAlbumName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoDelegate()Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$TuSDKRecordVideoCameraDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->p:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$TuSDKRecordVideoCameraDelegate;

    return-object v0
.end method

.method public getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->mVideoEncoderSetting:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->getDefaultRecordSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->mVideoEncoderSetting:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    :cond_0
    invoke-super {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v0

    return-object v0
.end method

.method protected initCamera()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->initCamera()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->setEnableFaceDetection(Z)V

    return-void
.end method

.method public initOutputSettings()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->initOutputSettings()V

    new-instance v0, Lorg/lasque/tusdk/impl/components/camera/TuVideoFocusTouchView;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/lasque/tusdk/impl/components/camera/TuVideoFocusTouchView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->setFocusTouchView(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->setEnableAudioCapture(Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->updateOutputFilterSettings()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->B:Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->setVideoDataDelegate(Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->A:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->setAudioDataDelegate(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;)V

    return-void
.end method

.method public isSaveToAlbum()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->g:Z

    return v0
.end method

.method public lastVideoFragmentRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getRecordingFragmentSize()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->d:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    return-object v0

    :cond_1
    return-object v1
.end method

.method protected notifyRecordingResultWithVideoFile(Ljava/io/File;)V
    .locals 2

    new-instance v0, Lorg/lasque/tusdk/core/video/TuSDKVideoResult;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/video/TuSDKVideoResult;-><init>()V

    iput-object p1, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoResult;->videoPath:Ljava/io/File;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->isSaveToAlbum()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->saveMp4ToAlbum(Landroid/content/Context;Ljava/io/File;)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object p1

    iput-object p1, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoResult;->videoSqlInfo:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoResult;->videoSqlInfo:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    invoke-static {p1, v1}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->notifyRefreshAblum(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;)V

    :cond_0
    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->notifyResult(Lorg/lasque/tusdk/core/video/TuSDKVideoResult;)V

    return-void
.end method

.method protected notifyRecordingState(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getVideoDelegate()Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$TuSDKRecordVideoCameraDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$2;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$2;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected notifyResult(Lorg/lasque/tusdk/core/video/TuSDKVideoResult;)V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->u()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->f:Ljava/io/File;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getVideoDelegate()Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$TuSDKRecordVideoCameraDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$4;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$4;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;Lorg/lasque/tusdk/core/video/TuSDKVideoResult;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pauseCameraCapture()V
    .locals 0

    invoke-super {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->stopRecording()V

    invoke-super {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->pauseCameraCapture()V

    return-void
.end method

.method public pauseRecording()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->n:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;->removeMessages(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->n:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public popVideoFragment()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getRecordingFragmentSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->lastVideoFragmentRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/32 v1, 0x901010

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-object v0
.end method

.method public setMaxRecordingTime(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->r:I

    return-void
.end method

.method public setMinAvailableSpaceBytes(J)V
    .locals 0

    iput-wide p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->i:J

    return-void
.end method

.method public setMinRecordingTime(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->q:I

    return-void
.end method

.method public final setRecordMode(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;->Keep:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    if-ne p1, v0, :cond_1

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->videoRecordContinuousEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "You are not allowed to use the record continuous mode, please see http://tusdk.com"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->c:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    return-void
.end method

.method public setSaveToAlbum(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Could not set \'saveToAlbum\' while recording."

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->g:Z

    return-void
.end method

.method public setSaveToAlbumName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->h:Ljava/lang/String;

    return-void
.end method

.method protected setState(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->setState(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;->StateStarted:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->c:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;->Keep:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    if-ne p1, v0, :cond_0

    const-wide/32 v0, 0x901000

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x900002

    :goto_0
    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;->StateUnknow:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->c:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;->Keep:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    if-ne p1, v0, :cond_2

    const-wide/32 v0, 0x901001

    goto :goto_0

    :cond_2
    const-wide/32 v0, 0x900003

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public setVideoDelegate(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$TuSDKRecordVideoCameraDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->p:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$TuSDKRecordVideoCameraDelegate;

    return-void
.end method

.method public startRecording()V
    .locals 7

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "TuSDKRecordVideoCamera | There is no space available for your device \uff08Min %dM is required\uff09"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getMinAvailableSpaceBytes()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    div-long/2addr v3, v5

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;->NotEnoughSpace:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->n:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->n:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stopCameraCapture()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->stopCameraCapture()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->isCameraFacingChangeing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->h()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->stopAudioRecording()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->stopVideoDataEncoder()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->v()V

    return-void
.end method

.method public stopRecording()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->n:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->n:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public switchFilter(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->isFilterChanging()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->equalsCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->isNormalFilter(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->switchFilter(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected updateOutputFilterSettings()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->isDisableMirrorFrontFacing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->isFrontFacingCameraPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->isHorizontallyMirrorFrontFacingCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getVideoDataEncoder()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoDataEncoderInterface;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;->setEnableHorizontallyFlip(Z)V

    :cond_1
    return-void
.end method

.method protected validateMaxRecordingTime()Z
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getMaxRecordingTime()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getMovieDuration()F

    move-result v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getMaxRecordingTime()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected validateMinRecordingTime()Z
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getMovieDuration()F

    move-result v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getMinRecordingTime()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected validateMovieFile()Z
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->isCanCaptureAudio()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->z:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->f:Ljava/io/File;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->y:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->f:Ljava/io/File;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method
