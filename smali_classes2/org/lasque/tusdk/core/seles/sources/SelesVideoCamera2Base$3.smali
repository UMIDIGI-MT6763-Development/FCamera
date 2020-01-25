.class Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->d(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->d(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;I)I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;Z)Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;

    new-instance v2, Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->e(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->b(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;Z)Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->f(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;

    iget-object v1, v1, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;

    iget-object v2, v2, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->f(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->g(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;)Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Engine;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;

    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->f(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Engine;->onCameraWillOpen(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
