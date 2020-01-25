.class Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->seekToPreview(ILorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$OnSeekToPreviewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$OnSeekToPreviewListener;

.field final synthetic b:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$OnSeekToPreviewListener;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1;->b:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    iput-object p2, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$OnSeekToPreviewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1;->b:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    invoke-static {v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1;->b:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    invoke-static {v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->c(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1;->b:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    invoke-static {v1}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1;->b:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    invoke-virtual {v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->start()V

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1;->b:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    new-instance v1, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1$1;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1$1;-><init>(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1;)V

    invoke-static {v0, v1}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$OnSeekToPreviewListener;)V

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1;->b:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    invoke-static {v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->d(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->seekTo(J)V

    return-void
.end method
