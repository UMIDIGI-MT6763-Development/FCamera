.class Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$5;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$OnMP4MovieMixerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$5;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrrCode(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$ErrorCode;)V
    .locals 0

    return-void
.end method

.method public onMixerComplete(Lorg/lasque/tusdk/core/video/TuSDKVideoResult;)V
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$5;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-static {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->d(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)V

    return-void
.end method

.method public onStateChanged(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;)V
    .locals 0

    return-void
.end method
