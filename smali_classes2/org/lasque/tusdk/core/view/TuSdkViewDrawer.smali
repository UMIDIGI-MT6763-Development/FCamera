.class public Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:Z

.field private d:I

.field private e:I

.field private f:Z

.field private g:Landroid/graphics/RectF;

.field private h:Landroid/graphics/Path;

.field private i:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->g:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->h:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->i:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->a:Landroid/view/View;

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->g:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->i:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->g:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->h:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->h:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->h:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->g:Landroid/graphics/RectF;

    iget v3, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->b:I

    int-to-float v4, v3

    int-to-float v3, v3

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->h:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->h:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->g:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->g:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->i:Landroid/graphics/Paint;

    iget v1, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->i:Landroid/graphics/Paint;

    iget v1, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->d:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->g:Landroid/graphics/RectF;

    iget v1, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->b:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public dispatchDrawAfter(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->b(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchDrawBefore(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getCornerRadius()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->b:I

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->e:I

    return v0
.end method

.method public getStrokeWidth()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->d:I

    return v0
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public postInvalidate()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->b:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->c:Z

    iput p1, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->b:I

    return-void
.end method

.method public setCornerRadiusDP(I)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->setCornerRadius(I)V

    return-void
.end method

.method public setStroke(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->setStrokeWidth(I)V

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->setStrokeColor(I)V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->e:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->f:Z

    iput p1, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->e:I

    return-void
.end method

.method public setStrokeColorRes(I)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getResColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->setStrokeColor(I)V

    return-void
.end method

.method public setStrokeColorRes(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/lasque/tusdk/core/TuSdkContext;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->setStrokeColor(I)V

    return-void
.end method

.method public setStrokeDP(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->setStrokeWidthDP(I)V

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->setStrokeColor(I)V

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->d:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->f:Z

    iput p1, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->d:I

    return-void
.end method

.method public setStrokeWidthDP(I)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->setStrokeWidth(I)V

    return-void
.end method
