.class public abstract Lorg/lasque/tusdk/core/seles/sources/SelesOutput;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

.field private e:Z

.field private f:Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

.field protected mAllTargetsWantMonochromeData:Z

.field protected mCachedMaximumOutputSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field protected mForcedMaximumSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field protected mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field protected mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

.field protected mOverrideInputSize:Z

.field protected final mTargetTextureIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;",
            ">;"
        }
    .end annotation
.end field

.field protected mUsingNextFrameForImageCapture:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mCachedMaximumOutputSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mForcedMaximumSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->a:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mTargets:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mTargetTextureIndices:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->e:Z

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mAllTargetsWantMonochromeData:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mUsingNextFrameForImageCapture:Z

    new-instance v0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->f:Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

    return-void
.end method


# virtual methods
.method public addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "%s addTarget newTarget is null"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->nextAvailableTextureIndex()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    invoke-interface {p1}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->isShouldIgnoreUpdatesToThisTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->d:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    :cond_1
    return-void
.end method

.method public addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "%s addTarget:newTarget:textureLocation is null"

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mCachedMaximumOutputSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$1;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesOutput;Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final destroy()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->onDestroy()V

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->destroy()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->removeAllTargets()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public forceProcessingAtSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 0

    return-void
.end method

.method public forceProcessingAtSizeRespectingAspectRatio(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 0

    return-void
.end method

.method public framebufferForOutput()Lorg/lasque/tusdk/core/seles/SelesFramebuffer;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    return-object v0
.end method

.method public getOutputTextureOptions()Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->f:Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

    return-object v0
.end method

.method public getTargetToIgnoreForUpdates()Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->d:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    return-object v0
.end method

.method public imageByFilteringImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    instance-of v0, p0, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    invoke-direct {v0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->outputImageSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->forceProcessingAtSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->useNextFrameForImageCapture()V

    move-object p1, p0

    check-cast p1, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->processImage()V

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->imageFromCurrentlyProcessedOutput()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->removeTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    return-object v1
.end method

.method public imageFromCurrentlyProcessedOutput()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->e:Z

    return v0
.end method

.method protected isOnDrawTasksEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isShouldIgnoreUpdatesToThisTarget()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->c:Z

    return v0
.end method

.method public isShouldSmoothlyScaleOutput()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->b:Z

    return v0
.end method

.method public notifyTargetsAboutNewOutputTexture()V
    .locals 5

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->targets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    invoke-interface {v3}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mTargetTextureIndices:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->setInputFramebufferForTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected abstract onDestroy()V
.end method

.method public providesMonochromeOutput()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeAllTargets()V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mCachedMaximumOutputSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$3;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$3;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesOutput;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeOutputFramebuffer()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    return-void
.end method

.method public removeTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->d:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->d:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    :cond_2
    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mCachedMaximumOutputSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mTargetTextureIndices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$2;

    invoke-direct {v2, p0, p1, v1, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$2;-><init>(Lorg/lasque/tusdk/core/seles/sources/SelesOutput;Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;II)V

    invoke-virtual {p0, v2}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected runOnDraw(Ljava/lang/Runnable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->a:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected runPendingOnDrawTasks()V
    .locals 5

    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SelesOutput: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->e:Z

    return-void
.end method

.method public setInputFramebufferForTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->framebufferForOutput()Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputFramebuffer(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;I)V

    goto :goto_0

    :cond_0
    const-string p1, "%s setInputFramebufferForTarget target is null"

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setOutputOption(Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->f:Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->getTexture()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->getTexture()I

    move-result p1

    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2802

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->f:Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

    iget v1, v1, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;->wrapS:I

    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->f:Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

    iget v1, v1, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;->wrapT:I

    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_1
    return-void
.end method

.method public setOutputTextureOptions(Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->f:Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

    return-void
.end method

.method public setShouldIgnoreUpdatesToThisTarget(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->c:Z

    return-void
.end method

.method public setShouldSmoothlyScaleOutput(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->b:Z

    return-void
.end method

.method public setTargetToIgnoreForUpdates(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->d:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    return-void
.end method

.method public targets()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mTargets:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public useNextFrameForImageCapture()V
    .locals 0

    return-void
.end method
