.class public Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private b:Landroid/graphics/RectF;

.field private c:Z

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:Landroid/graphics/Path;

.field private i:Landroid/graphics/Paint;

.field protected isLayouted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView$1;-><init>(Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->c:Z

    const p1, -0x66000001

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->d:I

    const/4 p1, 0x2

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->e:I

    const/high16 p1, 0x41000000    # 8.0f

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->f:F

    const/high16 p1, 0x40800000    # 4.0f

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->g:F

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->h:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->i:Landroid/graphics/Paint;

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView$1;-><init>(Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->c:Z

    const p1, -0x66000001

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->d:I

    const/4 p1, 0x2

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->e:I

    const/high16 p1, 0x41000000    # 8.0f

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->f:F

    const/high16 p1, 0x40800000    # 4.0f

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->g:F

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->h:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->i:Landroid/graphics/Paint;

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView$1;-><init>(Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->c:Z

    const p1, -0x66000001

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->d:I

    const/4 p1, 0x2

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->e:I

    const/high16 p1, 0x41000000    # 8.0f

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->f:F

    const/high16 p1, 0x40800000    # 4.0f

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->g:F

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->h:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->i:Landroid/graphics/Paint;

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->initView()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 10

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->c:Z

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->h:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->h:Landroid/graphics/Path;

    iget v3, p2, Landroid/graphics/RectF;->left:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iget v5, p2, Landroid/graphics/RectF;->right:F

    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->h:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->i:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->getGuideLineColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->getGuideLineWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->getGuideLineHeight()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->getGuideLineOffset()F

    move-result v4

    aput v4, v2, v3

    const/high16 v7, 0x40000000    # 2.0f

    invoke-direct {v1, v2, v7}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->i:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->getGuideLineWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v8, v1, v2

    iget v1, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v2, v9

    add-float/2addr v1, v2

    add-float v2, v1, v8

    iget v3, p2, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v9

    add-float/2addr v1, v4

    add-float v4, v1, v8

    iget v5, p2, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->i:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v2, v7

    div-float/2addr v2, v9

    add-float/2addr v1, v2

    add-float v2, v1, v8

    iget v3, p2, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v4, v7

    div-float/2addr v4, v9

    add-float/2addr v1, v4

    add-float v4, v1, v8

    iget v5, p2, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->i:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v9

    add-float/2addr v1, v3

    add-float v3, v1, v8

    iget v4, p2, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v9

    add-float/2addr v1, v5

    add-float v5, v1, v8

    iget-object v6, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->i:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v7

    div-float/2addr v3, v9

    add-float/2addr v2, v3

    add-float/2addr v2, v8

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr v0, v7

    div-float/2addr v0, v9

    add-float/2addr v4, v0

    add-float/2addr v4, v8

    iget-object v5, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->i:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b()Landroid/graphics/RectF;
    .locals 5

    invoke-static {p0}, Lorg/lasque/tusdk/core/struct/ViewSize;->create(Landroid/view/View;)Lorg/lasque/tusdk/core/struct/ViewSize;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->getRegionPercent()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, v0, Lorg/lasque/tusdk/core/struct/ViewSize;->width:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->getRegionPercent()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, v0, Lorg/lasque/tusdk/core/struct/ViewSize;->height:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->getRegionPercent()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, v0, Lorg/lasque/tusdk/core/struct/ViewSize;->width:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->getRegionPercent()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Lorg/lasque/tusdk/core/struct/ViewSize;->height:I

    int-to-float v0, v0

    mul-float/2addr v4, v0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method


# virtual methods
.method public getGuideLineColor()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->d:I

    return v0
.end method

.method public getGuideLineHeight()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->f:F

    return v0
.end method

.method public getGuideLineOffset()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->g:F

    return v0
.end method

.method public getGuideLineWidth()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->e:I

    return v0
.end method

.method public getRegionPercent()Landroid/graphics/RectF;
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->b:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->b:Landroid/graphics/RectF;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->b:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected initView()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->a()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->b()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->getRegionPercent()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->setRegionPercent(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public setGuideLineColor(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->d:I

    return-void
.end method

.method public setGuideLineHeight(F)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->f:F

    return-void
.end method

.method public setGuideLineOffset(F)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->g:F

    return-void
.end method

.method public setGuideLineViewState(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->c:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->invalidate()V

    return-void
.end method

.method public setGuideLineWidth(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->e:I

    return-void
.end method

.method public setRegionPercent(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuGuideRegionView;->invalidate()V

    return-void
.end method
