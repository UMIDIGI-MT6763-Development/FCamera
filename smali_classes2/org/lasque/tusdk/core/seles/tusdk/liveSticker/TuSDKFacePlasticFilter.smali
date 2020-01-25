.class public Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesFilter;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "-sfbf2"

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;-><init>(Ljava/lang/String;)V

    const v0, 0x3f866666    # 1.05f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->e:F

    const v0, 0x3d449ba6    # 0.048f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->f:F

    const v0, 0x3fe38e39

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->g:F

    return-void
.end method

.method private a([I[Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 6

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    aget-object v3, p2, v3

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v5

    iput v4, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v3

    iput v4, v0, Landroid/graphics/PointF;->y:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget p1, v0, Landroid/graphics/PointF;->x:F

    int-to-float p2, v1

    div-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iget p1, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method private a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/RectF;
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v3, Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v0}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v0, Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v4, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget v2, v3, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, p4

    iput v2, v3, Landroid/graphics/PointF;->y:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, p4

    iput v2, v0, Landroid/graphics/PointF;->y:F

    iget v2, v1, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, p4

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget v2, v3, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    iget v4, v3, Landroid/graphics/PointF;->y:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    iget v5, v3, Landroid/graphics/PointF;->x:F

    float-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget v9, v0, Landroid/graphics/PointF;->x:F

    float-to-double v9, v9

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    sub-double/2addr v5, v9

    iget v9, v3, Landroid/graphics/PointF;->y:F

    float-to-double v9, v9

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v5, v9

    iget v9, v0, Landroid/graphics/PointF;->y:F

    float-to-double v9, v9

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    sub-double/2addr v5, v9

    double-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v10, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v10

    iget v10, v1, Landroid/graphics/PointF;->y:F

    iget v11, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v11

    iget v11, v1, Landroid/graphics/PointF;->x:F

    float-to-double v11, v11

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    iget v13, v0, Landroid/graphics/PointF;->x:F

    float-to-double v13, v13

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    sub-double/2addr v11, v13

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-double v13, v1

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    add-double/2addr v11, v13

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-double v0, v0

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v11, v0

    double-to-float v0, v11

    div-float/2addr v0, v6

    mul-float v1, v2, v10

    mul-float v6, v9, v4

    sub-float/2addr v1, v6

    const/4 v6, 0x0

    cmpl-float v6, v1, v6

    if-nez v6, :cond_0

    iget v0, v3, Landroid/graphics/PointF;->x:F

    iget v1, v3, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_0
    mul-float/2addr v10, v5

    mul-float/2addr v4, v0

    sub-float/2addr v10, v4

    div-float v4, v10, v1

    mul-float/2addr v2, v0

    mul-float/2addr v9, v5

    sub-float/2addr v2, v9

    div-float v1, v2, v1

    move v0, v4

    :goto_0
    iget v2, v3, Landroid/graphics/PointF;->x:F

    sub-float v2, v0, v2

    iget v4, v3, Landroid/graphics/PointF;->x:F

    sub-float v4, v0, v4

    mul-float/2addr v2, v4

    iget v4, v3, Landroid/graphics/PointF;->y:F

    sub-float v4, v1, v4

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v1, v3

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float v1, v1, p4

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3
.end method

.method private a([Landroid/graphics/PointF;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x14

    new-array v3, v2, [F

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_0

    const/4 v6, 0x0

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_2

    array-length v2, v1

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v2, Landroid/graphics/PointF;

    aget-object v5, v1, v4

    iget v5, v5, Landroid/graphics/PointF;->x:F

    aget-object v6, v1, v4

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    const/4 v6, 0x4

    aget-object v7, v1, v6

    iget v7, v7, Landroid/graphics/PointF;->x:F

    aget-object v8, v1, v6

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    const/16 v8, 0x8

    aget-object v9, v1, v8

    iget v9, v9, Landroid/graphics/PointF;->x:F

    aget-object v10, v1, v8

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-direct {v7, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Landroid/graphics/PointF;

    const/16 v10, 0xc

    aget-object v11, v1, v10

    iget v11, v11, Landroid/graphics/PointF;->x:F

    aget-object v12, v1, v10

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-direct {v9, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v11, Landroid/graphics/PointF;

    const/16 v12, 0x10

    aget-object v13, v1, v12

    iget v13, v13, Landroid/graphics/PointF;->x:F

    aget-object v14, v1, v12

    iget v14, v14, Landroid/graphics/PointF;->y:F

    invoke-direct {v11, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual/range {p0 .. p0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->getScreenRatio()F

    move-result v13

    invoke-direct {v0, v2, v5, v7, v13}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/RectF;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->getScreenRatio()F

    move-result v14

    invoke-direct {v0, v7, v9, v11, v14}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/RectF;

    move-result-object v14

    new-array v15, v6, [I

    fill-array-data v15, :array_0

    invoke-direct {v0, v15, v1}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->a([I[Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v15

    new-array v12, v6, [I

    fill-array-data v12, :array_1

    invoke-direct {v0, v12, v1}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->a([I[Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    iget v12, v15, Landroid/graphics/PointF;->x:F

    aput v12, v3, v4

    iget v4, v15, Landroid/graphics/PointF;->y:F

    const/4 v12, 0x1

    aput v4, v3, v12

    const/4 v4, 0x2

    iget v12, v1, Landroid/graphics/PointF;->x:F

    aput v12, v3, v4

    const/4 v4, 0x3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aput v1, v3, v4

    iget v1, v2, Landroid/graphics/PointF;->x:F

    aput v1, v3, v6

    const/4 v1, 0x5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aput v2, v3, v1

    const/4 v1, 0x6

    iget v2, v5, Landroid/graphics/PointF;->x:F

    aput v2, v3, v1

    const/4 v1, 0x7

    iget v2, v5, Landroid/graphics/PointF;->y:F

    aput v2, v3, v1

    iget v1, v7, Landroid/graphics/PointF;->x:F

    aput v1, v3, v8

    const/16 v1, 0x9

    iget v2, v7, Landroid/graphics/PointF;->y:F

    aput v2, v3, v1

    const/16 v1, 0xa

    iget v2, v9, Landroid/graphics/PointF;->x:F

    aput v2, v3, v1

    const/16 v1, 0xb

    iget v2, v9, Landroid/graphics/PointF;->y:F

    aput v2, v3, v1

    iget v1, v11, Landroid/graphics/PointF;->x:F

    aput v1, v3, v10

    const/16 v1, 0xd

    iget v2, v11, Landroid/graphics/PointF;->y:F

    aput v2, v3, v1

    const/16 v1, 0xe

    iget v2, v13, Landroid/graphics/RectF;->left:F

    aput v2, v3, v1

    const/16 v1, 0xf

    iget v2, v13, Landroid/graphics/RectF;->top:F

    aput v2, v3, v1

    iget v1, v13, Landroid/graphics/RectF;->right:F

    const/16 v2, 0x10

    aput v1, v3, v2

    const/16 v1, 0x11

    iget v2, v14, Landroid/graphics/RectF;->left:F

    aput v2, v3, v1

    const/16 v1, 0x12

    iget v2, v14, Landroid/graphics/RectF;->top:F

    aput v2, v3, v1

    const/16 v1, 0x13

    iget v2, v14, Landroid/graphics/RectF;->right:F

    aput v2, v3, v1

    :cond_2
    :goto_1
    iget v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->d:I

    iget-object v2, v0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {v0, v3, v1, v2}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->setFloatArray([FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x25
        0x26
        0x28
        0x29
    .end array-data

    :array_1
    .array-data 4
        0x2b
        0x2c
        0x2e
        0x2f
    .end array-data
.end method


# virtual methods
.method public getChinSize()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->f:F

    return v0
.end method

.method public getEyeEnlargeSize()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->e:F

    return v0
.end method

.method public getScreenRatio()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->g:F

    return v0
.end method

.method protected onInitOnGLThread()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->onInitOnGLThread()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "eyePower"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->a:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "chinPower"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->b:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "screenRatio"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->c:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "faceInfo"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->d:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->setEnableLiveSticker(Z)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->e:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->setEyeEnlargeSize(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->f:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->setChinSize(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->g:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->setScreenRatio(F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->mFaces:[Lorg/lasque/tusdk/core/face/FaceAligment;

    iget v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->mDeviceAngle:F

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->updateFaceFeatures([Lorg/lasque/tusdk/core/face/FaceAligment;F)V

    return-void
.end method

.method public setChinSize(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->f:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->f:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->b:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public setEyeEnlargeSize(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->e:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->e:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->a:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V

    iget p2, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float p2, p2

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->g:F

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->setScreenRatio(F)V

    :cond_0
    return-void
.end method

.method public setScreenRatio(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->g:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->c:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public updateFaceFeatures([Lorg/lasque/tusdk/core/face/FaceAligment;F)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->updateFaceFeatures([Lorg/lasque/tusdk/core/face/FaceAligment;F)V

    if-eqz p1, :cond_0

    array-length p2, p1

    if-lez p2, :cond_0

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object p1, p1, Lorg/lasque/tusdk/core/face/FaceAligment;->marks:[Landroid/graphics/PointF;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKFacePlasticFilter;->a([Landroid/graphics/PointF;)V

    return-void
.end method
