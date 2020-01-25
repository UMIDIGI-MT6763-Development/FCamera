.class public Lorg/lasque/tusdk/core/view/TuSdkTextView;
.super Landroid/widget/TextView;

# interfaces
.implements Lorg/lasque/tusdk/core/view/TuSdkViewInterface;


# instance fields
.field private a:I

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected drawStroke(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/TuSdkTextView;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/core/view/TuSdkTextView;->a:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iget v2, p0, Lorg/lasque/tusdk/core/view/TuSdkTextView;->b:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Lorg/lasque/tusdk/core/view/TuSdkTextView;->a:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTextView;->a:I

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTextView;->c:Z

    :cond_1
    return-void
.end method

.method protected initView()V
    .locals 0

    return-void
.end method

.method public loadView()V
    .locals 0

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->drawStroke(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public removeStroke()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/view/TuSdkTextView;->b:I

    iput v0, p0, Lorg/lasque/tusdk/core/view/TuSdkTextView;->a:I

    return-void
.end method

.method public setStroke(II)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTextView;->b:I

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lorg/lasque/tusdk/core/view/TuSdkTextView;->a:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/view/TuSdkTextView;->c:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->invalidate()V

    return-void
.end method

.method public viewDidLoad()V
    .locals 0

    return-void
.end method

.method public viewNeedRest()V
    .locals 0

    return-void
.end method

.method public viewWillDestory()V
    .locals 0

    return-void
.end method
