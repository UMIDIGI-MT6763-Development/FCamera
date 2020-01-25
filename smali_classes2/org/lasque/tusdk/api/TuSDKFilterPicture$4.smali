.class Lorg/lasque/tusdk/api/TuSDKFilterPicture$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/api/TuSDKFilterPicture;->bufferFromCurrentlyProcessedOutput()Ljava/nio/IntBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Semaphore;

.field final synthetic b:Lorg/lasque/tusdk/api/TuSDKFilterPicture;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/api/TuSDKFilterPicture;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture$4;->b:Lorg/lasque/tusdk/api/TuSDKFilterPicture;

    iput-object p2, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture$4;->a:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture$4;->b:Lorg/lasque/tusdk/api/TuSDKFilterPicture;

    invoke-virtual {v0}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->outputImageSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->create(Lorg/lasque/tusdk/core/struct/TuSdkSize;)Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture$4;->b:Lorg/lasque/tusdk/api/TuSDKFilterPicture;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture$4;->b:Lorg/lasque/tusdk/api/TuSDKFilterPicture;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->getImageBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->a(Lorg/lasque/tusdk/api/TuSDKFilterPicture;Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->destroy()V

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture$4;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
