.class public abstract Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;
.super Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;

# interfaces
.implements Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;


# instance fields
.field private a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private b:Z

.field private c:Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;

.field protected mCHypotenuse:F

.field protected mCMargin:Landroid/graphics/Point;

.field protected mCOffset:Landroid/graphics/Point;

.field protected mCSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field protected mDefaultViewSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field protected mDegree:F

.field protected mDelegate:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface$StickerItemViewDelegate;

.field protected mHasExceededMaxSize:Z

.field protected mLastPoint:Landroid/graphics/PointF;

.field protected mMaxScale:F

.field protected mMinScale:F

.field protected mOnTouchListener:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation
.end field

.field protected mParentFrame:Landroid/graphics/Rect;

.field protected mScale:F

.field protected mSticker:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

.field protected mTranslation:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mCMargin:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mCOffset:Landroid/graphics/Point;

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mMinScale:F

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mLastPoint:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mTranslation:Landroid/graphics/PointF;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mScale:F

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$2;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$2;-><init>(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->c:Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$3;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$3;-><init>(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mCMargin:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mCOffset:Landroid/graphics/Point;

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mMinScale:F

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mLastPoint:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mTranslation:Landroid/graphics/PointF;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mScale:F

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$2;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$2;-><init>(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->c:Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$3;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$3;-><init>(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mCMargin:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mCOffset:Landroid/graphics/Point;

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mMinScale:F

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mLastPoint:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mTranslation:Landroid/graphics/PointF;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mScale:F

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$2;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$2;-><init>(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->c:Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$3;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$3;-><init>(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method private a(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 4

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method private a(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mLastPoint:Landroid/graphics/PointF;

    invoke-direct {p0, v0, p2}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    iget p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mDegree:F

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr p2, v1

    sub-float/2addr p1, v0

    add-float/2addr p2, p1

    rem-float/2addr p2, v1

    iput p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mDegree:F

    iget p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mDegree:F

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    return-void
.end method

.method private a(Landroid/graphics/PointF;Landroid/graphics/RectF;)V
    .locals 7

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mParentFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    neg-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    neg-float v3, v3

    mul-float/2addr v3, v2

    iget-object v4, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, p1, Landroid/graphics/PointF;->x:F

    :cond_1
    iget v1, p2, Landroid/graphics/RectF;->right:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    iput v1, p1, Landroid/graphics/PointF;->x:F

    :cond_2
    iget v1, p2, Landroid/graphics/RectF;->top:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, p1, Landroid/graphics/PointF;->y:F

    :cond_3
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    mul-float/2addr p2, v2

    sub-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/PointF;->y:F

    :cond_4
    :goto_0
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->b:Z

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mDelegate:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface$StickerItemViewDelegate;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface$StickerItemViewDelegate;->onStickerItemViewSelected(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;)V

    :cond_0
    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->getStepPoint()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->getStepPoint()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, v0

    if-ltz p2, :cond_1

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->b:Z

    :cond_1
    iget-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mTranslation:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->getStepPoint()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->getStepPoint()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->offset(FF)V

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mTranslation:Landroid/graphics/PointF;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->a(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-static {p0}, Lorg/lasque/tusdk/core/struct/ViewSize;->create(Landroid/view/View;)Lorg/lasque/tusdk/core/struct/ViewSize;

    move-result-object p2

    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mDegree:F

    invoke-static {p1, p2, v0}, Lorg/lasque/tusdk/core/utils/RectHelper;->minEnclosingRectangle(Landroid/graphics/PointF;Lorg/lasque/tusdk/core/struct/TuSdkSize;F)Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mTranslation:Landroid/graphics/PointF;

    invoke-direct {p0, p2, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->a(Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mTranslation:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mTranslation:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->requestLayout()V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)V
    .locals 2

    iget p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mDegree:F

    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr p1, v0

    iget v1, p2, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepDegree:F

    add-float/2addr p1, v1

    rem-float/2addr p1, v0

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mDegree:F

    iget p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mDegree:F

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    iget p1, p2, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepSpace:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->getCenterOpposite()Landroid/graphics/PointF;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->computerScale(FLandroid/graphics/PointF;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->requestLayout()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->a(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->a(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->a(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->isLayouted:Z

    return p1
.end method

.method private b(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mParentFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mParentFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0, p2}, Lorg/lasque/tusdk/core/utils/RectHelper;->computeAngle(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    return p1
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mDelegate:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface$StickerItemViewDelegate;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->b:Z

    if-nez v0, :cond_0

    invoke-interface {p1, p0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface$StickerItemViewDelegate;->onStickerItemViewReleased(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->b(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->isLayouted:Z

    return p0
.end method

.method static synthetic c(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;)Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->c:Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;

    return-object p0
.end method

.method private c(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mLastPoint:Landroid/graphics/PointF;

    invoke-static {p2, v0}, Lorg/lasque/tusdk/core/utils/RectHelper;->getDistanceOfTwoPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    invoke-static {p2, p1}, Lorg/lasque/tusdk/core/utils/RectHelper;->getDistanceOfTwoPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->computerScale(FLandroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic d(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->onLayouted()V

    return-void
.end method


# virtual methods
.method protected computerScale(FLandroid/graphics/PointF;)V
    .locals 5

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mCHypotenuse:F

    div-float/2addr p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    iget-boolean v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mHasExceededMaxSize:Z

    if-eqz v1, :cond_1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    :cond_1
    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mScale:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mScale:F

    :cond_2
    iget p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mScale:F

    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mMinScale:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_3

    :goto_0
    iput v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mScale:F

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mMaxScale:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->getScaledSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mDegree:F

    invoke-static {p2, p1, v0}, Lorg/lasque/tusdk/core/utils/RectHelper;->minEnclosingRectangle(Landroid/graphics/PointF;Lorg/lasque/tusdk/core/struct/TuSdkSize;F)Landroid/graphics/RectF;

    move-result-object p2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mTranslation:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->getWidth()I

    move-result v1

    iget v2, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->getHeight()I

    move-result v3

    iget v4, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->offset(FF)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mTranslation:Landroid/graphics/PointF;

    invoke-direct {p0, v0, p2}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->a(Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    iget-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mTranslation:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p0, p2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    iget-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mTranslation:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p0, p2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    iget p2, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-virtual {p0, p0, p2, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->setViewSize(Landroid/view/View;II)V

    return-void
.end method

.method protected getCenterOpposite()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mTranslation:Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->a(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method protected getCenterPercent(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->getCenterOpposite()Landroid/graphics/PointF;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    if-eqz p1, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->offset(FF)V

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->top:F

    iget v0, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mCSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v2, v2

    iget v3, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mScale:F

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->right:F

    iget v0, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mCSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v2, v2

    iget v3, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mScale:F

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v2, p1

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_0
    iget p1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    iput p1, v1, Landroid/graphics/RectF;->left:F

    iget p1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, v1, Landroid/graphics/RectF;->top:F

    iget p1, v1, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mCSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v0, v0

    iget v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mScale:F

    mul-float/2addr v0, v2

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    add-float/2addr p1, v0

    iput p1, v1, Landroid/graphics/RectF;->right:F

    iget p1, v1, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mCSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v0, v0

    iget v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mScale:F

    mul-float/2addr v0, v2

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    add-float/2addr p1, v0

    iput p1, v1, Landroid/graphics/RectF;->bottom:F

    :goto_0
    return-object v1
.end method

.method public getDelegate()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface$StickerItemViewDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mDelegate:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface$StickerItemViewDelegate;

    return-object v0
.end method

.method public getMinScale()F
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mMinScale:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iput v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mMinScale:F

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mMinScale:F

    return v0
.end method

.method public getResult(Landroid/graphics/Rect;)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;
    .locals 2

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;

    invoke-direct {v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;-><init>()V

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mSticker:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-virtual {v1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->copy()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->item:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mDegree:F

    iput v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->degree:F

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->getCenterPercent(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;->center:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected getScaledSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mCSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v0, v0

    iget v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mScale:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mCMargin:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mCSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v1, v1

    iget v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mScale:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mCMargin:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    return-object v0
.end method

.method protected handleTurnAndScaleActionMove(Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;FF)V
    .locals 0

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->getCenterOpposite()Landroid/graphics/PointF;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->c(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->requestLayout()V

    iget-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mLastPoint:Landroid/graphics/PointF;

    iget p3, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, p3, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method protected handleTurnAndScaleActionStart(Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;FF)V
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mLastPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mDelegate:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface$StickerItemViewDelegate;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface$StickerItemViewDelegate;->onStickerItemViewSelected(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;)V

    :cond_0
    return-void
.end method

.method protected initStickerPostion()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mCSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mCSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Lorg/lasque/tusdk/core/utils/RectHelper;->getDistanceOfTwoPoints(FFFF)F

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mCHypotenuse:F

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mCSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mCMargin:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mCSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mCMargin:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mDefaultViewSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mCMargin:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mCSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mCMargin:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mCSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mMaxScale:F

    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mMaxScale:F

    iget v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mMinScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iput v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mMaxScale:F

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mDefaultViewSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p0, p0, v0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->setSize(Landroid/view/View;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mParentFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mTranslation:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mDefaultViewSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mTranslation:Landroid/graphics/PointF;

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v3, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mDefaultViewSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v3, v3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mTranslation:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mTranslation:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mSticker:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    return-void
.end method

.method protected initView()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$1;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$1;-><init>(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;)V

    iput-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->c:Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;

    invoke-virtual {v0, p0, p1}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDelegate(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface$StickerItemViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mDelegate:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface$StickerItemViewDelegate;

    return-void
.end method

.method public setMinScale(F)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mMinScale:F

    return-void
.end method

.method public setParentFrame(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mParentFrame:Landroid/graphics/Rect;

    return-void
.end method

.method public setSticker(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V
    .locals 0

    return-void
.end method
