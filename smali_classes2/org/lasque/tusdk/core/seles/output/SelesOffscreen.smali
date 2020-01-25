.class public Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;
.super Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$SelesOffscreenDelegate;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/HandlerThread;

.field private final b:Landroid/os/Handler;

.field private c:Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;

.field private d:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$SelesOffscreenDelegate;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.tusdk.SelesAsyncOutput"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->a:Landroid/os/HandlerThread;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->setEnabled(Z)V

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->currentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->b:Landroid/os/Handler;

    new-instance v2, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$1;

    invoke-direct {v2, p0, v0}, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$1;-><init>(Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;Ljavax/microedition/khronos/egl/EGLContext;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->e:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->getOutputSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->create(Lorg/lasque/tusdk/core/struct/TuSdkSize;Ljavax/microedition/khronos/egl/EGLContext;)Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->c:Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->runPendingOnDrawTasks()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->a(Ljavax/microedition/khronos/egl/EGLContext;)V

    return-void
.end method


# virtual methods
.method protected asyncNewFrameReady(JI)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->newFrameReady(JI)V

    return-void
.end method

.method public isWorking()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->e:Z

    return v0
.end method

.method public newFrameReady(JI)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->mFirstInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->setEnabled(Z)V

    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->e:Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->b:Landroid/os/Handler;

    new-instance v1, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$2;-><init>(Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->onDestroy()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->c:Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;

    return-void
.end method

.method protected renderToTexture(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->renderToTexture(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->d:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$SelesOffscreenDelegate;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$SelesOffscreenDelegate;->onFrameRendered(Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->setEnabled(Z)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->e:Z

    return-void
.end method

.method public renderedBuffer()Ljava/nio/IntBuffer;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->c:Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->getImageBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public resetEnabled()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->e:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->setEnabled(Z)V

    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$SelesOffscreenDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->d:Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$SelesOffscreenDelegate;

    return-void
.end method

.method public setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->a()V

    :cond_0
    return-void
.end method

.method public startWork()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->e:Z

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopWork()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->e:Z

    return-void
.end method
