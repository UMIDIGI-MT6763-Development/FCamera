.class public Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;
.super Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;


# instance fields
.field private a:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

.field protected mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsEndProcessing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->mFilters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->a:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    return-void
.end method

.method public endProcessing()V
    .locals 2

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->mIsEndProcessing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->mIsEndProcessing:Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->endProcessing()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public filterAtIndex(I)Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    return-object p1
.end method

.method public filterCount()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public forceProcessingAtSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    invoke-virtual {v1, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->forceProcessingAtSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forceProcessingAtSizeRespectingAspectRatio(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    invoke-virtual {v1, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->forceProcessingAtSizeRespectingAspectRatio(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getInitialFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->b:Ljava/util/List;

    return-object v0
.end method

.method public getInputFilterToIgnoreForUpdates()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->c:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    return-object v0
.end method

.method public getTerminalFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->a:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    return-object v0
.end method

.method public imageFromCurrentlyProcessedOutput()Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->getTerminalFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->imageFromCurrentlyProcessedOutput()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public maximumOutputSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    return-object v0
.end method

.method public newFrameReady(JI)V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->getInputFilterToIgnoreForUpdates()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v2

    if-eq v1, v2, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->newFrameReady(JI)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public nextAvailableTextureIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    return-void
.end method

.method public removeAllTargets()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->a:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->removeAllTargets()V

    return-void
.end method

.method public removeTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->a:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->removeTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    return-void
.end method

.method public setCurrentlyReceivingMonochromeInput(Z)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    invoke-virtual {v1, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->setCurrentlyReceivingMonochromeInput(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs setInitialFilters([Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->b:Ljava/util/List;

    return-void
.end method

.method public setInputFilterToIgnoreForUpdates(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->c:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    return-void
.end method

.method public setInputFramebuffer(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;I)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    invoke-virtual {v1, p1, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->setInputFramebuffer(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    invoke-virtual {v1, p1, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    invoke-virtual {v1, p1, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTargetToIgnoreForUpdates(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->a:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->setTargetToIgnoreForUpdates(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    return-void
.end method

.method public setTerminalFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->a:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    return-void
.end method

.method public targets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->a:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->targets()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public useNextFrameForImageCapture()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->getTerminalFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->useNextFrameForImageCapture()V

    return-void
.end method

.method public wantsMonochromeInput()Z
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->wantsMonochromeInput()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    return v2
.end method
