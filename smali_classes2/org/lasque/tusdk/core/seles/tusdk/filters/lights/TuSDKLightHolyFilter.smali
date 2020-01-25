.class public Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterTexturesInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

.field private d:Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurSevenRadiusFilter;->hardware(Z)Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    move-result-object v1

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->c:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->c:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->addFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    new-instance v1, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;-><init>(Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$1;)V

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->d:Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->d:Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->addFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->c:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->d:Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;

    invoke-virtual {v1, v2, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->c:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->d:Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;

    aput-object v2, v1, v0

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->setInitialFilters([Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->d:Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->setTerminalFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->setHolyLight(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->setBrightness(F)V

    return-void
.end method


# virtual methods
.method public appendTextures(Ljava/util/List;)V
    .locals 3
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
    const/4 v0, 0x2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->processImage()V

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->d:Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;

    invoke-virtual {v1, v2, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getBrightness()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->b:F

    return v0
.end method

.method public getHolyLight()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->a:F

    return v0
.end method

.method protected initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;
    .locals 4

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object p1

    const-string v0, "mixied"

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->getHolyLight()F

    move-result v1

    const/4 v2, 0x0

    const v3, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    const-string v0, "brightness"

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->getBrightness()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;F)V

    return-object p1
.end method

.method public setBrightness(F)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->b:F

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->d:Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->setMix(F)V

    return-void
.end method

.method public setHolyLight(F)V
    .locals 3

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->a:F

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->d:Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p1

    invoke-virtual {v0, v2}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->setIntensity(F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->d:Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;

    const v2, 0x3f051eb8    # 0.52f

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->setContrast(F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->c:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    const/high16 v1, 0x40400000    # 3.0f

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;->setBlurSize(F)V

    return-void
.end method

.method protected submitFilterArg(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "mixied"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->setHolyLight(F)V

    goto :goto_0

    :cond_1
    const-string v0, "brightness"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;->setBrightness(F)V

    :cond_2
    :goto_0
    return-void
.end method
