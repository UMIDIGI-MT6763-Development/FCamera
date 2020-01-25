.class public Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;
.super Lorg/lasque/tusdk/video/mixer/TuSDKMovieMixer;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$AsyncVideoMixTask;,
        Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$OnMP4MovieMixerDelegate;,
        Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;,
        Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$OnMP4MovieMixerDelegate;

.field private b:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;

.field private c:F

.field private d:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

.field private e:Ljava/lang/String;

.field private f:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

.field private g:Z

.field private h:Z

.field private i:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$AsyncVideoMixTask;

.field private j:Landroid/media/MediaExtractor;

.field private k:Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

.field private l:Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

.field private m:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

.field private n:Landroid/media/MediaCodec;

.field private o:Ljava/io/FileOutputStream;

.field private p:Ljava/lang/String;

.field private q:Ljava/io/RandomAccessFile;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;",
            ">;"
        }
    .end annotation
.end field

.field private s:[B

.field private t:I

.field private u:J

.field private v:J

.field private w:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$OnAudioMixerDelegate;

.field private x:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$TuSDKMovieWriterDelegate;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMovieMixer;-><init>()V

    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;->Idle:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;

    iput-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->b:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->c:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->g:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->h:Z

    new-instance v1, Lorg/lasque/tusdk/video/mixer/TuSDKAverageAudioMixer;

    invoke-direct {v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAverageAudioMixer;-><init>()V

    iput-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->m:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

    const/16 v1, 0x1000

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->s:[B

    iput v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->t:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->u:J

    iput-wide v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->v:J

    new-instance v0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$1;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)V

    iput-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->w:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$OnAudioMixerDelegate;

    new-instance v0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$2;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$2;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)V

    iput-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->x:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$TuSDKMovieWriterDelegate;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;J)J
    .locals 0

    iput-wide p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->u:J

    return-wide p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)Ljava/io/FileOutputStream;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->o:Ljava/io/FileOutputStream;

    return-object p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;)Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->l:Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    return-object p1
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->cancle()V

    new-instance v0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$AsyncVideoMixTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$AsyncVideoMixTask;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$1;)V

    iput-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->i:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$AsyncVideoMixTask;

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->i:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$AsyncVideoMixTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$AsyncVideoMixTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->m:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

    iget-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->w:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$OnAudioMixerDelegate;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->setOnAudioMixDelegate(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$OnAudioMixerDelegate;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->m:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->mixAudios(Ljava/util/List;)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/video/TuSDKVideoResult;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$OnMP4MovieMixerDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$OnMP4MovieMixerDelegate;->onMixerComplete(Lorg/lasque/tusdk/core/video/TuSDKVideoResult;)V

    const-wide/32 v0, 0x903002

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$OnMP4MovieMixerDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$OnMP4MovieMixerDelegate;->onErrrCode(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;)V

    :cond_0
    return-void
.end method

.method private a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->b:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->b:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$OnMP4MovieMixerDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$OnMP4MovieMixerDelegate;->onStateChanged(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;Lorg/lasque/tusdk/core/video/TuSDKVideoResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a(Lorg/lasque/tusdk/core/video/TuSDKVideoResult;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;)V

    return-void
.end method

.method private a(Landroid/media/MediaFormat;)Z
    .locals 7

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v3

    move v4, v1

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-object v5, v3, v4

    const-string v6, "mime"

    invoke-virtual {p1, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method static synthetic b(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;J)J
    .locals 0

    iput-wide p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->v:J

    return-wide p1
.end method

.method private b()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->getAppTempPath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lsq_%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lorg/lasque/tusdk/core/utils/StringHelper;->timeStampString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->p:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;)Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->b:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;

    return-object p1
.end method

.method static synthetic b(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a()V

    return-void
.end method

.method private c()J
    .locals 4

    iget-wide v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->v:J

    iget-wide v2, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->u:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static synthetic c(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->g:Z

    return p0
.end method

.method private d()J
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->k:Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->durationTimeUs:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method static synthetic d(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)J
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->u:J

    return-wide v0
.end method

.method static synthetic e(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->f:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    return-object p0
.end method

.method private e()Z
    .locals 7

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->f:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->validateTimeRange()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->g:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->d()J

    move-result-wide v3

    long-to-float v0, v3

    iget-object v3, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->f:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {v3}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v3

    invoke-virtual {v3}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->getStartTimeUS()F

    move-result v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->f:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {v3}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v3

    invoke-virtual {v3}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->durationTimeUS()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->c()J

    move-result-wide v3

    long-to-float v3, v3

    cmpg-float v0, v3, v0

    if-gez v0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->f:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->isLooping()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->c()J

    move-result-wide v3

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->d()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method private f()Landroid/media/MediaFormat;
    .locals 4

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->k()Landroid/media/MediaCodec;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->k()Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic f(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->h()V

    return-void
.end method

.method private g()Landroid/media/MediaFormat;
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->findVideoTrack()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->getMediaExtractor()Landroid/media/MediaExtractor;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)Lorg/lasque/tusdk/core/video/TuSDKVideoResult;
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->o()Lorg/lasque/tusdk/core/video/TuSDKVideoResult;

    move-result-object p0

    return-object p0
.end method

.method private h()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->getMediaExtractor()Landroid/media/MediaExtractor;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->onStopeed()V

    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;->Failed:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;)V

    const-string v0, "%s : Please check the video file path"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->g()Landroid/media/MediaFormat;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->onStopeed()V

    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;->Failed:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;)V

    const-string v0, "%s Invalid video format"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->addVideoTrack(Landroid/media/MediaFormat;)I

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->createWithMediaFormat(Landroid/media/MediaFormat;Z)Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->k:Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->getMediaWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->k:Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    iget v1, v1, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->degree:I

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->setOrientationHint(I)V

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->k()Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->f()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->addAudioTrack(Landroid/media/MediaFormat;)I

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->startMovieWriter()V

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->i()V

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->j()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->onStopeed()V

    return-void
.end method

.method private i()V
    .locals 9

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->getMediaExtractor()Landroid/media/MediaExtractor;

    move-result-object v0

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->g()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->getMediaExtractor()Landroid/media/MediaExtractor;

    move-result-object v2

    invoke-static {v2}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    const-string v2, "width"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string v3, "height"

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v2, v1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-boolean v3, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->g:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->f:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->validateTimeRange()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->getMediaWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->setWriteMuteAudioPlaceholderData(Z)V

    :cond_0
    const/4 v3, 0x0

    move v5, v3

    :goto_0
    if-nez v5, :cond_2

    iget-object v6, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->b:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;

    sget-object v7, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;->Mixing:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;

    if-ne v6, v7, :cond_2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v6

    if-gez v6, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    iput-wide v7, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v7

    iput v7, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v6, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v1, v2}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->writeVideoSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private j()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->getMediaWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->hasAudioTrack()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->b:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;

    sget-object v2, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;->Mixing:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;

    if-ne v0, v2, :cond_2

    if-nez v1, :cond_1

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->l()Z

    move-result v0

    move v1, v0

    :cond_1
    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->m()Z

    move-result v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private k()Landroid/media/MediaCodec;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->n:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->q()Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->n:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->n:Landroid/media/MediaCodec;

    return-object v0
.end method

.method private l()Z
    .locals 11

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->n:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_2

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :try_start_0
    iget-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->q:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->s:[B

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->e()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v4, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->n:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->q:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->q:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->s:[B

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    :cond_1
    iget-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->s:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->t:I

    iget-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->s:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->t:I

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->p()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object v0

    iget v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->t:I

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->frameTimeUsWithAudioSize(I)J

    move-result-wide v8

    iget-object v4, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->n:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->s:[B

    array-length v7, v0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private m()Z
    .locals 8

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v2, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->n:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_8

    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v3

    :cond_0
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v4, :cond_3

    aget-object v0, v0, v2

    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-wide v4, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->u:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    iget-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v4, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->u:J

    :cond_1
    iget-wide v4, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->v:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iget-wide v4, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->u:J

    iput-wide v4, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->v:J

    :cond_2
    iget-wide v4, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->v:J

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->p()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object v6

    invoke-virtual {v6}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->getFrameInterval()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->v:J

    iget-wide v4, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->v:J

    iput-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->writeAudioSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_3
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget v0, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->c()J

    move-result-wide v4

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->d()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-ltz v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->f:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->validateTimeRange()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->g:Z

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->f:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->isLooping()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->e()Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    :cond_8
    const/4 v0, -0x3

    if-ne v2, v0, :cond_9

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    :cond_9
    return v3
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    iget-boolean v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->m:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->clearDecodeCahceInfo()V

    :cond_1
    return-void
.end method

.method private o()Lorg/lasque/tusdk/core/video/TuSDKVideoResult;
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->k:Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/video/TuSDKVideoResult;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/video/TuSDKVideoResult;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->getOutputFilePah()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoResult;->videoPath:Ljava/io/File;

    iget-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->k:Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    iget-wide v1, v1, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->durationTimeUs:J

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoResult;->duration:I

    iget-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->k:Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    iput-object v1, v0, Lorg/lasque/tusdk/core/video/TuSDKVideoResult;->videoInfo:Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    return-object v0
.end method

.method private p()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->l:Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->defaultAudioInfo()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->l:Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->l:Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    return-object v0
.end method

.method private q()Landroid/media/MediaCodec;
    .locals 4

    const-string v0, "audio/mp4a-latm"

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    new-instance v1, Landroid/media/MediaFormat;

    invoke-direct {v1}, Landroid/media/MediaFormat;-><init>()V

    const-string v2, "mime"

    const-string v3, "audio/mp4a-latm"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "bitrate"

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->p()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object v3

    iget v3, v3, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->bitrate:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "channel-count"

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->p()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object v3

    iget v3, v3, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->channel:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "sample-rate"

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->p()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object v3

    iget v3, v3, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->sampleRate:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "aac-profile"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-object v0
.end method


# virtual methods
.method public cancle()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->m:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->cancel()V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->i:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$AsyncVideoMixTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$AsyncVideoMixTask;->cancel()V

    :cond_1
    return-void
.end method

.method public findVideoTrack()I
    .locals 5

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->getMediaExtractor()Landroid/media/MediaExtractor;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->getMediaExtractor()Landroid/media/MediaExtractor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->getMediaExtractor()Landroid/media/MediaExtractor;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "video/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getDelegate()Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$OnMP4MovieMixerDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$OnMP4MovieMixerDelegate;

    return-object v0
.end method

.method public getMediaExtractor()Landroid/media/MediaExtractor;
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->j:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->j:Landroid/media/MediaExtractor;

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->d:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->j:Landroid/media/MediaExtractor;

    iget-object v2, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->d:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    invoke-virtual {v2}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->j:Landroid/media/MediaExtractor;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->context()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->d:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    invoke-virtual {v3}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->getFileUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    iput-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->j:Landroid/media/MediaExtractor;

    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->j:Landroid/media/MediaExtractor;

    return-object v0
.end method

.method public getOutputFilePah()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->getAppTempPath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lsq_%s.mp4"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lorg/lasque/tusdk/core/utils/StringHelper;->timeStampString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->e:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected getOutputFormat()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;->MPEG_4:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;

    return-object v0
.end method

.method public mix(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz p2, :cond_b

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKMediaUtils;->getVideoFormat(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;)Landroid/media/MediaFormat;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-direct {p0, v2}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a(Landroid/media/MediaFormat;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_3

    :cond_2
    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->d:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->r:Ljava/util/List;

    if-eqz p2, :cond_3

    iget-object v2, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->r:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    if-eqz p3, :cond_5

    iget-object p2, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->r:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {p3, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->setTrunk(Z)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    goto :goto_0

    :cond_4
    new-instance p2, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-direct {p2, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;)V

    iput-object p2, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->f:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->f:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {p1, v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->setTrunk(Z)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->f:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    iget p2, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->c:F

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->setVolume(F)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->r:Ljava/util/List;

    iget-object p2, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->f:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->r:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {p2}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->isTrunk()Z

    move-result p3

    if-eqz p3, :cond_6

    iput-object p2, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->f:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->f:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->r:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_8

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->r:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->f:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    :cond_8
    :goto_2
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->b()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->o:Ljava/io/FileOutputStream;

    new-instance p1, Ljava/io/RandomAccessFile;

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->b()Ljava/lang/String;

    move-result-object p2

    const-string p3, "rw"

    invoke-direct {p1, p2, p3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->q:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->getMediaWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object p1

    iget-object p2, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->x:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$TuSDKMovieWriterDelegate;

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->setDelegate(Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$TuSDKMovieWriterDelegate;)V

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->r:Ljava/util/List;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a(Ljava/util/List;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "%s : Please set a valid file path"

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p0, p3, v0

    invoke-static {p2, p3}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-object p1, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;->Failed:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;)V

    return-void

    :cond_9
    :goto_3
    sget-object p1, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;->Failed:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;)V

    sget-object p1, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;->UnsupportedVideoFormat:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;)V

    if-eqz v2, :cond_a

    const-string p1, "%s | The device does not support this video format : %s"

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p0, p2, v0

    const-string p3, "mime"

    invoke-virtual {v2, p3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    return-void

    :cond_b
    :goto_4
    const-string p1, "%s : Please set a valid audio file path"

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;->Failed:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;)V

    return-void

    :cond_c
    :goto_5
    const-string p1, "%s : Please set a valid video file path"

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;->Failed:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;)V

    return-void
.end method

.method protected onStopeed()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->stopMovieWriter()V

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->n:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->n:Landroid/media/MediaCodec;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->j:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    iput-object v1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->j:Landroid/media/MediaExtractor;

    :cond_1
    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->n()V

    return-void
.end method

.method public setClearAudioDecodeCacheInfoOnCompleted(Z)Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->h:Z

    return-object p0
.end method

.method public setDelegate(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$OnMP4MovieMixerDelegate;)Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$OnMP4MovieMixerDelegate;

    return-object p0
.end method

.method public setIgnoreTrunkAudioTimeRange(Z)Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->g:Z

    return-object p0
.end method

.method public setOutputFilePath(Ljava/lang/String;)Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setVideoSoundVolume(F)Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->f:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->isTrunk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->f:Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->setVolume(F)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    :cond_0
    iput p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->c:F

    return-object p0
.end method

.method public bridge synthetic setVideoSoundVolume(F)Lorg/lasque/tusdk/video/mixer/TuSDKMovieMixerInterface;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->setVideoSoundVolume(F)Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    move-result-object p1

    return-object p1
.end method
