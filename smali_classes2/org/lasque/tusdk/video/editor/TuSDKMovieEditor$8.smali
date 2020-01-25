.class Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$8;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter$TuSDKMovieWriterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;
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

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$8;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstVideoSampleDataWrited(J)V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$8;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-static {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->g(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$8;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;Z)V

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$8;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    invoke-static {v0, p1, p2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;J)V

    return-void
.end method

.method public onProgressChanged(FJ)V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$8;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-static {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->g(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$8;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    const-wide/16 v1, 0x3e8

    div-long/2addr p2, v1

    invoke-static {v0, p2, p3}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;J)V

    iget-object p2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$8;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-static {p2, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;F)V

    return-void
.end method
