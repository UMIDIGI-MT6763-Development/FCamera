.class Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->p()V
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

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$6;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$6;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-static {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->e(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$6;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-static {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->e(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->clearDecodeCahceInfo()Z

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$6;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-static {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->f(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->getAudioEntry()Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/editor/TuSDKMediaAudioEffectData;->getAudioEntry()Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioEntry;->clearDecodeCahceInfo()Z

    goto :goto_0

    :cond_2
    return-void
.end method
