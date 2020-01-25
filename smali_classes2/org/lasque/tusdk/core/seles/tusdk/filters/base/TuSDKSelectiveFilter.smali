.class public Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/PointF;

.field private j:F

.field private k:F

.field private l:F

.field private m:I

.field private n:F

.field private o:F

.field private p:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "-sb2"

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->i:Landroid/graphics/PointF;

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->j:F

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->k:F

    const/4 v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->m:I

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->isTransposed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    :goto_0
    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->a(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method private a(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->p:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->p:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->c:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public forceProcessingAtSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->forceProcessingAtSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->a()V

    return-void
.end method

.method public getCenter()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->i:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getDegree()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->n:F

    return v0
.end method

.method public getExcessive()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->k:F

    return v0
.end method

.method public getMaskAlpha()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->l:F

    return v0
.end method

.method public getMaskColor()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->m:I

    return v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->j:F

    return v0
.end method

.method public getSelective()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->o:F

    return v0
.end method

.method protected onInitOnGLThread()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->onInitOnGLThread()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "radius"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->a:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "center"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->b:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "aspectRatio"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->c:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "excessive"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->d:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "maskAlpha"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->e:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "maskColor"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->f:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "degree"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->g:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "selective"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->h:I

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->j:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setRadius(F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->i:Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setCenter(Landroid/graphics/PointF;)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->k:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setExcessive(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->m:I

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setMaskColor(I)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->l:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setMaskAlpha(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->n:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setDegree(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->o:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setSelective(F)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->a()V

    return-void
.end method

.method public setCenter(Landroid/graphics/PointF;)V
    .locals 2

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->i:Landroid/graphics/PointF;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->i:Landroid/graphics/PointF;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->rotatedPoint(Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/PointF;

    move-result-object p1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->b:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setPoint(Landroid/graphics/PointF;ILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public setDegree(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->n:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->n:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->g:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public setExcessive(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->k:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->k:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->d:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->getCenter()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setCenter(Landroid/graphics/PointF;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->a()V

    return-void
.end method

.method public setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->copy()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0, p2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->a()V

    :cond_0
    return-void
.end method

.method public setMaskAlpha(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->l:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->l:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->e:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public setMaskColor(I)V
    .locals 4

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->m:I

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

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->f:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, v0, p1, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setVec3([FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public setRadius(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->j:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->j:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->a:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public setSelective(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->o:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->o:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->h:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method
