.class Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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

    iput-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$2;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$2;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;Z)Z

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$2;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$2;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->b(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$2;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;Z)Z

    return-void
.end method
