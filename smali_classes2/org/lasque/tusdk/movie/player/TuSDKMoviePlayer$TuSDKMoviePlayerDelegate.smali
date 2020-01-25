.class public interface abstract Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$TuSDKMoviePlayerDelegate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TuSDKMoviePlayerDelegate"
.end annotation


# virtual methods
.method public abstract onCompletion()V
.end method

.method public abstract onProgress(I)V
.end method

.method public abstract onSeekComplete()V
.end method

.method public abstract onStateChanged(Lorg/lasque/tusdk/movie/player/TuSDKMoviePlayer$PlayerState;)V
.end method

.method public abstract onVideSizeChanged(Landroid/media/MediaPlayer;II)V
.end method
