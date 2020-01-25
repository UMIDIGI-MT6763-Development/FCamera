.class public Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterTexturesInterface;


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

.field private j:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorMixedFilter;

.field private k:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;

.field private l:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;-><init>()V

    new-instance v0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->g:Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->g:Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->addFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    new-instance v0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->h:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->h:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->setScale(F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->h:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->addFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    new-instance v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->i:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->i:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->setScale(F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->i:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->addFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    new-instance v0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorMixedFilter;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorMixedFilter;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->j:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorMixedFilter;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->j:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorMixedFilter;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->addFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->j:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorMixedFilter;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->g:Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorMixedFilter;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->h:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->j:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorMixedFilter;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->i:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->j:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorMixedFilter;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->g:Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->l:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->isEnableFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->k:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->k:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->addFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->g:Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->k:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->k:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->l:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    const/4 v1, 0x0

    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->h:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;

    aput-object v4, v0, v1

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->i:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->j:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorMixedFilter;

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->setInitialFilters([Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->l:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->setTerminalFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->setSmoothing(F)V

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->setMixed(F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->h:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->getMaxBlursize()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->setBlurSize(F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->h:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->getMaxThresholdLevel()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->setThresholdLevel(F)V

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->setLightLevel(F)V

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->setDetailLevel(F)V

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

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->g:Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;

    invoke-virtual {v2, v3, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getBlurSize()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->c:F

    return v0
.end method

.method public getDetailLevel()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->f:F

    return v0
.end method

.method public getLightLevel()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->e:F

    return v0
.end method

.method public getMixed()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->b:F

    return v0
.end method

.method public getSmoothing()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->a:F

    return v0
.end method

.method public getThresholdLevel()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->d:F

    return v0
.end method

.method protected initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;
    .locals 5

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object p1

    const-string v0, "blurSize"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getDefaultArg(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->setBlurSize(F)V

    :cond_0
    const-string v0, "thresholdLevel"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getDefaultArg(Ljava/lang/String;)F

    move-result v0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->setThresholdLevel(F)V

    :cond_1
    const-string v0, "smoothing"

    iget v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->a:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v2, v1, v3}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    const-string v0, "mixied"

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->getMixed()F

    move-result v2

    invoke-virtual {p1, v0, v2}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;F)V

    const-string v0, "skinColor"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getDefaultArg(Ljava/lang/String;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->j:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorMixedFilter;

    const-string v2, "skinColor"

    invoke-virtual {p1, v2}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getDefaultArg(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorMixedFilter;->setEnableSkinColorDetection(F)V

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->isEnableFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "eyeSize"

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->k:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->getEyeEnlargeSize()F

    move-result v2

    const v4, 0x3fae147b    # 1.36f

    invoke-virtual {p1, v0, v2, v3, v4}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    const-string v0, "chinSize"

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->k:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->getChinSize()F

    move-result v2

    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, v0, v2, v1, v4}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    :cond_3
    const-string v0, "debug"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getDefaultArg(Ljava/lang/String;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    const-string v0, "blurSize"

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->getBlurSize()F

    move-result v2

    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->h:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;

    invoke-virtual {v4}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->getMaxBlursize()F

    move-result v4

    invoke-virtual {p1, v0, v2, v1, v4}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    const-string v0, "thresholdLevel"

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->getThresholdLevel()F

    move-result v2

    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->h:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;

    invoke-virtual {v4}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->getMaxThresholdLevel()F

    move-result v4

    invoke-virtual {p1, v0, v2, v1, v4}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    const-string v0, "lightLevel"

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->getLightLevel()F

    move-result v2

    invoke-virtual {p1, v0, v2, v1, v3}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    const-string v0, "detailLevel"

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->getDetailLevel()F

    move-result v2

    invoke-virtual {p1, v0, v2, v1, v3}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    :cond_4
    return-object p1
.end method

.method protected isEnableFaceBeauty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public seekStickerToFrameTime(J)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->l:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->seekStickerToFrameTime(J)V

    return-void
.end method

.method public setBenchmarkTime(J)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->l:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->setBenchmarkTime(J)V

    return-void
.end method

.method public setBlurSize(F)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->c:F

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->h:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->c:F

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->setBlurSize(F)V

    return-void
.end method

.method public setDetailLevel(F)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->f:F

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->j:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorMixedFilter;

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->f:F

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorMixedFilter;->setDetailLevel(F)V

    return-void
.end method

.method public setDisplayRect(Landroid/graphics/RectF;F)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->l:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->setDisplayRect(Landroid/graphics/RectF;F)V

    return-void
.end method

.method public setEnableAutoplayMode(Z)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->l:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->setEnableAutoplayMode(Z)V

    return-void
.end method

.method public setLightLevel(F)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->e:F

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->j:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorMixedFilter;

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->e:F

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorMixedFilter;->setLightLevel(F)V

    return-void
.end method

.method public setMixed(F)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->b:F

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->g:Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->b:F

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;->setMixed(F)V

    return-void
.end method

.method public setSmoothing(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->a:F

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->j:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorMixedFilter;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorMixedFilter;->setIntensity(F)V

    return-void
.end method

.method public setStickerVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->l:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->setStickerVisibility(Z)V

    return-void
.end method

.method public setThresholdLevel(F)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->d:F

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->h:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->d:F

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->setThresholdLevel(F)V

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

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->setSmoothing(F)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "mixied"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->setMixed(F)V

    goto :goto_0

    :cond_2
    const-string v0, "blurSize"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->setBlurSize(F)V

    goto :goto_0

    :cond_3
    const-string v0, "thresholdLevel"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->setThresholdLevel(F)V

    goto :goto_0

    :cond_4
    const-string v0, "lightLevel"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->setLightLevel(F)V

    goto :goto_0

    :cond_5
    const-string v0, "detailLevel"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->setDetailLevel(F)V

    goto :goto_0

    :cond_6
    const-string v0, "eyeSize"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->k:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->setEyeEnlargeSize(F)V

    goto :goto_0

    :cond_7
    const-string v0, "chinSize"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->k:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->setChinSize(F)V

    :cond_8
    :goto_0
    return-void
.end method

.method public updateFaceFeatures([Lorg/lasque/tusdk/core/face/FaceAligment;F)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->l:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->updateFaceFeatures([Lorg/lasque/tusdk/core/face/FaceAligment;F)V

    return-void
.end method

.method public updateStickers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColorFilter;->l:Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->updateStickers(Ljava/util/List;)V

    return-void
.end method
