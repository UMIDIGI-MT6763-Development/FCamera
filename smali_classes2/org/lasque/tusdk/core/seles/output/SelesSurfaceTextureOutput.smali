.class public Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;
.super Lorg/lasque/tusdk/core/seles/filters/SelesFilter;


# static fields
.field private static final a:[F


# instance fields
.field private b:Ljava/nio/FloatBuffer;

.field private c:Ljava/nio/FloatBuffer;

.field private d:Landroid/graphics/RectF;

.field private e:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->a:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->d:Landroid/graphics/RectF;

    sget-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->e:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    sget-object v0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->a:[F

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->buildBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->b:Ljava/nio/FloatBuffer;

    sget-object v0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->noRotationTextureCoordinates:[F

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->buildBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->c:Ljava/nio/FloatBuffer;

    return-void
.end method

.method private a()V
    .locals 7

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->d:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float v0, v2, v0

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v3, v1

    sub-float v3, v2, v3

    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->d:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    div-float/2addr v4, v1

    add-float/2addr v4, v2

    iget-object v5, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->d:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v5, v1

    add-float/2addr v5, v2

    const/16 v1, 0x8

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v6, 0x1

    aput v3, v1, v6

    const/4 v6, 0x2

    aput v4, v1, v6

    const/4 v6, 0x3

    aput v3, v1, v6

    const/4 v3, 0x4

    aput v0, v1, v3

    const/4 v0, 0x5

    aput v5, v1, v0

    const/4 v0, 0x6

    aput v4, v1, v0

    const/4 v0, 0x7

    aput v5, v1, v0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method protected informTargetsAboutNewFrame(J)V
    .locals 0

    return-void
.end method

.method public newFrameReady(JI)V
    .locals 1

    iget-object p3, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->mFirstInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object p3, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->c:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->e:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->textureCoordinates(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)[F

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p3, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->b:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p3, v0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->renderToTexture(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->informTargetsAboutNewFrame(J)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->framebufferForOutput()Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->framebufferForOutput()Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->unlock()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->removeOutputFramebuffer()V

    return-void
.end method

.method protected renderToTexture(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 15

    move-object v0, p0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->isPreventRendering()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->inputFramebufferUnlock()V

    return-void

    :cond_0
    iget-object v1, v0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->sizeOfFBO()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    iget-object v2, v0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->sharedFramebufferCache()Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;

    move-result-object v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->getOutputTextureOptions()Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

    move-result-object v4

    invoke-virtual {v2, v1, v4, v3}, Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;->fetchFramebuffer(Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;Z)Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    iget-object v1, v0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->disableReferenceCounting()V

    :cond_1
    iget-object v1, v0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->activateFramebuffer()V

    iget-boolean v1, v0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->mUsingNextFrameForImageCapture:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->lock()V

    :cond_2
    invoke-virtual {p0, v3}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->setUniformsForProgramAtIndex(I)V

    iget v1, v0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->mBackgroundColorRed:F

    iget v2, v0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->mBackgroundColorGreen:F

    iget v4, v0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->mBackgroundColorBlue:F

    iget v5, v0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->mBackgroundColorAlpha:F

    invoke-static {v1, v2, v4, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->inputFramebufferBindTexture()V

    iget v4, v0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->mFilterPositionAttribute:I

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v9, v0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->mFilterTextureCoordinateAttribute:I

    const/4 v10, 0x2

    const/16 v11, 0x1406

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v14, p2

    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->inputFramebufferUnlock()V

    const/16 v1, 0xde1

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-boolean v1, v0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->mUsingNextFrameForImageCapture:Z

    return-void
.end method

.method public setCropRegion(Landroid/graphics/RectF;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->d:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->d:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->d:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->d:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->d:Landroid/graphics/RectF;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->a()V

    return-void
.end method

.method public setInputFramebuffer(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->setInputFramebuffer(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;I)V

    return-void
.end method

.method public setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->a()V

    return-void
.end method

.method public setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->isPreventRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->rotatedSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minSide()I

    move-result p2

    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    :goto_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    new-instance p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget p2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float p2, p2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget p2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float p2, p2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result p2

    if-eqz p2, :cond_3

    :goto_2
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p2, p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->sizeOfFBO()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->setupFilterForSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    return-void
.end method

.method public setOutputOrientation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;->e:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-void
.end method
