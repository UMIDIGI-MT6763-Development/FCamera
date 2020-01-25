.class Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->d(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->e(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)I

    move-result v2

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->d(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;I)I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->f(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    aget v0, v0, v2

    invoke-static {v3, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->d(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;I)I

    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->g(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->h(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;Z)Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    new-instance v2, Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->i(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->b(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;Z)Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->j(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->k(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraEngine;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->j(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraEngine;->onCameraWillOpen(Landroid/graphics/SurfaceTexture;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;->l(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCameraBase;)V

    return-void
.end method
