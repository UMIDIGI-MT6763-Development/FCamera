.class public Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/graphics/PointF;

.field private f:I

.field private g:[F

.field private h:I

.field private i:F

.field private j:I

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "-scmc"

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->e:Landroid/graphics/PointF;

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->g:[F

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->i:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->k:F

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->l:F

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->m:F

    sget-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->o:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->disableSecondFrameCheck()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->disableThirdFrameCheck()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->o:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->isTransposed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    :goto_0
    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->c(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method private a(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->i:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->i:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->h:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private a(Landroid/graphics/PointF;)V
    .locals 2

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->e:Landroid/graphics/PointF;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->e:Landroid/graphics/PointF;

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->d:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->setPoint(Landroid/graphics/PointF;ILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private a([F)V
    .locals 2

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->g:[F

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->g:[F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->f:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->setVec3([FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private b(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->k:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->k:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->j:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private c(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->n:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->n:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->c:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public forceProcessingAtSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->forceProcessingAtSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->a()V

    return-void
.end method

.method public getCover()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->m:F

    return v0
.end method

.method public getMixed()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->l:F

    return v0
.end method

.method protected initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;
    .locals 4

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object p1

    const-string v0, "mixied"

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->getMixed()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;F)V

    const-string v0, "texture"

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->getCover()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;F)V

    const-string v0, "vignette"

    iget v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->i:F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    return-object p1
.end method

.method protected onInitOnGLThread()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->onInitOnGLThread()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "mixturePercent"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->a:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "coverPercent"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->b:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "vignetteCenter"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->d:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "vignetteColor"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->f:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "vignetteStart"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->h:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "vignetteEnd"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->j:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "aspectRatio"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->c:I

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->l:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->setMixed(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->m:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->setCover(F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->e:Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->a(Landroid/graphics/PointF;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->g:[F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->a([F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->i:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->a(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->k:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->b(F)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->a()V

    return-void
.end method

.method public setCover(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->m:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->m:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->b:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V

    if-lez p2, :cond_0

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->o:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    if-eq p2, p1, :cond_0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->o:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->a()V

    :cond_0
    return-void
.end method

.method public setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->copy()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0, p2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->a()V

    :cond_0
    return-void
.end method

.method public setMixed(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->l:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->l:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->a:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public setVignetteColor(I)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    const/4 v1, 0x2

    aput p1, v0, v1

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->a([F)V

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

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->setMixed(F)V

    goto :goto_0

    :cond_1
    const-string v0, "texture"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->setCover(F)V

    goto :goto_0

    :cond_2
    const-string v0, "vignette"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixCoverFilter;->a(F)V

    :cond_3
    :goto_0
    return-void
.end method
