.class Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$3;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$3;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    invoke-static {v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->c(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$3;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    invoke-static {v1}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$3;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    invoke-static {v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$3;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    invoke-static {v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$3;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    invoke-static {v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->e(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;)Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$3;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    invoke-static {v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->e(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;)Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$3;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    invoke-static {v1}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$3;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    invoke-static {v2}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    div-int/2addr v1, v2

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerDelegate;->onProgress(I)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$3;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    invoke-static {v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->c(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$3;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    invoke-static {v1}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$3;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    invoke-static {v2}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->f(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
