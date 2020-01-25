.class public Lorg/lasque/tusdk/api/TuSDKMediaRecoder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;,
        Lorg/lasque/tusdk/api/TuSDKMediaRecoder$TuSDKMediaRecoderDelegate;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$TuSDKMediaRecoderDelegate;

.field private b:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

.field private c:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

.field private d:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

.field private e:I

.field private f:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

.field private g:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

.field private h:Ljava/io/File;

.field private i:Ljava/io/FileDescriptor;

.field private j:Z

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$TuSDKMovieWriterDelegate;

.field private p:Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

.field private q:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->Idle:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->b:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->j:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->l:J

    new-instance v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$2;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$2;-><init>(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)V

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->o:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$TuSDKMovieWriterDelegate;

    new-instance v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$3;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$3;-><init>(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)V

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->p:Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    new-instance v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$4;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$4;-><init>(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)V

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->q:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;J)J
    .locals 0

    iput-wide p1, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->m:J

    return-wide p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)Lorg/lasque/tusdk/api/TuSDKMediaRecoder$TuSDKMediaRecoderDelegate;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$TuSDKMediaRecoderDelegate;

    return-object p0
.end method

.method private final a()Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->c:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$1;-><init>(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->setVideoEncoderSetting(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;)V

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->p:Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->setDelegate(Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;)V

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->c:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->c:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    return-object v0
.end method

.method private a(Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->b:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->b:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$TuSDKMediaRecoderDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$TuSDKMediaRecoderDelegate;->onMediaRecoderStateChanged(Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;J)J
    .locals 0

    iput-wide p1, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->k:J

    return-wide p1
.end method

.method private b()Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->f:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->defaultCaptureSetting()Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;

    move-result-object v1

    invoke-static {}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->defaultEncoderSetting()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;-><init>(Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;)V

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->f:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->f:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->getAudioEncoder()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->q:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;->setDelegate(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->f:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    return-object v0
.end method

.method static synthetic b(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->g()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;J)J
    .locals 0

    iput-wide p1, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->l:J

    return-wide p1
.end method

.method static synthetic c(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->f:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    return-object p0
.end method

.method private c()Z
    .locals 3

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->b()Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->isPrepared()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->startRecording()V

    return v1

    :cond_2
    :goto_0
    const-string v0, "Please open the audio permissions"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->f:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    return v1
.end method

.method static synthetic d(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;J)J
    .locals 0

    iput-wide p1, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->n:J

    return-wide p1
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->f:Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->stopRecording()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)Z
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->h()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)J
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->k:J

    return-wide v0
.end method

.method private final e()Z
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->d:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->i:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    sget-object v2, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;->MPEG_4:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;

    invoke-direct {v1, v0, v2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;-><init>(Ljava/io/FileDescriptor;Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;)V

    iput-object v1, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->d:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->getOutputFilePath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;->MPEG_4:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->create(Ljava/lang/String;Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;)Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->d:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->d:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->o:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$TuSDKMovieWriterDelegate;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->setDelegate(Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$TuSDKMovieWriterDelegate;)V

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->d:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    iget v1, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->e:I

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->setOrientationHint(I)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic f(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)J
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->n:J

    return-wide v0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->d:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->stop()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->d:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    :cond_0
    return-void
.end method

.method static synthetic g(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)J
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->l:J

    return-wide v0
.end method

.method private g()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->d:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    return-object v0
.end method

.method static synthetic h(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)J
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->m:J

    return-wide v0
.end method

.method private h()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->j:Z

    return v0
.end method


# virtual methods
.method public cancelRecording()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->b:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    sget-object v1, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->Idle:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->d()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->stopVideoDataEncoder()V

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->f()V

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->h:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->l:J

    iput-wide v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->n:J

    sget-object v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->Canceled:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->a(Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;)V

    sget-object v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->Idle:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->b:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    return-void
.end method

.method public getDelegate()Lorg/lasque/tusdk/api/TuSDKMediaRecoder$TuSDKMediaRecoderDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$TuSDKMediaRecoderDelegate;

    return-object v0
.end method

.method public final getOutputFilePath()Ljava/io/File;
    .locals 6

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->h:Ljava/io/File;

    if-nez v0, :cond_0

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

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->h:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->h:Ljava/io/File;

    return-object v0
.end method

.method public getState()Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->b:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    return-object v0
.end method

.method public getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->g:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->getDefaultRecordSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->g:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->g:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    return-object v0
.end method

.method public isPaused()Z
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->c:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->d:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->b:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    sget-object v2, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->Paused:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isRecording()Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->c:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->d:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->c:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->d:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public pauseRecording()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->c:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->pausdRecording()V

    :cond_1
    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->d()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->l:J

    iput-wide v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->n:J

    sget-object v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->Paused:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->a(Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;)V

    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/api/TuSDKMediaRecoder$TuSDKMediaRecoderDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$TuSDKMediaRecoderDelegate;

    return-void
.end method

.method public setMute(Z)Lorg/lasque/tusdk/api/TuSDKMediaRecoder;
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->j:Z

    return-object p0
.end method

.method public setOrientationHint(I)Lorg/lasque/tusdk/api/TuSDKMediaRecoder;
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->e:I

    return-object p0
.end method

.method public final setOutputFileDescriptor(Ljava/io/FileDescriptor;)Lorg/lasque/tusdk/api/TuSDKMediaRecoder;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Please set the output path before starting the recording"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->i:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public final setOutputFilePath(Ljava/io/File;)Lorg/lasque/tusdk/api/TuSDKMediaRecoder;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Please set the output path before starting the recording"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->h:Ljava/io/File;

    return-object p0
.end method

.method public setVideoEncoderSetting(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;)Lorg/lasque/tusdk/api/TuSDKMediaRecoder;
    .locals 1

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->g:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->c:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->setVideoEncoderSetting(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;)V

    :cond_0
    return-object p0
.end method

.method public startRecording(Landroid/opengl/EGLContext;Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->e()Z

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->c()Z

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->startVideoDataEncoder(Landroid/opengl/EGLContext;Landroid/graphics/SurfaceTexture;)V

    sget-object p1, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->Recording:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->a(Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "startRecording : The context and surfaceTexture parameters cannot be null"

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public startVideoDataEncoder(Landroid/opengl/EGLContext;Landroid/graphics/SurfaceTexture;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->a()Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->startRecording(Landroid/opengl/EGLContext;Landroid/graphics/SurfaceTexture;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "startVideoDataEncoder : The context and surfaceTexture parameters is null"

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public stopRecording()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->b:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    sget-object v1, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->Idle:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->Saving:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->a(Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->d()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->stopVideoDataEncoder()V

    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->f()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->l:J

    iput-wide v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->n:J

    sget-object v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->RecordCompleted:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->a(Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;)V

    sget-object v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->Idle:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->b:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    return-void
.end method

.method public stopVideoDataEncoder()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->c:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->stopRecording()V

    :cond_0
    return-void
.end method

.method public updateFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->a()Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    return-void
.end method
