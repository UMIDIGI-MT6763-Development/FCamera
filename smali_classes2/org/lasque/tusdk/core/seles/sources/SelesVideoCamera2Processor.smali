.class public Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;
.super Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor$SelesVideoCamera2ProcessorEngine;
    }
.end annotation


# static fields
.field static final synthetic b:Z


# instance fields
.field private final c:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

.field private final d:Lorg/lasque/tusdk/core/seles/output/SelesViewInterface;

.field private e:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

.field private f:Z

.field private g:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor$SelesVideoCamera2ProcessorEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;",
            ":",
            "Lorg/lasque/tusdk/core/seles/output/SelesViewInterface;",
            ">(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;-><init>(Landroid/content/Context;)V

    sget-boolean p1, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->b:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    move-object p1, p2

    check-cast p1, Lorg/lasque/tusdk/core/seles/output/SelesViewInterface;

    invoke-interface {p1, p0}, Lorg/lasque/tusdk/core/seles/output/SelesViewInterface;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->c:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->d:Lorg/lasque/tusdk/core/seles/output/SelesViewInterface;

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getFilterWrap(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->e:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->e:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->c:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->bindWithCameraView(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->e:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->g:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor$SelesVideoCamera2ProcessorEngine;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->e:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor$SelesVideoCamera2ProcessorEngine;->onFilterSwitched(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->e:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->g:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor$SelesVideoCamera2ProcessorEngine;

    invoke-interface {v1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor$SelesVideoCamera2ProcessorEngine;->deviceOrientation()Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->rotationTextures(Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->f:Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getFilterWrap(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->e:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->removeTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->c:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->bindWithCameraView(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->processImage()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->e:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->destroy()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->e:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    new-instance p1, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor$2;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor$2;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->a()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->d:Lorg/lasque/tusdk/core/seles/output/SelesViewInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {v0}, Lorg/lasque/tusdk/core/seles/output/SelesViewInterface;->setRenderModeContinuously()V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/lasque/tusdk/core/seles/output/SelesViewInterface;->setRenderModeDirty()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final isFilterChanging()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->f:Z

    return v0
.end method

.method protected onMainThreadStart()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->onMainThreadStart()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->d:Lorg/lasque/tusdk/core/seles/output/SelesViewInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/seles/output/SelesViewInterface;->requestRender()V

    :cond_0
    return-void
.end method

.method public pauseCameraCapture()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->pauseCameraCapture()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->a(Z)V

    return-void
.end method

.method public processCaptureImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->e:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->clone()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->processImage()V

    new-instance v1, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;-><init>(Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->processImage()V

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->imageFromCurrentlyProcessedOutput()Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public resumeCameraCapture()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->resumeCameraCapture()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->a(Z)V

    return-void
.end method

.method public setCameraEngine(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Engine;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setCameraEngine(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor$SelesVideoCamera2ProcessorEngine;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->g:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor$SelesVideoCamera2ProcessorEngine;

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->setCameraEngine(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Engine;)V

    return-void
.end method

.method public setRendererFPS(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->d:Lorg/lasque/tusdk/core/seles/output/SelesViewInterface;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesViewInterface;->setRendererFPS(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopCameraCapture()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->f:Z

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->a(Z)V

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->stopCameraCapture()V

    return-void
.end method

.method public switchFilter(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->isFilterChanging()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->e:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->equalsCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->f:Z

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor$1;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor$1;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Processor;->runOnDraw(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
