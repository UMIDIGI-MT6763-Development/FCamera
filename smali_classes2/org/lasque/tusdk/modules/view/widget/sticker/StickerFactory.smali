.class public Lorg/lasque/tusdk/modules/view/widget/sticker/StickerFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/struct/TuSdkSizeF;F)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p2, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->width:F

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget p2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->height:F

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, p3}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;FLorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;)V
    .locals 10

    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    iget-object v0, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->content:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-gtz v0, :cond_1

    move p3, v1

    :cond_1
    iget v0, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->textSize:F

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->sp2pxFloat(F)F

    move-result v0

    mul-float/2addr v0, p3

    invoke-virtual {p2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->getRect()Landroid/graphics/RectF;

    move-result-object p3

    invoke-static {p1, p3}, Lorg/lasque/tusdk/core/utils/RectHelper;->getRectInParent(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    new-instance p3, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {p3, v2}, Landroid/text/TextPaint;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget v4, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->getAlignment()Landroid/graphics/Paint$Align;

    move-result-object v5

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    if-ne v5, v6, :cond_2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->getAlignment()Landroid/graphics/Paint$Align;

    move-result-object v5

    sget-object v6, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne v5, v6, :cond_3

    iget v4, p1, Landroid/graphics/RectF;->right:F

    :cond_3
    :goto_0
    invoke-virtual {p2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->getAlignment()Landroid/graphics/Paint$Align;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v5, p4, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->text:Ljava/util/List;

    if-nez v5, :cond_4

    iget-object v5, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->content:Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    iget-object p4, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->content:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p4, p3, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-virtual {p3, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {p2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->getColor()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->getShadowColor()I

    move-result p2

    invoke-virtual {p3, v1, v1, v1, p2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-virtual {p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/lasque/tusdk/core/utils/FontUtils;->computBaseline(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;)I

    move-result p1

    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    int-to-float p1, p1

    invoke-virtual {p0, p2, v4, p1, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_4
    iget-object v1, p4, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->text:Ljava/util/List;

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-object v1, p4, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->text:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v6

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v5, p3, v6, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\s+\\n"

    const-string v7, "\n"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-boolean v1, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->underline:Z

    invoke-virtual {p3, v1}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    iget p4, p4, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->degree:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v1, v5

    iget v5, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v6

    add-float/2addr v5, v7

    invoke-virtual {p0, p4, v1, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p4, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->backgroundColor:Ljava/lang/String;

    if-eqz p4, :cond_7

    iget-object p4, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->backgroundColor:Ljava/lang/String;

    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/text/TextPaint;->setColor(I)V

    new-instance p4, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v5, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->paddings:I

    int-to-float v5, v5

    invoke-static {v5}, Lorg/lasque/tusdk/core/TuSdkContext;->dip2px(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v1, v5

    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget v7, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->paddings:I

    int-to-float v7, v7

    invoke-static {v7}, Lorg/lasque/tusdk/core/TuSdkContext;->dip2px(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v5, v7

    iget v7, p1, Landroid/graphics/RectF;->right:F

    iget v8, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->paddings:I

    int-to-float v8, v8

    invoke-static {v8}, Lorg/lasque/tusdk/core/TuSdkContext;->dip2px(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v8, p1, Landroid/graphics/RectF;->bottom:F

    iget v9, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->paddings:I

    int-to-float v9, v9

    invoke-static {v9}, Lorg/lasque/tusdk/core/TuSdkContext;->dip2px(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-direct {p4, v1, v5, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, p4, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_7
    invoke-virtual {p3, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {p2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->getColor()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p4, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->shadowColor:Ljava/lang/String;

    if-eqz p4, :cond_8

    const/high16 p4, 0x40400000    # 3.0f

    invoke-virtual {p2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->getShadowColor()I

    move-result p2

    invoke-virtual {p3, v6, p4, v6, p2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_8
    invoke-virtual {p3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p4

    int-to-float v0, p4

    iget v1, p2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v1, v1

    iget v5, p2, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v1, v5

    mul-float/2addr v0, v1

    div-float/2addr v0, v6

    iget v1, p2, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float v1, v0, v1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, p4, :cond_9

    sub-int v6, p4, v5

    sub-int/2addr v6, v2

    neg-int v6, v6

    int-to-float v6, v6

    iget v7, p2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v7, v7

    iget v8, p2, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v6, v1

    iget v7, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v0

    add-float/2addr v7, v6

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6, v4, v7, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    :goto_3
    return-void
.end method

.method private static a(Landroid/graphics/Canvas;Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;)V
    .locals 3

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->item:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v0, v0

    iget-object v1, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->center:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v1, v1

    iget-object v2, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->center:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->create(FF)Lorg/lasque/tusdk/core/struct/TuSdkSizeF;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerFactory;->a(Landroid/graphics/Canvas;Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;Lorg/lasque/tusdk/core/struct/TuSdkSizeF;)V

    invoke-static {p0, p1, p2, v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerFactory;->b(Landroid/graphics/Canvas;Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;Lorg/lasque/tusdk/core/struct/TuSdkSizeF;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Landroid/graphics/Canvas;Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;Lorg/lasque/tusdk/core/struct/TuSdkSizeF;)V
    .locals 4

    if-eqz p0, :cond_5

    if-eqz p2, :cond_5

    iget-object v0, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->item:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->item:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget-wide v0, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->item:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    move-result-object v0

    iget-object v1, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->item:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->loadStickerItem(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)Z

    :cond_2
    iget-object v0, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->item:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->item:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->degree:F

    invoke-static {v0, p1, p3, v1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerFactory;->a(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/struct/TuSdkSizeF;F)Landroid/graphics/Bitmap;

    move-result-object p3

    iget-object v0, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->item:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->setImage(Landroid/graphics/Bitmap;)V

    invoke-static {p3}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Landroid/graphics/Bitmap;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iget-object p2, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->center:Landroid/graphics/RectF;

    invoke-static {p1, v0, p2}, Lorg/lasque/tusdk/core/utils/RectHelper;->getRectInParent(Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, p3, p2, p1, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-static {p3}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->recycled(Landroid/graphics/Bitmap;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private static b(Landroid/graphics/Canvas;Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;Lorg/lasque/tusdk/core/struct/TuSdkSizeF;)V
    .locals 2

    iget-object v0, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->item:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->getType()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;->TypeText:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;

    if-ne v0, v1, :cond_1

    iget-object v0, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->item:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget-object v0, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->texts:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->toSizeCeil()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iget-object v1, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->center:Landroid/graphics/RectF;

    invoke-static {p1, v0, v1}, Lorg/lasque/tusdk/core/utils/RectHelper;->getRectInParent(Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    iget v0, p3, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->width:F

    iget-object v1, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->item:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-virtual {v1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->sizePixies()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget p3, p3, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->height:F

    iget-object v1, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->item:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-virtual {v1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->sizePixies()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v1, v1

    div-float/2addr p3, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iget-object v0, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->item:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget-object v0, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;

    invoke-static {p0, p1, v1, p3, p2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerFactory;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;FLorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static megerStickers(Landroid/graphics/Bitmap;Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerFactory;->megerStickers(Landroid/graphics/Bitmap;Ljava/util/List;Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static megerStickers(Landroid/graphics/Bitmap;Ljava/util/List;Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;",
            ">;",
            "Landroid/graphics/Bitmap$Config;",
            "Z)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_1
    invoke-static {p0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Landroid/graphics/Bitmap;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v2, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-static {v1, v2, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p3, :cond_2

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->recycled(Landroid/graphics/Bitmap;)V

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;

    invoke-static {v1, v0, p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerFactory;->a(Landroid/graphics/Canvas;Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;)V

    goto :goto_0

    :cond_3
    const/16 p0, 0x1f

    invoke-virtual {v1, p0}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-object p2

    :cond_4
    :goto_1
    return-object p0
.end method
