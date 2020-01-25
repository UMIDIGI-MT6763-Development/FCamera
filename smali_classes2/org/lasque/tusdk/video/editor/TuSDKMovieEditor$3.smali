.class Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->f()V
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

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$3;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$3;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-static {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$3;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-static {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->a(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;

    move-result-object v0

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$3;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-static {v2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->b(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;->startRecording(Landroid/opengl/EGLContext;Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method
