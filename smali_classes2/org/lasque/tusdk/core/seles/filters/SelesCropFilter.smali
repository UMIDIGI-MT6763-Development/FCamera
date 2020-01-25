.class public Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesFilter;


# instance fields
.field private a:Ljava/nio/FloatBuffer;

.field private b:Landroid/graphics/RectF;

.field private c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->b:Landroid/graphics/RectF;

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->d:Z

    sget-object v0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->noRotationTextureCoordinates:[F

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->buildBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->a:Ljava/nio/FloatBuffer;

    return-void
.end method

.method private a()V
    .locals 14

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float v0, v2, v0

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->b:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v3, v1

    sub-float v3, v2, v3

    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->b:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    div-float/2addr v4, v1

    add-float/2addr v4, v2

    iget-object v5, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->b:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v5, v1

    add-float/2addr v5, v2

    const/16 v1, 0x8

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->isEnableHorizontallyFlip()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    if-ne v2, v6, :cond_0

    sget-object v2, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->UpMirrored:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    :cond_0
    sget-object v6, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter$1;->a:[I

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->ordinal()I

    move-result v2

    aget v2, v6, v2

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    packed-switch v2, :pswitch_data_0

    aput v0, v1, v13

    aput v3, v1, v12

    aput v4, v1, v11

    aput v3, v1, v10

    aput v0, v1, v9

    aput v5, v1, v8

    aput v4, v1, v7

    aput v5, v1, v6

    goto/16 :goto_0

    :pswitch_0
    aput v4, v1, v13

    aput v5, v1, v12

    aput v0, v1, v11

    aput v5, v1, v10

    aput v4, v1, v9

    aput v3, v1, v8

    aput v0, v1, v7

    aput v3, v1, v6

    goto :goto_0

    :pswitch_1
    aput v4, v1, v13

    aput v5, v1, v12

    aput v4, v1, v11

    aput v3, v1, v10

    aput v0, v1, v9

    aput v5, v1, v8

    aput v0, v1, v7

    aput v3, v1, v6

    goto :goto_0

    :pswitch_2
    aput v0, v1, v13

    aput v3, v1, v12

    aput v0, v1, v11

    aput v5, v1, v10

    aput v4, v1, v9

    aput v3, v1, v8

    aput v4, v1, v7

    aput v5, v1, v6

    goto :goto_0

    :pswitch_3
    aput v4, v1, v13

    aput v3, v1, v12

    aput v0, v1, v11

    aput v3, v1, v10

    aput v4, v1, v9

    aput v5, v1, v8

    aput v0, v1, v7

    aput v5, v1, v6

    goto :goto_0

    :pswitch_4
    aput v0, v1, v13

    aput v5, v1, v12

    aput v4, v1, v11

    aput v5, v1, v10

    aput v0, v1, v9

    aput v3, v1, v8

    aput v4, v1, v7

    aput v3, v1, v6

    goto :goto_0

    :pswitch_5
    aput v0, v1, v13

    aput v5, v1, v12

    aput v0, v1, v11

    aput v3, v1, v10

    aput v4, v1, v9

    aput v5, v1, v8

    aput v4, v1, v7

    aput v3, v1, v6

    goto :goto_0

    :pswitch_6
    aput v4, v1, v13

    aput v3, v1, v12

    aput v4, v1, v11

    aput v5, v1, v10

    aput v0, v1, v9

    aput v3, v1, v8

    aput v0, v1, v7

    aput v5, v1, v6

    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getOutputSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-object v0
.end method

.method public isEnableHorizontallyFlip()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->d:Z

    return v0
.end method

.method public maximumOutputSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-object v0
.end method

.method protected renderToTexture(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 0

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->a:Ljava/nio/FloatBuffer;

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->renderToTexture(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method protected setCropRegion(Landroid/graphics/RectF;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->b:Landroid/graphics/RectF;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->a()V

    return-void
.end method

.method public setEnableHorizontallyFlip(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->d:Z

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->a()V

    return-void
.end method

.method public setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->a()V

    return-void
.end method

.method public setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->isPreventRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->mOverrideInputSize:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->mForcedMaximumSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->mForcedMaximumSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minSide()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->mForcedMaximumSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->mForcedMaximumSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/RectHelper;->makeRectWithAspectRatioInsideRect(Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Landroid/graphics/Rect;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->sizeOfFBO()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->setupFilterForSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->rotatedSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    :cond_4
    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->updateCropRegion(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    new-instance p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget p2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float p2, p2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget p2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float p2, p2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p2, p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    goto :goto_0
.end method

.method public setOutputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    :cond_0
    return-void
.end method

.method protected updateCropRegion(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->getRatioFloat()F

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lorg/lasque/tusdk/core/utils/RectHelper;->computerOutSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;FZ)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    iget v2, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v2, v2

    iget v3, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v1, v1

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float p1, p1

    div-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->setCropRegion(Landroid/graphics/RectF;)V

    :cond_1
    :goto_0
    return-void
.end method
