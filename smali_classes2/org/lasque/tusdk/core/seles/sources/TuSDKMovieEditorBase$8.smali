.class Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$8;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$8;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->l(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$8;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->k(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$8;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v2

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$8;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->getPlaygroundTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v3

    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$8;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    invoke-virtual {v4}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->isEnableDecodeingMovieAudio()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->prepare(Landroid/view/Surface;Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;Z)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$8;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->l(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->start()V

    return-void
.end method
