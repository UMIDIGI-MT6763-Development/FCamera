.class public Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterFacePositionInterface;
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterTexturesInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;,
        Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;

.field private h:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;

.field private i:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

.field private j:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;

.field private k:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->f:F

    new-instance v1, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;-><init>()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->g:Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->g:Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->addFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    new-instance v1, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;-><init>()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->h:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->h:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->setScale(F)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->h:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->addFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    new-instance v1, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;-><init>()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->i:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->i:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->setScale(F)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->i:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->addFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    new-instance v1, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;-><init>()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->j:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->j:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->addFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    new-instance v1, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;-><init>()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->k:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->k:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->addFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->j:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->g:Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->h:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->j:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->i:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->j:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v4}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->g:Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->k:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->h:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;

    const/4 v5, 0x0

    aput-object v2, v1, v5

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->i:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->j:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->setInitialFilters([Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->k:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->setTerminalFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->setSmoothing(F)V

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->setWhitening(F)V

    const v1, 0x459c4000    # 5000.0f

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->setSkinColor(F)V

    const v1, 0x3f85c28f    # 1.045f

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->setEyeEnlargeSize(F)V

    const v1, 0x3d449ba6    # 0.048f

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->setChinSize(F)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->setRetouchSize(F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->h:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->getMaxBlursize()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->setBlurSize(F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->h:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->getMaxThresholdLevel()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->setThresholdLevel(F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->j:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->setLightLevel(F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->j:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->setDetailLevel(F)V

    return-void
.end method


# virtual methods
.method public appendTextures(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/sources/SelesPicture;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->processImage()V

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->g:Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;

    invoke-virtual {v2, v3, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getChinSize()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->e:F

    return v0
.end method

.method public getEyeEnlargeSize()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->d:F

    return v0
.end method

.method public getRetouchSize()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->f:F

    return v0
.end method

.method public getSkinColor()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->c:F

    return v0
.end method

.method public getSmoothing()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->a:F

    return v0
.end method

.method public getWhitening()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->b:F

    return v0
.end method

.method protected initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;
    .locals 6

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object p1

    const-string v0, "retouchSize"

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->getRetouchSize()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    const-string v0, "smoothing"

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->getSmoothing()F

    move-result v1

    invoke-virtual {p1, v0, v1, v3, v2}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    const-string v0, "whitening"

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->getWhitening()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;F)V

    const-string v0, "skinColor"

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->getSkinColor()F

    move-result v1

    const/high16 v4, 0x457a0000    # 4000.0f

    const v5, 0x45bb8000    # 6000.0f

    invoke-virtual {p1, v0, v1, v4, v5}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    const-string v0, "eyeSize"

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->getEyeEnlargeSize()F

    move-result v1

    const v4, 0x3f99999a    # 1.2f

    invoke-virtual {p1, v0, v1, v2, v4}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    const-string v0, "chinSize"

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->getChinSize()F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, v0, v1, v3, v2}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    return-object p1
.end method

.method public resetPosition()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->k:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->resetPosition()V

    :cond_0
    return-void
.end method

.method public setChinSize(F)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->e:F

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->k:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->setChinSize(F)V

    return-void
.end method

.method public setEyeEnlargeSize(F)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->d:F

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->k:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->setEyeEnlargeSize(F)V

    return-void
.end method

.method public setParameter(Lorg/lasque/tusdk/core/seles/SelesParameters;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->l:Z

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->setParameter(Lorg/lasque/tusdk/core/seles/SelesParameters;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->l:Z

    return-void
.end method

.method public setRetouchSize(F)V
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->getParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->f:F

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->setSmoothing(F)V

    const-string v1, "retouchSize"

    invoke-virtual {v0, v1, p1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->setFilterArg(Ljava/lang/String;F)V

    const-string v1, "smoothing"

    invoke-virtual {v0, v1, p1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->setFilterArg(Ljava/lang/String;F)V

    const-string v1, "whitening"

    invoke-virtual {v0, v1, p1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->setFilterArg(Ljava/lang/String;F)V

    const v1, 0x3e4cccd0    # 0.20000005f

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->setEyeEnlargeSize(F)V

    const-string v3, "eyeSize"

    sub-float/2addr v1, v2

    const v2, 0x3e4ccccd    # 0.2f

    div-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->setFilterArg(Ljava/lang/String;F)V

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, v1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->setChinSize(F)V

    const-string v2, "chinSize"

    div-float/2addr p1, v1

    invoke-virtual {v0, v2, p1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->setFilterArg(Ljava/lang/String;F)V

    return-void
.end method

.method public setSkinColor(F)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->c:F

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->j:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->setTemperature(F)V

    return-void
.end method

.method public setSmoothing(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->a:F

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->j:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->setIntensity(F)V

    return-void
.end method

.method public setWhitening(F)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->b:F

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->g:Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->b:F

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;->setMixed(F)V

    return-void
.end method

.method protected submitFilterArg(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "smoothing"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->setSmoothing(F)V

    goto :goto_0

    :cond_1
    const-string v0, "whitening"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->setWhitening(F)V

    goto :goto_0

    :cond_2
    const-string v0, "skinColor"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->setSkinColor(F)V

    goto :goto_0

    :cond_3
    const-string v0, "eyeSize"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->setEyeEnlargeSize(F)V

    goto :goto_0

    :cond_4
    const-string v0, "chinSize"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->setChinSize(F)V

    goto :goto_0

    :cond_5
    const-string v0, "retouchSize"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->l:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->setRetouchSize(F)V

    :cond_6
    :goto_0
    return-void
.end method

.method public updateFaceFeatures([Lorg/lasque/tusdk/core/face/FaceAligment;F)V
    .locals 5

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    aget-object p1, p1, p2

    iget-object p1, p1, Lorg/lasque/tusdk/core/face/FaceAligment;->marks:[Landroid/graphics/PointF;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->k:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    aget-object p2, p1, p2

    const/4 v0, 0x1

    aget-object v0, p1, v0

    const/4 v1, 0x3

    aget-object v1, p1, v1

    const/4 v2, 0x4

    aget-object p1, p1, v2

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p1

    div-float/2addr v1, v4

    invoke-direct {v2, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->k:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;

    invoke-virtual {p1, p2, v0, v2}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->setFacePositions(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    :cond_1
    return-void
.end method
