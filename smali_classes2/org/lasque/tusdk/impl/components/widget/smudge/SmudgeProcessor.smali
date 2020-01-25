.class public final Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;
.super Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;


# instance fields
.field private a:Landroid/graphics/Canvas;

.field private b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;-><init>()V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v0, v0, 0x1e

    div-int/lit8 v1, v1, 0x1e

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private a(DDDDD)V
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->getBrush()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->getRotateType()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

    move-result-object v1

    sget-object v2, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;->RotateRandom:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    if-ne v1, v2, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v5, 0x4076800000000000L    # 360.0

    mul-double/2addr v1, v5

    :goto_0
    move-wide v12, v1

    goto :goto_1

    :cond_0
    sget-object v2, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;->RotateLimitRandom:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

    if-ne v1, v2, :cond_1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    sub-double/2addr v1, v3

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    mul-double/2addr v1, v5

    add-double v1, p9, v1

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;->RotateNone:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

    if-ne v1, v2, :cond_2

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_2
    move-wide/from16 v12, p9

    :goto_1
    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->getPositionType()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;

    move-result-object v1

    sget-object v2, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;->PositionRandom:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;

    if-ne v1, v2, :cond_3

    move-object/from16 v1, p0

    iget-object v2, v1, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->brushSnap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v5, v2

    mul-double v5, v5, p5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    sub-double/2addr v7, v3

    mul-double/2addr v7, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    sub-double/2addr v9, v3

    mul-double/2addr v5, v9

    add-double v2, p1, v7

    add-double v4, p3, v5

    move-wide v6, v2

    move-wide v8, v4

    goto :goto_2

    :cond_3
    move-object/from16 v1, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    :goto_2
    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->getSizeType()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$SizeType;

    move-result-object v0

    sget-object v2, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$SizeType;->SizeRandom:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$SizeType;

    if-ne v0, v2, :cond_4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double v4, p5, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v14, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v2, v14

    sub-double/2addr v10, v2

    mul-double v2, p7, v10

    move-wide v14, v2

    move-wide v10, v4

    goto :goto_3

    :cond_4
    move-wide/from16 v10, p5

    move-wide/from16 v14, p7

    :goto_3
    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v15}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->b(DDDDD)V

    return-void
.end method

.method private a(FFF)V
    .locals 7

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->originalSnap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->originalSnap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-ltz v3, :cond_0

    int-to-float v3, v0

    cmpg-float v4, p1, v3

    if-gez v4, :cond_0

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    int-to-float v2, v1

    cmpg-float v4, p2, v2

    if-gez v4, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    iget-object v4, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->brushSnap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    div-int/lit8 v0, v0, 0x1e

    div-int/lit8 v1, v1, 0x1e

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v3, v6

    int-to-float v0, v0

    div-float/2addr v3, v0

    add-float/2addr v2, v6

    int-to-float v0, v1

    div-float/2addr v2, v0

    div-float/2addr v3, p3

    div-float/2addr v2, p3

    invoke-virtual {v5, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v4, v0

    sub-float v0, v4, p1

    div-float/2addr v0, p3

    sub-float v1, v4, p2

    div-float/2addr v1, p3

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->a:Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p3, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    sub-float/2addr p1, v4

    sub-float/2addr p2, v4

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->smudgeCanvas:Landroid/graphics/Canvas;

    iget-object p3, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->brushSnap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p3, v0, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private b(DDDDD)V
    .locals 13

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    iget-object v7, v0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->originalSnap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, v0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->originalSnap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const-wide/16 v9, 0x0

    cmpl-double v11, v1, v9

    if-ltz v11, :cond_0

    int-to-double v11, v7

    cmpg-double v7, v1, v11

    if-gez v7, :cond_0

    cmpl-double v7, v3, v9

    if-ltz v7, :cond_0

    int-to-double v7, v8

    cmpg-double v7, v3, v7

    if-gez v7, :cond_0

    iget-object v7, v0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->brushSnap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-double v7, v7

    mul-double/2addr v7, v5

    double-to-int v7, v7

    iget-object v8, v0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->originalSnap:Landroid/graphics/Bitmap;

    double-to-int v9, v1

    double-to-int v10, v3

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    double-to-float v5, v5

    invoke-virtual {v9, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    neg-int v5, v7

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v9, v5, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-wide/from16 v5, p7

    double-to-float v5, v5

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    double-to-float v1, v1

    double-to-float v2, v3

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v8, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    const-wide v3, 0x406fe00000000000L    # 255.0

    mul-double v3, v3, p9

    double-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v2, v0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->smudgeCanvas:Landroid/graphics/Canvas;

    iget-object v3, v0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->brushSnap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private b(FFF)V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->originalSnap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->originalSnap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-ltz v3, :cond_0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-ltz v0, :cond_0

    int-to-float v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->brushSnap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, p3, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    div-int/lit8 v0, v0, 0x2

    int-to-float p3, v0

    sub-float/2addr p1, p3

    sub-float/2addr p2, p3

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->smudgeCanvas:Landroid/graphics/Canvas;

    iget-object p3, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->brushSnap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p3, v1, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->destroy()V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->b:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->recycled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected final drawAtPoint(FFFFF)V
    .locals 16

    move-object/from16 v11, p0

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p4

    iget v3, v11, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->mBrushScale:F

    div-float v3, p3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    const/high16 v5, 0x3f000000    # 0.5f

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    const/4 v3, 0x0

    cmpl-float v5, v0, v3

    if-ltz v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->getImageWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_2

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->getImageHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->getBrush()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    move-result-object v3

    invoke-virtual {v3}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->getType()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    move-result-object v3

    sget-object v5, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;->TypeEraser:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    if-ne v3, v5, :cond_0

    invoke-direct {v11, v0, v1, v2}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->b(FFF)V

    goto :goto_0

    :cond_0
    sget-object v5, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;->TypeMosaic:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    if-ne v3, v5, :cond_1

    invoke-direct {v11, v0, v1, v2}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->a(FFF)V

    goto :goto_0

    :cond_1
    float-to-double v5, v0

    float-to-double v7, v1

    float-to-double v9, v2

    float-to-double v12, v4

    move/from16 v0, p5

    float-to-double v14, v0

    move-object/from16 v0, p0

    move-wide v1, v5

    move-wide v3, v7

    move-wide v5, v9

    move-wide v7, v12

    move-wide v9, v14

    invoke-direct/range {v0 .. v10}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->a(DDDDD)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected setBrush(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->setBrush(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->b:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->recycled(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->getType()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    move-result-object p1

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;->TypeMosaic:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->originalSnap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    new-instance p1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->brushSnap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->a:Landroid/graphics/Canvas;

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->originalSnap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;->b:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method
