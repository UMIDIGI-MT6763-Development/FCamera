.class public final Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;
.super Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;


# instance fields
.field private a:Lorg/lasque/tusdk/core/view/TuSdkTextView;

.field private b:Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

.field private c:Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

.field private d:Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

.field private e:I

.field private f:Z

.field private g:Landroid/view/View$OnClickListener;

.field private h:I

.field private i:I

.field private j:F

.field private k:I

.field private l:Z

.field private m:Ljava/lang/String;

.field protected mOnResizeButtonTouchListener:Landroid/view/View$OnTouchListener;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView$1;-><init>(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mOnResizeButtonTouchListener:Landroid/view/View$OnTouchListener;

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView$2;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView$2;-><init>(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView$1;-><init>(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mOnResizeButtonTouchListener:Landroid/view/View$OnTouchListener;

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView$2;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView$2;-><init>(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView$1;-><init>(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mOnResizeButtonTouchListener:Landroid/view/View$OnTouchListener;

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView$2;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView$2;-><init>(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a(I)I
    .locals 1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const v0, 0x800005

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private a(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-char v3, p1, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getTextSize()F

    move-result v4

    invoke-static {v3, v4}, Lorg/lasque/tusdk/core/utils/FontUtils;->getTextBoundsExcludeFontPadding(Ljava/lang/String;F)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v4, v2, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mDelegate:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface$StickerItemViewDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mDelegate:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface$StickerItemViewDelegate;

    invoke-interface {v0, p0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface$StickerItemViewDelegate;->onStickerItemViewClose(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mSticker:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mSticker:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->setImage(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 9

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mLastPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p2

    float-to-double p1, p1

    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mDegree:F

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    div-double/2addr p1, v0

    double-to-float p1, p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->a(Ljava/lang/String;)I

    move-result p2

    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->k:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->e:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    int-to-float p2, p2

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    return-void

    :cond_0
    iget-boolean p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->f:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    cmpg-float p2, p1, v0

    if-gez p2, :cond_1

    return-void

    :cond_1
    new-instance p2, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getWidth()I

    move-result v1

    iget v4, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->k:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mCMargin:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->e:I

    iget-object v3, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mCMargin:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v3

    float-to-int p1, p1

    add-int/2addr v2, p1

    iget p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->k:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr v2, p1

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-le v1, p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->f:Z

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mCSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mCMargin:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    add-int/2addr p1, p2

    iget-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mCSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget p2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mCMargin:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p0, p2, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->setViewSize(Landroid/view/View;II)V

    return-void

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->f:Z

    invoke-virtual {p0, p0, v2, v1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->setViewSize(Landroid/view/View;II)V

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mSticker:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getWidth()I

    move-result v1

    iget v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->k:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Lorg/lasque/tusdk/core/TuSdkContext;->px2dip(F)I

    move-result v1

    iput v1, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mSticker:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2}, Lorg/lasque/tusdk/core/TuSdkContext;->px2dip(F)I

    move-result p2

    iput p2, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->height:I

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mSticker:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->sizePixies()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mCSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mMaxScale:F

    iget p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mScale:F

    div-float/2addr p1, p2

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mMaxScale:F

    iget p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mMinScale:F

    iget p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mScale:F

    div-float/2addr p1, p2

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mMinScale:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mScale:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getTextSize()F

    move-result p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/TuSdkContext;->px2sp(F)F

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->j:F

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mCSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float p1, p1

    iget-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mCSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget p2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float p2, p2

    invoke-static {v0, v0, p1, p2}, Lorg/lasque/tusdk/core/utils/RectHelper;->getDistanceOfTwoPoints(FFFF)F

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mCHypotenuse:F

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->a()V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V
    .locals 5

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->texts:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->texts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v2

    iget-object v3, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v2

    iget v3, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->textSize:F

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v2

    iget-object v3, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->color:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->setTextColor(I)V

    iget v2, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->paddings:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/lasque/tusdk/core/TuSdkContext;->dip2px(F)I

    move-result v2

    iput v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->k:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v2

    iget v3, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->k:I

    invoke-virtual {v2, v3, v3, v3, v3}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->setPadding(IIII)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->setGravity(I)V

    const/4 v2, 0x1

    iput v2, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->alignment:I

    iget v2, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->textSize:F

    iput v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->j:F

    iget-object v0, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->color:Ljava/lang/String;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->measure(II)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->k:I

    mul-int/2addr v1, v4

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->px2dip(F)I

    move-result v0

    iput v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->k:I

    mul-int/2addr v1, v4

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->px2dip(F)I

    move-result v0

    iput v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->height:I

    iget v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getLayoutId()I
    .locals 1

    const-string v0, "tusdk_impl_component_widget_sticker_text_item_view"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getLayoutResId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public changeTextAlignment(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->setGravity(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mSticker:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

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

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->a(I)I

    move-result v2

    iput v2, v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->alignment:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getCancelButton()Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->b:Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    if-nez v0, :cond_0

    const-string v0, "lsq_sticker_cancelButton"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->b:Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->b:Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->b:Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    return-object v0
.end method

.method protected getCenterOpposite()Landroid/graphics/PointF;
    .locals 12

    invoke-super {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->getCenterOpposite()Landroid/graphics/PointF;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v4}, Lorg/lasque/tusdk/core/TuSdkContext;->dip2px(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v1, v0}, Lorg/lasque/tusdk/core/utils/RectHelper;->computerPotintDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v2

    iget v4, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mDegree:F

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    invoke-static {v1, v0}, Lorg/lasque/tusdk/core/utils/RectHelper;->computerPotintDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v3

    iget v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mDegree:F

    float-to-double v10, v1

    mul-double/2addr v10, v6

    div-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-float v1, v3

    neg-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->offset(FF)V

    return-object v0
.end method

.method public final getResizeButton()Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->c:Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    if-nez v0, :cond_0

    const-string v0, "lsq_sticker_resizeButton"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->c:Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->c:Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mOnResizeButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->c:Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    return-object v0
.end method

.method public getResult(Landroid/graphics/Rect;)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;
    .locals 10

    invoke-super {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->getResult(Landroid/graphics/Rect;)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getLineCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->text:Ljava/util/List;

    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getWidth()I

    move-result v1

    iget v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->k:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v5, v1, v2

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->k:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    div-float/2addr v1, v4

    iget-object v3, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->item:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget-object v3, v3, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->texts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;

    iget-object v5, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->m:Ljava/lang/String;

    iput-object v5, v4, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->color:Ljava/lang/String;

    iget-object v5, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->n:Ljava/lang/String;

    iput-object v5, v4, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->backgroundColor:Ljava/lang/String;

    iget-object v5, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->o:Ljava/lang/String;

    iput-object v5, v4, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->shadowColor:Ljava/lang/String;

    iget v5, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->j:F

    iput v5, v4, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->textSize:F

    const/4 v5, 0x0

    iput v5, v4, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->rectLeft:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v4, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->rectTop:F

    iput v2, v4, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->rectWidth:F

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    iget v6, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->k:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v4, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->rectHeight:F

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method protected getScaledSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 5

    invoke-super {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->getScaledSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-gt v1, v2, :cond_2

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mHasExceededMaxSize:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v1

    const/4 v2, 0x2

    iget v3, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->j:F

    iget v4, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mScale:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->setTextSize(IF)V

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mHasExceededMaxSize:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    return-object v0
.end method

.method public getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->a:Lorg/lasque/tusdk/core/view/TuSdkTextView;

    if-nez v0, :cond_0

    const-string v0, "lsq_sticker_textView"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/TuSdkTextView;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->a:Lorg/lasque/tusdk/core/view/TuSdkTextView;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->a:Lorg/lasque/tusdk/core/view/TuSdkTextView;

    return-object v0
.end method

.method public final getTurnButton()Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->d:Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    if-nez v0, :cond_0

    const-string v0, "lsq_sticker_turnButton"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->d:Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->d:Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->d:Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    return-object v0
.end method

.method protected handleResizeActionMove(Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;Landroid/view/MotionEvent;)V
    .locals 1

    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-direct {p1, v0, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getCenterOpposite()Landroid/graphics/PointF;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->requestLayout()V

    return-void
.end method

.method protected handleTurnAndScaleActionStart(Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;FF)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->handleTurnAndScaleActionStart(Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;FF)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getWidth()I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->e:I

    return-void
.end method

.method public isNeedReverse()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->l:Z

    return v0
.end method

.method public loadView()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getCancelButton()Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTurnButton()Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getResizeButton()Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    return-void
.end method

.method protected onLayouted()V
    .locals 5

    invoke-super {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->onLayouted()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mCMargin:Landroid/graphics/Point;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->k:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mCMargin:Landroid/graphics/Point;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->k:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    invoke-static {p0}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->locationInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v1

    invoke-static {v1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->locationInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mCOffset:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mCOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    iput v1, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->initStickerPostion()V

    return-void
.end method

.method public onSelectedColorChanged(ILjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    iput-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object p1

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iput-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->n:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object p1

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iput-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->o:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object p1

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1, v1, v0, v1, p2}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->setShadowLayer(FFFI)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->i:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v1

    iget v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->h:I

    invoke-virtual {v1, v0, v2}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->setStroke(II)V

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getCancelButton()Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->showViewIn(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTurnButton()Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->showViewIn(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getResizeButton()Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->showViewIn(Landroid/view/View;Z)V

    return-void
.end method

.method public setSticker(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTurnButton()Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    move-result-object v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->getType()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;

    move-result-object v1

    sget-object v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;->TypeText:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->showViewIn(Landroid/view/View;Z)V

    invoke-virtual {p0, p0, v3}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->showViewIn(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v0

    new-instance v1, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView$3;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView$3;-><init>(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;)V

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mSticker:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mSticker:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->sizePixies()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mCSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget-boolean p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->isLayouted:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->initStickerPostion()V

    :cond_2
    return-void
.end method

.method public setStroke(II)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->i:I

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->h:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object p1

    iget p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->i:I

    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->h:I

    invoke-virtual {p1, p2, v0}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->setStroke(II)V

    :cond_1
    return-void
.end method

.method protected toggleTextReverse()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public toggleTextUnderlineStyle()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mSticker:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget-object v0, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;

    iget-boolean v2, v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->underline:Z

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->underline:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-boolean v1, v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->underline:Z

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->invalidate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateText(Ljava/lang/String;Z)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-boolean p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->l:Z

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\s+\\n"

    const-string v0, "\n"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getWidth()I

    move-result p2

    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->k:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v4, p2, v0

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mCMargin:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getWidth()I

    move-result v0

    invoke-virtual {p0, p0, v0, p2}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->setViewSize(Landroid/view/View;II)V

    iget-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mSticker:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getWidth()I

    move-result v0

    iget v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->k:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->px2dip(F)I

    move-result v0

    iput v0, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    iget-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mSticker:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/TuSdkContext;->px2dip(F)I

    move-result p1

    iput p1, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->height:I

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mSticker:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->sizePixies()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mCSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mMaxScale:F

    iget p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mScale:F

    div-float/2addr p1, p2

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mMaxScale:F

    iget p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mMinScale:F

    iget p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mScale:F

    div-float/2addr p1, p2

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mMinScale:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mScale:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getTextSize()F

    move-result p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/TuSdkContext;->px2sp(F)F

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->j:F

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mCSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float p1, p1

    iget-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mCSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget p2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-static {v0, v0, p1, p2}, Lorg/lasque/tusdk/core/utils/RectHelper;->getDistanceOfTwoPoints(FFFF)F

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->mCHypotenuse:F

    return-void
.end method
