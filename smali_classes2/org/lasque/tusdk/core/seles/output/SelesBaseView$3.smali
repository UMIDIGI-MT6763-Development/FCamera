.class Lorg/lasque/tusdk/core/seles/output/SelesBaseView$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->imageFromCurrentlyProcessedOutput()Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Ljava/util/concurrent/Semaphore;

.field final synthetic c:Lorg/lasque/tusdk/core/seles/output/SelesBaseView;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/output/SelesBaseView;Landroid/graphics/Bitmap;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView$3;->c:Lorg/lasque/tusdk/core/seles/output/SelesBaseView;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView$3;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView$3;->b:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "image capture"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->currentGL()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView$3;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView$3;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView$3;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView$3;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    move-object v9, v0

    invoke-interface/range {v2 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView$3;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView$3;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
