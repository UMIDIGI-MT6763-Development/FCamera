.class public Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;
    }
.end annotation


# instance fields
.field private a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private b:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field private c:F

.field private d:Landroid/graphics/Rect;

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Landroid/graphics/RectF;

.field protected isLayouted:Z

.field private j:Landroid/graphics/Path;

.field private k:Landroid/graphics/Paint;

.field private l:Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$1;-><init>(Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 p1, 0x0

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->c:F

    const/4 p1, 0x0

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->e:I

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->f:I

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->i:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->j:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->k:Landroid/graphics/Paint;

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$1;-><init>(Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 p1, 0x0

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->c:F

    const/4 p1, 0x0

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->e:I

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->f:I

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->i:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->j:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->k:Landroid/graphics/Paint;

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$1;-><init>(Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 p1, 0x0

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->c:F

    const/4 p1, 0x0

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->e:I

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->f:I

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->i:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->j:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->k:Landroid/graphics/Paint;

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->initView()V

    return-void
.end method

.method private a(F)Landroid/graphics/Rect;
    .locals 1

    invoke-static {p0}, Lorg/lasque/tusdk/core/struct/ViewSize;->create(Landroid/view/View;)Lorg/lasque/tusdk/core/struct/ViewSize;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/RectHelper;->computerCenter(Lorg/lasque/tusdk/core/struct/TuSdkSize;F)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;F)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->a(F)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->i:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->getEdgeSideWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->k:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->getEdgeSideColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->k:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->getEdgeSideWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->getEdgeSideWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v0

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->j:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->j:Landroid/graphics/Path;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p2

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object p2, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->j:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    iget-object p2, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->j:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    iget-object p2, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->k:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->getEdgeMaskColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->k:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->i:Landroid/graphics/RectF;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->d:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->invalidate()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method private b()Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->l:Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->getRegionRatio()F

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;-><init>(Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;F)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->l:Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->l:Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;

    const-wide/16 v1, 0x104

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->setDuration(J)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->l:Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;

    new-instance v1, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->l:Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->cancel()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->l:Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->reset()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->l:Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;

    return-object v0
.end method


# virtual methods
.method public autoShowForRegionRatio()V
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->c:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public changeRegionRatio(F)Landroid/graphics/Rect;
    .locals 5

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->a(F)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->c:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    const-wide/16 v3, 0x104

    if-gtz v2, :cond_1

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    new-instance v2, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;-><init>()V

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    goto :goto_1

    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v2

    cmpl-float v1, v2, v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    new-instance v2, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->b()Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->startTo(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->b()Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->startAnimation(Landroid/view/animation/Animation;)V

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->c:F

    return-object v0
.end method

.method public getEdgeMaskColor()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->e:I

    return v0
.end method

.method public getEdgeSideColor()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->f:I

    return v0
.end method

.method public getEdgeSideWidth()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->g:I

    return v0
.end method

.method public getRegionRatio()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->c:F

    return v0
.end method

.method public getRegionRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->d:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getRegionSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->b:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-object v0
.end method

.method protected initView()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->a()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->getRegionRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->getRegionRatio()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->setRegionRatio(F)Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method protected onLayouted()V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->getRegionRatio()F

    move-result v0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->a(F)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->a(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->h:Z

    :cond_0
    return-void
.end method

.method public setEdgeMaskColor(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->e:I

    return-void
.end method

.method public setEdgeSideColor(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->f:I

    return-void
.end method

.method public setEdgeSideWidth(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->g:I

    return-void
.end method

.method public setEdgeSideWidthDP(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->g:I

    return-void
.end method

.method public setRegionRatio(F)Landroid/graphics/Rect;
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->c:F

    iget p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->c:F

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->a(F)Landroid/graphics/Rect;

    move-result-object p1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->isLayouted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->a(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->h:Z

    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->autoShowForRegionRatio()V

    return-object p1
.end method

.method public setRegionSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 1

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->b:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    if-eqz p1, :cond_0

    iget v0, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v0, v0

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->c:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->autoShowForRegionRatio()V

    iget p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->c:F

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->a(F)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->a(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
