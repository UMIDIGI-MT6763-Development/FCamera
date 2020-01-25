.class public final Lorg/lasque/tusdk/core/seles/sources/SelesPicture;
.super Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private a:Z

.field private b:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field private c:Landroid/graphics/Rect;

.field private d:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;-><init>(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;ZZ)V
    .locals 3

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;-><init>()V

    sget-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->b:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "SelesPicture:image is null"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->a:Z

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->setShouldSmoothlyScaleOutput(Z)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Landroid/graphics/Bitmap;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p2

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minSide()I

    move-result p2

    if-gtz p2, :cond_1

    const-string p1, "Passed image must not be empty - it should be at least 1px tall and wide"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->copy()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p2

    invoke-static {p2}, Lorg/lasque/tusdk/core/seles/SelesContext;->sizeThatFitsWithinATexture(Lorg/lasque/tusdk/core/struct/TuSdkSize;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    :cond_2
    new-instance p2, Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-direct {p2, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->c:Landroid/graphics/Rect;

    new-instance p2, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$1;

    invoke-direct {p2, p0, p1, p3}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$1;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesPicture;Landroid/graphics/Bitmap;Z)V

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;II)V
    .locals 2

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;-><init>()V

    sget-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->b:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "SelesPicture:singleChannalData is null"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->a:Z

    invoke-static {p2, p3}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->c:Landroid/graphics/Rect;

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$2;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$2;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesPicture;IILjava/nio/ByteBuffer;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesPicture;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->d:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesPicture;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->b:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->a:Z

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$3;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$3;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesPicture;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-lez p2, :cond_1

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$5;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$5;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesPicture;)V

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->mountAtGLThread(Ljava/lang/Runnable;)V

    :cond_1
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->a:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->getScaleSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1, p2}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->newFrameReady(JI)V

    :cond_2
    return-void
.end method

.method public getOutputRect()Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->c:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->b:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/RectHelper;->rotationWithRotation(Landroid/graphics/Rect;Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getScaleSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-object v0
.end method

.method public imageFromCurrentlyProcessedOutput()Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->d:Landroid/graphics/Bitmap;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-instance v2, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$4;

    invoke-direct {v2, p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$4;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesPicture;Ljava/util/concurrent/Semaphore;)V

    invoke-static {v2}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "imageFromCurrentlyProcessedOutput"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public mountAtGLThread(Ljava/lang/Runnable;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->enableReferenceCounting()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->unlock()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->runPendingOnDrawTasks()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    const/16 p1, 0xb71

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void
.end method

.method public outputImageSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->getOutputRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Landroid/graphics/Rect;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    return-object v0
.end method

.method public processImage()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeAllTargets()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->removeAllTargets()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->a:Z

    return-void
.end method

.method public setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->b:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-void
.end method

.method public setOutputRect(Landroid/graphics/Rect;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    if-gt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->c:Landroid/graphics/Rect;

    :cond_1
    :goto_0
    return-void
.end method

.method public setScaleSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 2

    if-eqz p1, :cond_1

    iget v0, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    if-gt v0, v1, :cond_1

    iget v0, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    :cond_1
    :goto_0
    return-void
.end method
