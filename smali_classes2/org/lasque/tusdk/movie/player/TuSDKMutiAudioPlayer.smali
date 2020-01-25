.class public Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;,
        Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$TuSDKMutiAudioPlayerDelegate;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/media/AudioTrack;

.field private c:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

.field private d:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$TuSDKMutiAudioPlayerDelegate;

.field private e:Z

.field private f:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

.field private g:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

.field private h:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$OnAudioMixerDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/lasque/tusdk/video/mixer/TuSDKAverageAudioMixer;

    invoke-direct {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAverageAudioMixer;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->c:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->e:Z

    sget-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->Idle:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    iput-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->f:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    new-instance v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    invoke-direct {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->g:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    new-instance v0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$2;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$2;-><init>(Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;)V

    iput-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->h:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$OnAudioMixerDelegate;

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;)Landroid/media/AudioTrack;
    .locals 10

    iget v0, p1, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->sampleRate:I

    iget v1, p1, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->channelConfig:I

    iget v2, p1, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->audioFormat:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v8

    new-instance v0, Landroid/media/AudioTrack;

    iget v5, p1, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->sampleRate:I

    iget v6, p1, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->channelConfig:I

    iget v7, p1, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->audioFormat:I

    const/4 v4, 0x3

    const/4 v9, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    return-object v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->b:Landroid/media/AudioTrack;

    return-object p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;)Landroid/media/AudioTrack;
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->a(Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;)Landroid/media/AudioTrack;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;)Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->f:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    return-object p0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->c:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

    iget-object v1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->h:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$OnAudioMixerDelegate;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->setOnAudioMixDelegate(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$OnAudioMixerDelegate;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->c:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

    iget-object v1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->mixAudios(Ljava/util/List;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "%s : Please set a valid file path"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->f:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->f:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->d:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$TuSDKMutiAudioPlayerDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$TuSDKMutiAudioPlayerDelegate;->onStateChanged(Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->a(Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;)V

    return-void
.end method

.method private b()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->d()Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->d()Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    sget-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->Playing:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->a(Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->b()V

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->c:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->cancel()V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->b:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->b:Landroid/media/AudioTrack;

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->g:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->cancel()V

    :cond_3
    iget-boolean v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->e:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->a()V

    return-void

    :cond_4
    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->f:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    sget-object v1, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->Playing:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    if-ne v0, v1, :cond_5

    sget-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->Complete:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->a(Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;)V

    :cond_5
    sget-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->Idle:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    iput-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->f:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    return-void
.end method

.method static synthetic c(Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->c()V

    return-void
.end method

.method private d()Landroid/media/AudioTrack;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->b:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->f:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    sget-object v1, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->Complete:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->defaultAudioInfo()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->a(Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;)Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->b:Landroid/media/AudioTrack;

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->b:Landroid/media/AudioTrack;

    return-object v0
.end method


# virtual methods
.method public asyncPrepare(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->f:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    sget-object v1, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->Playing:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->f:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    sget-object v1, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->PreParing:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->stop()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->a:Ljava/util/List;

    iget-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->a:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->g:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->setAudioEntry(Ljava/util/List;)V

    iget-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->g:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    new-instance v0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$1;-><init>(Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;)V

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->setDelegate(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$TuSDKAudioDecoderTaskMangaerDelegate;)V

    iget-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->g:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer;->start()V

    return-void

    :cond_2
    :goto_0
    const-string p1, "%s : Please set a valid file path"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public getDelegate()Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$TuSDKMutiAudioPlayerDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->d:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$TuSDKMutiAudioPlayerDelegate;

    return-object v0
.end method

.method public getState()Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->f:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    return-object v0
.end method

.method public setAudioMixer(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;)Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->c:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

    return-object p0
.end method

.method public setDelegate(Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$TuSDKMutiAudioPlayerDelegate;)Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->d:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$TuSDKMutiAudioPlayerDelegate;

    return-object p0
.end method

.method public setLooping(Z)Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->e:Z

    return-object p0
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->f:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    sget-object v1, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->Playing:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->f:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    sget-object v1, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->PreParing:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-boolean v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->e:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->e:Z

    invoke-direct {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->c()V

    iput-boolean v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->e:Z

    return-void
.end method

.method public write([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->b:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->f:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    sget-object v1, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->Playing:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioTrack;->write([BII)I

    :cond_1
    :goto_0
    return-void
.end method
