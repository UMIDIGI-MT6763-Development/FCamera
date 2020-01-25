.class public Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerOption;,
        Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerDelegate;,
        Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$OnSeekToPreviewListener;,
        Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

.field private b:Landroid/media/MediaPlayer;

.field private c:Z

.field private d:Z

.field private e:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerOption;

.field private f:Z

.field private g:Landroid/view/SurfaceHolder;

.field private h:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerDelegate;

.field private i:Z

.field private j:Landroid/os/Handler;

.field private k:I

.field private l:I

.field private m:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$OnSeekToPreviewListener;

.field private n:Landroid/os/Handler;

.field private o:Landroid/view/SurfaceHolder$Callback;

.field private p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->UNINITIALIZED:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    iput-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->d:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->j:Landroid/os/Handler;

    const/16 v0, 0x14

    iput v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->k:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->n:Landroid/os/Handler;

    new-instance v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$2;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$2;-><init>(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;)V

    iput-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->o:Landroid/view/SurfaceHolder$Callback;

    new-instance v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$3;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$3;-><init>(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;)V

    iput-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->p:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->g:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$OnSeekToPreviewListener;)Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$OnSeekToPreviewListener;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->m:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$OnSeekToPreviewListener;

    return-object p1
.end method

.method private a()V
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->UNINITIALIZED:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->f:Z

    invoke-direct {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->c()Landroid/view/SurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->c()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->o:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->g:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a(Landroid/view/SurfaceHolder;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/view/SurfaceHolder;)V
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->INITIALIZING:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;)V

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->c:Z

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$OnSeekToPreviewListener;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->m:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$OnSeekToPreviewListener;

    return-void
.end method

.method private a(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;)V
    .locals 1

    iput-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    iget-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->h:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerDelegate;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerDelegate;->onStateChanged(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->i:Z

    return p1
.end method

.method private b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->e:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerOption;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerOption;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->p:Ljava/lang/Runnable;

    return-object p0
.end method

.method private b(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_1
    iget-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    iget-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    iget-boolean v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->d:Z

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$OnSeekToPreviewListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$OnSeekToPreviewListener;)V

    return-void
.end method

.method static synthetic c(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->j:Landroid/os/Handler;

    return-object p0
.end method

.method private c()Landroid/view/SurfaceView;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->e:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerOption;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerOption;->surfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public static createMoviePlayer()Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    invoke-direct {v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;-><init>()V

    return-object v0
.end method

.method static synthetic d(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->l:I

    return p0
.end method

.method private d()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->e:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerOption;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerOption;->movieUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic e(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;)Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerDelegate;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->h:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerDelegate;

    return-object p0
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    sget-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->UNINITIALIZED:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;)V

    return-void
.end method

.method static synthetic f(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->k:I

    return p0
.end method


# virtual methods
.method public destory()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->stop()V

    invoke-direct {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->e()V

    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public initAudioPlayer(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerOption;

    invoke-direct {v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerOption;-><init>()V

    iput-object p1, v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerOption;->context:Landroid/content/Context;

    iput-object p2, v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerOption;->movieUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->setOption(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerOption;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "Parameter is not valid"

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public initVideoPlayer(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceView;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerOption;

    invoke-direct {v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerOption;-><init>()V

    iput-object p1, v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerOption;->context:Landroid/content/Context;

    iput-object p2, v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerOption;->movieUri:Landroid/net/Uri;

    iput-object p3, v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerOption;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->setOption(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerOption;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "Parameter is not valid"

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isInitialized()Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    sget-object v1, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->INITIALIZED:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInitializing()Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    sget-object v1, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->INITIALIZING:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPaused()Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    sget-object v1, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->PAUSED:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    sget-object v1, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->PLAYING:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStoped()Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    sget-object v1, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->STOPED:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUninitialized()Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    sget-object v1, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->UNINITIALIZED:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->h:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerDelegate;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerDelegate;->onCompletion()V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    sget-object p1, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->INITIALIZED:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->c:Z

    iget-boolean p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->f:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->f:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->start()V

    :cond_0
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->m:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$OnSeekToPreviewListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$OnSeekToPreviewListener;->onSeekToComplete()V

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->h:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerDelegate;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerDelegate;->onSeekComplete()V

    :cond_1
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->h:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerDelegate;->onVideSizeChanged(Landroid/media/MediaPlayer;II)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->f:Z

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    sget-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->PAUSED:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;)V

    return-void
.end method

.method public restart()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->g:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b(Landroid/view/SurfaceHolder;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->start()V

    return-void
.end method

.method public resume()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->start()V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public seekToPreview(ILorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$OnSeekToPreviewListener;)V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->getDuration()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->l:I

    iget-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->n:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->n:Landroid/os/Handler;

    new-instance v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1;

    invoke-direct {v0, p0, p2}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1;-><init>(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$OnSeekToPreviewListener;)V

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->h:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerDelegate;

    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->d:Z

    return-void
.end method

.method public setOption(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerOption;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerOption;->movieUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->e:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerOption;

    invoke-direct {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public start()V
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->c()Landroid/view/SurfaceView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->i:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->f:Z

    invoke-direct {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->c()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->o:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->c()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->o:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->isInitializing()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->c:Z

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->isStoped()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->isUninitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_5
    sget-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->PLAYING:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    iput-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->j:Landroid/os/Handler;

    iget-object v1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->p:Ljava/lang/Runnable;

    iget v2, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->k:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_6
    :goto_0
    iput-boolean v1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->f:Z

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->g:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a(Landroid/view/SurfaceHolder;)V

    return-void

    :cond_7
    :goto_1
    iput-boolean v1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->f:Z

    return-void
.end method

.method public stop()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->isStoped()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->isUninitialized()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->j:Landroid/os/Handler;

    iget-object v1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->f:Z

    iput-boolean v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->c:Z

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    invoke-direct {p0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->e()V

    sget-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;->STOPED:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;)V

    :cond_1
    :goto_0
    return-void
.end method
