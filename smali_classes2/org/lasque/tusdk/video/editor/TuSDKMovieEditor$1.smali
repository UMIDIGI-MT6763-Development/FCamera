.class Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$TuSDKMutiAudioPlayerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;Z)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$1;->b:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    iput-boolean p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->PrePared:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$1;->b:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    sget-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;->Loaded:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;)V

    iget-boolean p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$1;->a:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$1;->b:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->isPasued()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$1;->b:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->resumeProcessing()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$1;->b:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->startPreview()V

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->PreParing:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$1;->b:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    sget-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;->Loading:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    :goto_0
    invoke-static {p1, v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;)V

    iget-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$1;->b:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->stopPreview()V

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;->Idle:Lorg/lasque/tusdk/movie/player/TuSDKMutiAudioPlayer$State;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$1;->b:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    sget-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;->None:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
