.class public final Lorg/lasque/tusdk/api/TuSDKFilterPicture;
.super Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private a:Z

.field private b:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field private c:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;-><init>(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;ZZ)V
    .locals 2

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "SelesPicture:image is null"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->b:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->a:Z

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->setShouldSmoothlyScaleOutput(Z)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Landroid/graphics/Bitmap;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p2

    iput-object p2, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget-object p2, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minSide()I

    move-result p2

    if-gtz p2, :cond_1

    const-string p1, "Passed image must not be empty - it should be at least 1px tall and wide"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p2, Lorg/lasque/tusdk/api/TuSDKFilterPicture$1;

    invoke-direct {p2, p0, p1, p3}, Lorg/lasque/tusdk/api/TuSDKFilterPicture$1;-><init>(Lorg/lasque/tusdk/api/TuSDKFilterPicture;Landroid/graphics/Bitmap;Z)V

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;II)V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "SelesPicture:singleChannalData is null"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->a:Z

    invoke-static {p2, p3}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    new-instance v0, Lorg/lasque/tusdk/api/TuSDKFilterPicture$2;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/lasque/tusdk/api/TuSDKFilterPicture$2;-><init>(Lorg/lasque/tusdk/api/TuSDKFilterPicture;IILjava/nio/ByteBuffer;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/api/TuSDKFilterPicture;Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->c:Ljava/nio/IntBuffer;

    return-object p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/api/TuSDKFilterPicture;Lorg/lasque/tusdk/core/seles/SelesFramebuffer;)Lorg/lasque/tusdk/core/seles/SelesFramebuffer;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    return-object p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/api/TuSDKFilterPicture;)Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-object p0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->a:Z

    new-instance v0, Lorg/lasque/tusdk/api/TuSDKFilterPicture$3;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/api/TuSDKFilterPicture$3;-><init>(Lorg/lasque/tusdk/api/TuSDKFilterPicture;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/api/TuSDKFilterPicture;)Lorg/lasque/tusdk/core/seles/SelesFramebuffer;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    return-object p0
.end method

.method static synthetic b(Lorg/lasque/tusdk/api/TuSDKFilterPicture;Lorg/lasque/tusdk/core/seles/SelesFramebuffer;)Lorg/lasque/tusdk/core/seles/SelesFramebuffer;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    return-object p1
.end method

.method static synthetic c(Lorg/lasque/tusdk/api/TuSDKFilterPicture;)Lorg/lasque/tusdk/core/seles/SelesFramebuffer;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    return-object p0
.end method

.method static synthetic d(Lorg/lasque/tusdk/api/TuSDKFilterPicture;)Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-object p0
.end method

.method static synthetic e(Lorg/lasque/tusdk/api/TuSDKFilterPicture;)Lorg/lasque/tusdk/core/seles/SelesFramebuffer;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    return-object p0
.end method

.method static synthetic f(Lorg/lasque/tusdk/api/TuSDKFilterPicture;)Lorg/lasque/tusdk/core/seles/SelesFramebuffer;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    return-object p0
.end method

.method static synthetic g(Lorg/lasque/tusdk/api/TuSDKFilterPicture;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mTargets:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lorg/lasque/tusdk/api/TuSDKFilterPicture;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mTargets:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lorg/lasque/tusdk/api/TuSDKFilterPicture;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mTargetTextureIndices:Ljava/util/List;

    return-object p0
.end method

.method static synthetic j(Lorg/lasque/tusdk/api/TuSDKFilterPicture;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->b:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p0
.end method

.method static synthetic k(Lorg/lasque/tusdk/api/TuSDKFilterPicture;)Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-object p0
.end method

.method static synthetic l(Lorg/lasque/tusdk/api/TuSDKFilterPicture;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mTargets:Ljava/util/List;

    return-object p0
.end method

.method static synthetic m(Lorg/lasque/tusdk/api/TuSDKFilterPicture;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mTargets:Ljava/util/List;

    return-object p0
.end method

.method static synthetic n(Lorg/lasque/tusdk/api/TuSDKFilterPicture;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mTargetTextureIndices:Ljava/util/List;

    return-object p0
.end method

.method static synthetic o(Lorg/lasque/tusdk/api/TuSDKFilterPicture;)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->runPendingOnDrawTasks()V

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

    new-instance v0, Lorg/lasque/tusdk/api/TuSDKFilterPicture$5;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/api/TuSDKFilterPicture$5;-><init>(Lorg/lasque/tusdk/api/TuSDKFilterPicture;)V

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->mountAtGLThread(Ljava/lang/Runnable;)V

    :cond_1
    iget-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-interface {p1, v0, p2}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1, p2}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->newFrameReady(JI)V

    :cond_2
    return-void
.end method

.method public bufferFromCurrentlyProcessedOutput()Ljava/nio/IntBuffer;
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->c:Ljava/nio/IntBuffer;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-instance v2, Lorg/lasque/tusdk/api/TuSDKFilterPicture$4;

    invoke-direct {v2, p0, v0}, Lorg/lasque/tusdk/api/TuSDKFilterPicture$4;-><init>(Lorg/lasque/tusdk/api/TuSDKFilterPicture;Ljava/util/concurrent/Semaphore;)V

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
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->c:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public mountAtGLThread(Ljava/lang/Runnable;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->enableReferenceCounting()V

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->unlock()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->runPendingOnDrawTasks()V

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
    .locals 3

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v2, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->b:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->isTransposed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    :cond_0
    return-object v0
.end method

.method public processImage()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeAllTargets()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->removeAllTargets()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->a:Z

    return-void
.end method

.method public setOutputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->b:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-void
.end method
