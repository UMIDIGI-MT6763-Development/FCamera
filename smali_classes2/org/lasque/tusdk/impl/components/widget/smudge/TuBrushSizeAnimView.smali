.class public Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:I

.field private f:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private g:Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;

.field private h:Ljava/lang/Runnable;

.field protected isLayouted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->c:Landroid/graphics/Paint;

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->d:I

    const/4 p1, 0x2

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->e:I

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$1;-><init>(Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->f:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$2;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$2;-><init>(Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->h:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->c:Landroid/graphics/Paint;

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->d:I

    const/4 p1, 0x2

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->e:I

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$1;-><init>(Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->f:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$2;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$2;-><init>(Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->h:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->c:Landroid/graphics/Paint;

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->d:I

    const/4 p1, 0x2

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->e:I

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$1;-><init>(Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->f:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$2;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$2;-><init>(Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->h:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->initView()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->f:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->f:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->b:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->invalidate()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 4

    if-eqz p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->getBorderColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->getBorderWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    int-to-float p2, p2

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->b(I)V

    return-void
.end method

.method private b()Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->g:Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;-><init>(Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;)V

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->g:Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->g:Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;

    const-wide/16 v1, 0x104

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;->setDuration(J)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->g:Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;

    new-instance v1, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->g:Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;->cancel()V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->g:Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;->reset()V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->g:Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;

    return-object v0
.end method

.method static synthetic b(Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;)Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->b()Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;

    move-result-object p0

    return-object p0
.end method

.method private b(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->a(I)V

    return-void
.end method

.method static synthetic c(Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method private c()V
    .locals 3

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$3;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$3;-><init>(Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-void
.end method

.method static synthetic d(Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->c()V

    return-void
.end method


# virtual methods
.method public changeRadius(II)V
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->b:I

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->b:I

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->b()Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;

    move-result-object p1

    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->b:I

    invoke-virtual {p1, v0, p2}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;->start(II)V

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->b()Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->startAnimation(Landroid/view/animation/Animation;)V

    iput p2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->b:I

    return-void
.end method

.method public getBorderColor()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->d:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->e:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->b:I

    return v0
.end method

.method protected initView()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->a()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->getRadius()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->a(Landroid/graphics/Canvas;I)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayouted()V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->getRadius()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->a(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->a:Z

    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->d:I

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->e:I

    return-void
.end method
