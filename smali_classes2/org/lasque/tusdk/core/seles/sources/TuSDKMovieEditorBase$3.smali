.class Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->e()V
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

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$3;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$3;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->e(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->d(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;I)I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$3;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    new-instance v1, Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->f(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->a(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$3;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->g(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$3;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$3;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    new-instance v1, Landroid/view/Surface;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->g(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->a(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;Landroid/view/Surface;)Landroid/view/Surface;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$3;->a:Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->a(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;Z)Z

    return-void
.end method
