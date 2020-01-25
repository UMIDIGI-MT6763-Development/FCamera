.class public interface abstract Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorDelegate;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/sources/VideoFilterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TuSDKMovieEditorDelegate"
.end annotation


# virtual methods
.method public abstract onMovieEditComplete(Lorg/lasque/tusdk/core/video/TuSDKVideoResult;)V
.end method

.method public abstract onMovieEditProgressChanged(FF)V
.end method

.method public abstract onMovieEditorSoundStatusChanged(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;)V
.end method

.method public abstract onMovieEditorStatusChanged(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;)V
.end method
