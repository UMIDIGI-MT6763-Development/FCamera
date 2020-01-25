.class Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$OnSeekToPreviewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1$1;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekToComplete()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1$1;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1;

    iget-object v0, v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1;->b:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    invoke-virtual {v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->pause()V

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1$1;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1;

    iget-object v0, v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$OnSeekToPreviewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1$1;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1;

    iget-object v0, v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$OnSeekToPreviewListener;

    invoke-interface {v0}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$OnSeekToPreviewListener;->onSeekToComplete()V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1$1;->a:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1;

    iget-object v0, v0, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$1;->b:Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;->a(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$OnSeekToPreviewListener;)Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$OnSeekToPreviewListener;

    return-void
.end method
