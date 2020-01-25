.class public Lorg/lasque/tusdk/core/utils/RectHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeAngle(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 5

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/RectHelper;->getDistanceOfTwoPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x43340000    # 180.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    const/high16 v3, 0x42b40000    # 90.0f

    if-gtz v1, :cond_0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v4, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v4

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    :goto_0
    sub-float v0, v3, v0

    goto :goto_2

    :cond_0
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v4, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v4, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v4

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    :goto_1
    add-float/2addr v0, v3

    goto :goto_2

    :cond_1
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    cmpl-float v1, v1, v2

    const/high16 v3, 0x43870000    # 270.0f

    if-ltz v1, :cond_2

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v4, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v4

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v4, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p0

    cmpl-float p0, p1, v2

    if-ltz p0, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    const/high16 p0, 0x436b0000    # 235.0f

    sub-float/2addr v0, p0

    return v0
.end method

.method public static computerCenter(Lorg/lasque/tusdk/core/struct/TuSdkSize;F)Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/lasque/tusdk/core/utils/RectHelper;->computerCenterRectF(Lorg/lasque/tusdk/core/struct/TuSdkSize;FZ)Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/RectHelper;->fixedRectF(Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static computerCenter(Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/graphics/Rect;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v0, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v0, v0

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/4 p1, 0x1

    invoke-static {p0, v0, p1}, Lorg/lasque/tusdk/core/utils/RectHelper;->computerCenterRectF(Lorg/lasque/tusdk/core/struct/TuSdkSize;FZ)Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/RectHelper;->fixedRectF(Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static computerCenterRectF(Lorg/lasque/tusdk/core/struct/TuSdkSize;F)Landroid/graphics/RectF;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/lasque/tusdk/core/utils/RectHelper;->computerCenterRectF(Lorg/lasque/tusdk/core/struct/TuSdkSize;FZ)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static computerCenterRectF(Lorg/lasque/tusdk/core/struct/TuSdkSize;FZ)Landroid/graphics/RectF;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v1, v1

    iget v2, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    cmpg-float v1, p1, v3

    if-gtz v1, :cond_1

    return-object v0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-nez v2, :cond_2

    iget p1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget p2, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    iput p1, v0, Landroid/graphics/RectF;->right:F

    goto :goto_2

    :cond_2
    if-lez v2, :cond_3

    if-nez p2, :cond_3

    div-float p1, v1, p1

    :cond_3
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minMaxRatio()F

    move-result p2

    cmpg-float p2, p1, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez p2, :cond_4

    move p2, v2

    goto :goto_0

    :cond_4
    move p2, v1

    :goto_0
    iget v3, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v4, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    if-ge v3, v4, :cond_5

    move v3, v2

    goto :goto_1

    :cond_5
    move v3, v1

    :goto_1
    const/4 v4, 0x2

    new-array v5, v4, [[F

    new-array v6, v4, [F

    iget v7, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v7, v7

    aput v7, v6, v1

    iget v7, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v7, v7

    div-float/2addr v7, p1

    aput v7, v6, v2

    aput-object v6, v5, v1

    new-array v6, v4, [F

    iget v7, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v7, v7

    mul-float/2addr v7, p1

    aput v7, v6, v1

    iget v7, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v7, v7

    aput v7, v6, v2

    aput-object v6, v5, v2

    new-array v6, v4, [[F

    new-array v7, v4, [F

    iget v8, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v8, v8

    aput v8, v7, v1

    iget v8, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v8, v8

    div-float/2addr v8, p1

    aput v8, v7, v2

    aput-object v7, v6, v1

    new-array v4, v4, [F

    iget v7, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v7, v7

    mul-float/2addr v7, p1

    aput v7, v4, v1

    iget p1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float p1, p1

    aput p1, v4, v2

    aput-object v4, v6, v2

    aget-object p1, v5, p2

    sub-int/2addr v2, v3

    aget p1, p1, v2

    iput p1, v0, Landroid/graphics/RectF;->right:F

    aget-object p1, v6, p2

    aget p1, p1, v3

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    :goto_2
    iget p1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p2

    sub-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/RectF;->left:F

    iget p0, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float p0, p0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p1

    sub-float/2addr p0, p1

    mul-float/2addr p0, p2

    iput p0, v0, Landroid/graphics/RectF;->top:F

    iget p0, v0, Landroid/graphics/RectF;->right:F

    iget p1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr p0, p1

    iput p0, v0, Landroid/graphics/RectF;->right:F

    iget p0, v0, Landroid/graphics/RectF;->bottom:F

    iget p1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr p0, p1

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method public static computerOutCenter(Landroid/graphics/Rect;FZ)Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Landroid/graphics/Rect;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/RectHelper;->computerOutSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;FZ)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p0

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->right:I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget p2, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->top:I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    add-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public static computerOutScale(Landroid/graphics/Rect;FZ)F
    .locals 2

    invoke-static {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/RectHelper;->computerOutCenter(Landroid/graphics/Rect;FZ)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    if-eqz p2, :cond_0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0

    :cond_0
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static computerOutSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;FZ)Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->getRatioFloat()F

    move-result v0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Lorg/lasque/tusdk/core/struct/TuSdkSize;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    if-eqz p2, :cond_1

    cmpl-float p2, v0, p1

    if-lez p2, :cond_2

    goto :goto_0

    :cond_1
    cmpl-float p2, v0, p1

    if-lez p2, :cond_3

    :cond_2
    iget p0, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iput p0, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget p0, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float p0, p0

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    iput p0, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    goto :goto_1

    :cond_3
    :goto_0
    iget p0, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iput p0, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget p0, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    iput p0, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    :goto_1
    return-object v1
.end method

.method public static computerPotintDistance(Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget p0, p0, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p0, p1

    int-to-float p0, p0

    mul-float/2addr v0, v0

    mul-float/2addr p0, p0

    add-float/2addr v0, p0

    float-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static computerPotintDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p1

    mul-float/2addr v0, v0

    mul-float/2addr p0, p0

    add-float/2addr v0, p0

    float-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static fixedCorpPrecentRect(Landroid/graphics/RectF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/RectF;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->right:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iput v1, p0, Landroid/graphics/RectF;->right:F

    :cond_1
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iput v1, p0, Landroid/graphics/RectF;->bottom:F

    :cond_2
    iget v0, p0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    iput v2, p0, Landroid/graphics/RectF;->left:F

    :cond_3
    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    iput v2, p0, Landroid/graphics/RectF;->top:F

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget v0, p0, Landroid/graphics/RectF;->right:F

    sub-float v0, v1, v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    :cond_5
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v1, v0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    :cond_6
    if-nez p1, :cond_7

    return-object p0

    :cond_7
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    sget-object v2, Lorg/lasque/tusdk/core/utils/RectHelper$1;->a:[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->ordinal()I

    move-result p1

    aget p1, v2, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget p1, p0, Landroid/graphics/RectF;->bottom:F

    sub-float p1, v1, p1

    goto :goto_1

    :pswitch_1
    iget p1, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :pswitch_2
    iget p1, p0, Landroid/graphics/RectF;->top:F

    iput p1, v0, Landroid/graphics/RectF;->left:F

    :goto_0
    iget p1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/RectF;->right:F

    iget p1, p0, Landroid/graphics/RectF;->left:F

    iput p1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :pswitch_3
    iget p1, p0, Landroid/graphics/RectF;->top:F

    :goto_1
    iput p1, v0, Landroid/graphics/RectF;->left:F

    iget p1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float/2addr p1, v2

    iput p1, v0, Landroid/graphics/RectF;->right:F

    iget p1, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    :goto_2
    iget p1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    add-float/2addr p1, p0

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    :pswitch_4
    iget p1, p0, Landroid/graphics/RectF;->right:F

    sub-float p1, v1, p1

    iput p1, v0, Landroid/graphics/RectF;->left:F

    iget p1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr p1, v2

    iput p1, v0, Landroid/graphics/RectF;->right:F

    :pswitch_5
    iget p1, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    sub-float/2addr p1, p0

    iput p1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_3

    :pswitch_6
    iget p1, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget p1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    add-float/2addr p1, p0

    iput p1, v0, Landroid/graphics/RectF;->right:F

    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fixedRectF(Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 3

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/RectF;->right:F

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p1, v1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x0

    if-gez p1, :cond_1

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_1
    iget p1, v0, Landroid/graphics/Rect;->left:I

    if-gez p1, :cond_2

    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    if-le p1, v1, :cond_3

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    if-le p1, v1, :cond_5

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    add-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->right:I

    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_6

    iget p0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 p0, p0, -0x1

    iput p0, v0, Landroid/graphics/Rect;->right:I

    :cond_6
    return-object v0

    :cond_7
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDistanceOfTwoPoints(FFFF)F
    .locals 4

    sub-float/2addr p0, p2

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float/2addr p1, p3

    float-to-double p0, p1

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static getDistanceOfTwoPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 2

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, p0, v1, p1}, Lorg/lasque/tusdk/core/utils/RectHelper;->getDistanceOfTwoPoints(FFFF)F

    move-result p0

    return p0
.end method

.method public static getRectInParent(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method public static getRectInParent(Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v1, v1

    iget v2, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/RectF;->top:F

    mul-float/2addr v1, v2

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float p1, p1

    mul-float/2addr p1, v3

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget p1, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/RectF;->right:F

    iget p1, v0, Landroid/graphics/RectF;->top:F

    iget p0, p0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float p0, p0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    mul-float/2addr p0, p2

    add-float/2addr p1, p0

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static makeRectWithAspectRatioInsideRect(Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->getRatioFloat()F

    move-result v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->getRatioFloat()F

    move-result p0

    mul-float/2addr v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p0, v1

    iput p0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget v2, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    sub-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    iput v1, p0, Landroid/graphics/Rect;->top:I

    iget p1, p0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static makeRectWithAspectRatioOutsideRect(Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->width:F

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->width:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->getRatioFloat()F

    move-result v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->height:F

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->height:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->height:F

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->height:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->getRatioFloat()F

    move-result p0

    mul-float/2addr v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p0, v1

    int-to-float p0, p0

    iput p0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->width:F

    :cond_1
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->width:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v3

    iput v1, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->width:F

    add-float/2addr v1, v3

    iput v1, p0, Landroid/graphics/RectF;->right:F

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->height:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p1

    iput v1, p0, Landroid/graphics/RectF;->top:F

    iget p1, p0, Landroid/graphics/RectF;->top:F

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->height:F

    add-float/2addr p1, v0

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static mergeEnclosingRectangle(Landroid/graphics/RectF;Landroid/graphics/PointF;F)V
    .locals 1

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/RectHelper;->rotationWithOrigin(Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p1

    iget p2, p0, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Landroid/graphics/RectF;->left:F

    iget p2, p0, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Landroid/graphics/RectF;->right:F

    iget p2, p0, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Landroid/graphics/RectF;->top:F

    iget p2, p0, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static minEnclosingRectangle(Landroid/graphics/PointF;Lorg/lasque/tusdk/core/struct/TuSdkSize;F)Landroid/graphics/RectF;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float p1, p1

    mul-float/2addr p1, v2

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iget v2, v0, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    neg-float v2, v2

    iput v2, v1, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v1, p2}, Lorg/lasque/tusdk/core/utils/RectHelper;->mergeEnclosingRectangle(Landroid/graphics/RectF;Landroid/graphics/PointF;F)V

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    neg-float v2, v2

    iput v2, v1, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v1, p2}, Lorg/lasque/tusdk/core/utils/RectHelper;->mergeEnclosingRectangle(Landroid/graphics/RectF;Landroid/graphics/PointF;F)V

    iget v2, v0, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v1, p2}, Lorg/lasque/tusdk/core/utils/RectHelper;->mergeEnclosingRectangle(Landroid/graphics/RectF;Landroid/graphics/PointF;F)V

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v1, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v1, p2}, Lorg/lasque/tusdk/core/utils/RectHelper;->mergeEnclosingRectangle(Landroid/graphics/RectF;Landroid/graphics/PointF;F)V

    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget v0, p0, Landroid/graphics/PointF;->x:F

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->left:F

    iget p2, p1, Landroid/graphics/RectF;->top:F

    iget v0, p0, Landroid/graphics/PointF;->y:F

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->top:F

    iget p2, p1, Landroid/graphics/RectF;->right:F

    iget v0, p0, Landroid/graphics/PointF;->x:F

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->right:F

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    add-float/2addr p2, p0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-object p1
.end method

.method public static rotationWithOrigin(Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .locals 9

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    float-to-double v1, p1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v3

    const-wide v3, 0x4066800000000000L    # 180.0

    div-double/2addr v1, v3

    iget p1, p0, Landroid/graphics/PointF;->x:F

    float-to-double v3, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    iget p1, p0, Landroid/graphics/PointF;->y:F

    float-to-double v5, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float p1, v3

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iget p1, p0, Landroid/graphics/PointF;->y:F

    float-to-double v3, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    iget p0, p0, Landroid/graphics/PointF;->x:F

    float-to-double p0, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr p0, v1

    sub-double/2addr v3, p0

    double-to-float p0, v3

    iput p0, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method public static rotationWithRotation(Landroid/graphics/Rect;Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Rect;
    .locals 4

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    if-le v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/utils/RectHelper$1;->a:[I

    invoke-virtual {p2}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_0
    new-instance p2, Landroid/graphics/Rect;

    iget v0, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget p0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p0

    invoke-direct {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_0

    :pswitch_1
    new-instance p2, Landroid/graphics/Rect;

    iget v0, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    iget p0, p0, Landroid/graphics/Rect;->right:I

    invoke-direct {p2, v0, v1, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :pswitch_2
    new-instance p2, Landroid/graphics/Rect;

    iget p1, p0, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->right:I

    invoke-direct {p2, p1, v0, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :pswitch_3
    new-instance p2, Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget p0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p0

    invoke-direct {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :pswitch_4
    new-instance p2, Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p0

    invoke-direct {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :pswitch_5
    new-instance p2, Landroid/graphics/Rect;

    iget v0, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget v2, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p0

    invoke-direct {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :pswitch_6
    new-instance p2, Landroid/graphics/Rect;

    iget v0, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p2, v0, v1, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object p2

    :cond_1
    :goto_1
    return-object p0

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
.end method
