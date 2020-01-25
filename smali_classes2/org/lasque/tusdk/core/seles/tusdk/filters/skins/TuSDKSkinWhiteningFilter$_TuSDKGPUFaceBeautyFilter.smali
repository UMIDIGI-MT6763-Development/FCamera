.class Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "_TuSDKGPUFaceBeautyFilter"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:Landroid/graphics/PointF;

.field private i:Landroid/graphics/PointF;

.field private j:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "-sfbf1"

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;-><init>(Ljava/lang/String;)V

    const v0, 0x3f866666    # 1.05f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->f:F

    const v0, 0x3d449ba6    # 0.048f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->g:F

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->h:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->i:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->j:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method protected onInitOnGLThread()V
    .locals 3

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->onInitOnGLThread()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "eyePower"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->a:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "chinPower"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->b:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "leftEyeCoordinate"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->c:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "rightEyeCoordinate"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->d:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "mouthCoordinate"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->e:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->h:Landroid/graphics/PointF;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->i:Landroid/graphics/PointF;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->j:Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1, v2}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->setFacePositions(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->f:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->setEyeEnlargeSize(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->g:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->setChinSize(F)V

    return-void
.end method

.method public resetPosition()V
    .locals 4

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v0, v2, v3}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->setFacePositions(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method

.method public setChinSize(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->g:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->g:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->b:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public setEyeEnlargeSize(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->f:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->f:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->a:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public setFacePositions(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->h:Landroid/graphics/PointF;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->i:Landroid/graphics/PointF;

    iput-object p3, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->j:Landroid/graphics/PointF;

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->c:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->setPoint(Landroid/graphics/PointF;ILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->d:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p2, p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->setPoint(Landroid/graphics/PointF;ILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->e:I

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p3, p1, p2}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKGPUFaceBeautyFilter;->setPoint(Landroid/graphics/PointF;ILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method
