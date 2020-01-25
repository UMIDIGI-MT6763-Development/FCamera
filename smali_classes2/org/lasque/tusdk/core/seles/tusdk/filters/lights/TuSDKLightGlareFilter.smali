.class public Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:I

.field private e:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "-sl1"

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;-><init>(Ljava/lang/String;)V

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->a:F

    sget-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->e:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->disableSecondFrameCheck()V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->e:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->isTransposed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    :goto_0
    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->a(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method private a(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->b:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->b:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->d:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public forceProcessingAtSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->forceProcessingAtSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->a()V

    return-void
.end method

.method public getMix()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->a:F

    return v0
.end method

.method protected initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;
    .locals 2

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object p1

    const-string v0, "mixied"

    iget v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->a:F

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;F)V

    return-object p1
.end method

.method protected onInitOnGLThread()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->onInitOnGLThread()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->setEnableLiveSticker(Z)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "mixturePercent"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->c:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "aspectRatio"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->d:I

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->a:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->setMix(F)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->a()V

    return-void
.end method

.method public setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V

    if-lez p2, :cond_0

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->e:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    if-eq p2, p1, :cond_0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->e:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->a()V

    :cond_0
    return-void
.end method

.method public setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->copy()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0, p2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->a()V

    :cond_0
    return-void
.end method

.method public setMix(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->a:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->a:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->c:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

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

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightGlareFilter;->setMix(F)V

    :cond_1
    return-void
.end method
