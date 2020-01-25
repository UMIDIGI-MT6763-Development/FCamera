.class public Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;


# instance fields
.field protected mHorizontalPassTexelHeightOffset:F

.field protected mHorizontalPassTexelHeightOffsetUniform:I

.field protected mHorizontalPassTexelWidthOffset:F

.field protected mHorizontalPassTexelWidthOffsetUniform:I

.field protected mHorizontalTexelSpacing:F

.field protected mVerticalPassTexelHeightOffset:F

.field protected mVerticalPassTexelHeightOffsetUniform:I

.field protected mVerticalPassTexelWidthOffset:F

.field protected mVerticalPassTexelWidthOffsetUniform:I

.field protected mVerticalTexelSpacing:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->setVerticalTexelSpacing(F)V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->setHorizontalTexelSpacing(F)V

    return-void
.end method


# virtual methods
.method public getHorizontalTexelSpacing()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mHorizontalTexelSpacing:F

    return v0
.end method

.method public getVerticalTexelSpacing()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mVerticalTexelSpacing:F

    return v0
.end method

.method protected onInitOnGLThread()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->onInitOnGLThread()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "texelWidthOffset"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mVerticalPassTexelWidthOffsetUniform:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "texelHeightOffset"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mVerticalPassTexelHeightOffsetUniform:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "texelWidthOffset"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mHorizontalPassTexelWidthOffsetUniform:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "texelHeightOffset"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mHorizontalPassTexelHeightOffsetUniform:I

    return-void
.end method

.method public setHorizontalTexelSpacing(F)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mHorizontalTexelSpacing:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->sizeOfFBO()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->setupFilterForSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    return-void
.end method

.method public setUniformsForProgramAtIndex(I)V
    .locals 1

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassFilter;->setUniformsForProgramAtIndex(I)V

    if-nez p1, :cond_0

    iget p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mVerticalPassTexelWidthOffsetUniform:I

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mVerticalPassTexelWidthOffset:F

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mVerticalPassTexelHeightOffsetUniform:I

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mVerticalPassTexelHeightOffset:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mHorizontalPassTexelWidthOffsetUniform:I

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mHorizontalPassTexelWidthOffset:F

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mHorizontalPassTexelHeightOffsetUniform:I

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mHorizontalPassTexelHeightOffset:F

    :goto_0
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public setVerticalTexelSpacing(F)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->mVerticalTexelSpacing:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->sizeOfFBO()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->setupFilterForSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    return-void
.end method

.method public setupFilterForSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter$1;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter$1;-><init>(Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method
