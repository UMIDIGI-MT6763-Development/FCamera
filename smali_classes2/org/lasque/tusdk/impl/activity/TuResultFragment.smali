.class public abstract Lorg/lasque/tusdk/impl/activity/TuResultFragment;
.super Lorg/lasque/tusdk/impl/activity/TuComponentFragment;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuComponentFragment;-><init>()V

    const/16 v0, 0x5f

    iput v0, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->d:I

    return-void
.end method

.method private a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;IILandroid/graphics/Rect;Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;
    .locals 10

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->ins()Lorg/lasque/tusdk/core/TuSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->e:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->getMarkMargin()F

    move-result v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p2

    iget v3, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v3, v2, v3

    int-to-float v5, v0

    sub-float/2addr v3, v5

    div-float/2addr v3, v2

    int-to-float p3, p3

    iget v6, p4, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    sub-float v6, p3, v6

    sub-float/2addr v6, v5

    div-float/2addr v6, p3

    iget v7, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    div-float/2addr v7, v2

    iget v9, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->height:I

    int-to-float v9, v9

    mul-float/2addr v9, v8

    div-float/2addr v9, p3

    invoke-direct {v1, v3, v6, v7, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->e:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->getMarkPosition()Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    move-result-object v3

    iget v6, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerType:I

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    if-ne v6, v7, :cond_4

    sget-object v6, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->BottomRight:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    if-ne v3, v6, :cond_0

    iget v6, p4, Landroid/graphics/Rect;->right:I

    sub-int v6, p2, v6

    sub-int/2addr v6, v0

    int-to-float v0, v6

    iget v6, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v0, v6

    goto :goto_1

    :cond_0
    sget-object v6, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->BottomLeft:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    if-ne v3, v6, :cond_1

    iget v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    goto :goto_0

    :cond_1
    sget-object v6, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->TopLeft:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    if-ne v3, v6, :cond_2

    iget v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    goto :goto_2

    :cond_2
    sget-object v6, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->TopRight:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    if-ne v3, v6, :cond_3

    iget v6, p4, Landroid/graphics/Rect;->right:I

    sub-int v6, p2, v6

    sub-int/2addr v6, v0

    int-to-float v0, v6

    iget v6, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v0, v6

    goto :goto_3

    :cond_3
    sget-object v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->Center:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    if-ne v3, v0, :cond_8

    div-float v0, v2, v4

    iget v6, p4, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    sub-float/2addr v0, v6

    iget v6, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v0, v6

    goto :goto_5

    :cond_4
    sget-object v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->BottomLeft:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    if-ne v3, v0, :cond_5

    iget v0, p4, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v6, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    sub-float/2addr v0, v6

    :goto_0
    add-float/2addr v0, v5

    :goto_1
    div-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->left:F

    goto :goto_6

    :cond_5
    sget-object v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->TopLeft:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    if-ne v3, v0, :cond_6

    iget v0, p4, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v6, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    sub-float/2addr v0, v6

    :goto_2
    add-float/2addr v0, v5

    :goto_3
    div-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->left:F

    :goto_4
    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    add-float/2addr v0, v5

    div-float/2addr v0, p3

    iput v0, v1, Landroid/graphics/RectF;->top:F

    goto :goto_6

    :cond_6
    sget-object v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->TopRight:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    if-ne v3, v0, :cond_7

    goto :goto_4

    :cond_7
    sget-object v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->Center:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    if-ne v3, v0, :cond_8

    div-float v0, v2, v4

    iget v6, p4, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v0, v6

    iget v6, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    sub-float/2addr v0, v6

    :goto_5
    div-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->left:F

    iput v8, v1, Landroid/graphics/RectF;->top:F

    :cond_8
    :goto_6
    iget v0, p4, Landroid/graphics/Rect;->right:I

    iget v6, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    if-le v0, v6, :cond_11

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->e:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->getMarkTextPosition()Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;

    move-result-object v0

    if-eq v0, p5, :cond_11

    iget p5, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p5

    int-to-float p2, p2

    iget p5, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    int-to-float p5, p5

    div-float/2addr p5, v4

    add-float/2addr p2, p5

    sub-float/2addr p2, v5

    div-float/2addr p2, v2

    iput p2, v1, Landroid/graphics/RectF;->left:F

    iget p2, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerType:I

    if-ne p2, v7, :cond_d

    sget-object p2, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->BottomRight:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    if-ne v3, p2, :cond_9

    iget p2, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    int-to-float p2, p2

    div-float/2addr p2, v4

    sub-float p2, v2, p2

    sub-float/2addr p2, v5

    goto :goto_8

    :cond_9
    sget-object p2, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->BottomLeft:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    if-ne v3, p2, :cond_a

    iget p2, p4, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget p3, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    int-to-float p3, p3

    div-float/2addr p3, v4

    sub-float/2addr p2, p3

    goto :goto_7

    :cond_a
    sget-object p2, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->TopLeft:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    if-ne v3, p2, :cond_b

    iget p2, p4, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget p5, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    int-to-float p5, p5

    div-float/2addr p5, v4

    sub-float/2addr p2, p5

    goto :goto_9

    :cond_b
    sget-object p2, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->TopRight:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    if-ne v3, p2, :cond_c

    iget p2, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    int-to-float p2, p2

    div-float/2addr p2, v4

    sub-float p2, v2, p2

    sub-float/2addr p2, v5

    goto :goto_a

    :cond_c
    sget-object p2, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->Center:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    if-ne v3, p2, :cond_11

    div-float p2, v2, v4

    iget p3, p4, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    div-float/2addr p3, v4

    add-float/2addr p2, p3

    iget p3, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    int-to-float p3, p3

    div-float/2addr p3, v4

    sub-float/2addr p2, p3

    goto :goto_c

    :cond_d
    sget-object p2, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->BottomLeft:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    if-ne v3, p2, :cond_e

    iget p2, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    int-to-float p2, p2

    div-float/2addr p2, v4

    :goto_7
    add-float/2addr p2, v5

    :goto_8
    div-float/2addr p2, v2

    iput p2, v1, Landroid/graphics/RectF;->left:F

    goto :goto_d

    :cond_e
    sget-object p2, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->TopLeft:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    if-ne v3, p2, :cond_f

    iget p2, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    int-to-float p2, p2

    div-float/2addr p2, v4

    :goto_9
    add-float/2addr p2, v5

    :goto_a
    div-float/2addr p2, v2

    iput p2, v1, Landroid/graphics/RectF;->left:F

    :goto_b
    iget p2, p4, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    div-float/2addr p2, v4

    add-float/2addr p2, v5

    div-float/2addr p2, p3

    iput p2, v1, Landroid/graphics/RectF;->top:F

    goto :goto_d

    :cond_f
    sget-object p2, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->TopRight:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    if-ne v3, p2, :cond_10

    goto :goto_b

    :cond_10
    sget-object p2, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->Center:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    if-ne v3, p2, :cond_11

    div-float p2, v2, v4

    iget p3, p4, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    div-float/2addr p3, v4

    sub-float/2addr p2, p3

    iget p3, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    int-to-float p3, p3

    div-float/2addr p3, v4

    add-float/2addr p2, p3

    :goto_c
    div-float/2addr p2, v2

    iput p2, v1, Landroid/graphics/RectF;->left:F

    iput v8, v1, Landroid/graphics/RectF;->top:F

    :cond_11
    :goto_d
    iget p2, v1, Landroid/graphics/RectF;->right:F

    iget p3, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr p2, p3

    iput p2, v1, Landroid/graphics/RectF;->right:F

    iget p2, v1, Landroid/graphics/RectF;->bottom:F

    iget p3, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, p3

    iput p2, v1, Landroid/graphics/RectF;->bottom:F

    new-instance p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;

    invoke-direct {p2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;-><init>()V

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->copy()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    move-result-object p3

    iput-object p3, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->item:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget-object p3, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->item:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->getImage()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->setImage(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    iput p1, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->degree:F

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object p1, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->center:Landroid/graphics/RectF;

    return-object p2
.end method

.method private a(Lorg/lasque/tusdk/core/TuSdkResult;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->canSaveFile()Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->notifyError(Lorg/lasque/tusdk/core/TuSdkResult;Lorg/lasque/tusdk/modules/components/ComponentErrorType;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected addWaterMarkToImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    if-eqz p1, :cond_6

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->e:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->ins()Lorg/lasque/tusdk/core/TuSdkContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v7, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->e:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->getMarkImage()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_1

    new-instance v6, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-direct {v6}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;-><init>()V

    const/4 v8, 0x1

    iput v8, v6, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerType:I

    iput-wide v4, v6, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerId:J

    iput-wide v4, v6, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->groupId:J

    invoke-virtual {v6, v2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->setImage(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iput v8, v6, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v6, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->height:I

    iget v2, v6, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    iput v2, v7, Landroid/graphics/Rect;->right:I

    iget v2, v6, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->height:I

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    move-object v2, v6

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    iget-object v6, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->e:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;

    invoke-virtual {v6}, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->getMarkText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/lasque/tusdk/core/utils/StringHelper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lorg/lasque/tusdk/core/utils/StringHelper;->isNotBlank(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v3, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-direct {v3}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;-><init>()V

    const/4 v8, 0x2

    iput v8, v3, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerType:I

    iput-wide v4, v3, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerId:J

    iput-wide v4, v3, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->groupId:J

    new-instance v4, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;

    invoke-direct {v4}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;-><init>()V

    iput-object v6, v4, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->content:Ljava/lang/String;

    iget-object v5, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->e:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->getMarkTextColor()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->color:Ljava/lang/String;

    iget-object v5, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->e:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->getMarkTextSize()I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->textSize:F

    iget-object v5, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->e:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->getMarkTextShadowColor()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->shadowColor:Ljava/lang/String;

    iput v1, v4, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->alignment:I

    const/4 v1, 0x0

    iput v1, v4, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->rectTop:F

    iput v1, v4, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->rectLeft:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v4, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->rectWidth:F

    iput v1, v4, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->rectHeight:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, v3, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->texts:Ljava/util/ArrayList;

    iget-object v1, v4, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->content:Ljava/lang/String;

    iget v4, v4, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->textSize:F

    invoke-static {v1, v4}, Lorg/lasque/tusdk/core/utils/FontUtils;->getTextBounds(Ljava/lang/String;F)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v3, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v3, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->height:I

    iget v1, v7, Landroid/graphics/Rect;->right:I

    if-lez v1, :cond_2

    iget v1, v7, Landroid/graphics/Rect;->right:I

    iget v4, v3, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    add-int/2addr v1, v4

    iget-object v4, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->e:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;

    invoke-virtual {v4}, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->getMarkTextPadding()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Lorg/lasque/tusdk/core/utils/ContextUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v7, Landroid/graphics/Rect;->right:I

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    iget v1, v3, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_2
    iget v0, v3, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    iget v0, v3, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->height:I

    :goto_1
    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    :cond_3
    move-object v0, v3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v6, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;->Right:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;

    move-object v1, p0

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;IILandroid/graphics/Rect;Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v6, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;->Right:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;

    move-object v1, p0

    move-object v2, v0

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;IILandroid/graphics/Rect;Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {p1, v8}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerFactory;->megerStickers(Landroid/graphics/Bitmap;Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_6
    :goto_2
    return-object p1
.end method

.method protected abstract asyncNotifyProcessing(Lorg/lasque/tusdk/core/TuSdkResult;)Z
.end method

.method protected asyncProcessingIfNeedSave(Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->notifyProcessing(Lorg/lasque/tusdk/core/TuSdkResult;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->asyncNotifyProcessing(Lorg/lasque/tusdk/core/TuSdkResult;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->isSaveToTemp()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->saveToTemp(Lorg/lasque/tusdk/core/TuSdkResult;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->isSaveToAlbum()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->saveToAlbum(Lorg/lasque/tusdk/core/TuSdkResult;)V

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->backUIThreadNotifyProcessing(Lorg/lasque/tusdk/core/TuSdkResult;)V

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editPhotoAction:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method

.method protected backUIThreadNotifyProcessing(Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/impl/activity/TuResultFragment$1;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/impl/activity/TuResultFragment$1;-><init>(Lorg/lasque/tusdk/impl/activity/TuResultFragment;Lorg/lasque/tusdk/core/TuSdkResult;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public canSaveFile()Lorg/lasque/tusdk/modules/components/ComponentErrorType;
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/core/utils/FileHelper;->mountedExternalStorage()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->TypeNotFoundSDCard:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    const-string v1, "lsq_save_not_found_sdcard"

    :goto_0
    invoke-static {v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->hubError(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->hasAvailableExternal(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->TypeStorageSpace:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    const-string v1, "lsq_save_insufficient_storage_space"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getOutputCompress()I
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->d:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->d:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    iput v1, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->d:I

    :cond_1
    :goto_0
    iget v0, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->d:I

    return v0
.end method

.method public getSaveToAlbumName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getWaterMarkOption()Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->e:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;

    return-object v0
.end method

.method public isSaveToAlbum()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->b:Z

    return v0
.end method

.method public isSaveToTemp()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->a:Z

    return v0
.end method

.method protected abstract notifyProcessing(Lorg/lasque/tusdk/core/TuSdkResult;)V
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->e:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->e:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;

    :cond_0
    invoke-super {p0}, Lorg/lasque/tusdk/impl/activity/TuComponentFragment;->onDestroyView()V

    return-void
.end method

.method protected saveToAlbum(Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 5

    if-eqz p1, :cond_4

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->a(Lorg/lasque/tusdk/core/TuSdkResult;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "lsq_save_saveToAlbum"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->hubStatus(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->getSaveToAlbumName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/StringHelper;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->getSaveToAlbumName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/AlbumHelper;->getAlbumFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->getOutputCompress()I

    move-result v4

    invoke-static {v2, v3, v4, v0}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->saveJpgToAblum(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/io/File;)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object v2

    iput-object v2, p1, Lorg/lasque/tusdk/core/TuSdkResult;->imageSqlInfo:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    iget-object v2, p1, Lorg/lasque/tusdk/core/TuSdkResult;->imageSqlInfo:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    if-eqz v2, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lorg/lasque/tusdk/core/TuSdkResult;->imageSqlInfo:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    iget-object v2, v2, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_2
    iput-object v1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->imageSqlInfo:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->metadata:Lorg/lasque/tusdk/core/exif/ExifInterface;

    iget-object v1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->imageSqlInfo:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    iget-object v1, v1, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/image/ExifHelper;->writeExifInterface(Lorg/lasque/tusdk/core/exif/ExifInterface;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object p1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->imageSqlInfo:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->notifyRefreshAblum(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;)V

    const-string p1, "lsq_save_saveToAlbum_succeed"

    invoke-static {p1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->hubSuccess(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "lsq_save_saveToAlbum_failed"

    invoke-static {p1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->hubError(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected saveToTemp(Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 6

    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->a(Lorg/lasque/tusdk/core/TuSdkResult;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "lsq_save_saveToTemp"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->hubStatus(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->getAppTempPath()Ljava/io/File;

    move-result-object v1

    const-string v2, "captureImage_%s.tmp"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lorg/lasque/tusdk/core/utils/StringHelper;->timeStampString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->imageFile:Ljava/io/File;

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->imageFile:Ljava/io/File;

    iget-object v1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->getOutputCompress()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->saveBitmap(Ljava/io/File;Landroid/graphics/Bitmap;I)Z

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->imageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->metadata:Lorg/lasque/tusdk/core/exif/ExifInterface;

    iget-object p1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->imageFile:Ljava/io/File;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/image/ExifHelper;->writeExifInterface(Lorg/lasque/tusdk/core/exif/ExifInterface;Ljava/io/File;)Z

    const-string p1, "lsq_save_saveToTemp_completed"

    invoke-static {p1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->hubSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "lsq_save_saveToTemp_failed"

    invoke-static {p1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->hubError(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setOutputCompress(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->d:I

    return-void
.end method

.method public setSaveToAlbum(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->b:Z

    return-void
.end method

.method public setSaveToAlbumName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->c:Ljava/lang/String;

    return-void
.end method

.method public setSaveToTemp(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->a:Z

    return-void
.end method

.method public setWaterMarkOption(Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->e:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->destroy()V

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->e:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;

    return-void
.end method
