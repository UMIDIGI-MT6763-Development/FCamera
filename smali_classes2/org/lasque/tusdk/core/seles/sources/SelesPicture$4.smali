.class Lorg/lasque/tusdk/core/seles/sources/SelesPicture$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->imageFromCurrentlyProcessedOutput()Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Semaphore;

.field final synthetic b:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesPicture;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$4;->b:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$4;->a:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$4;->b:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$4;->b:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->a(Lorg/lasque/tusdk/core/seles/sources/SelesPicture;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->transforOrientation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->create(Lorg/lasque/tusdk/core/struct/TuSdkSize;)Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$4;->b:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$4;->b:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->getOutputRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->setOutputRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$4;->b:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->a(Lorg/lasque/tusdk/core/seles/sources/SelesPicture;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->destroy()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$4;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
