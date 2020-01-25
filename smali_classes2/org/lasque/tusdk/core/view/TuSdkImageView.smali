.class public Lorg/lasque/tusdk/core/view/TuSdkImageView;
.super Landroid/widget/ImageView;

# interfaces
.implements Lorg/lasque/tusdk/core/view/TuSdkViewInterface;


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private d:I

.field private e:Z

.field private f:Landroid/graphics/PorterDuffXfermode;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->f:Landroid/graphics/PorterDuffXfermode;

    const/16 p1, 0x1f

    iput p1, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->g:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkImageView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->f:Landroid/graphics/PorterDuffXfermode;

    const/16 p1, 0x1f

    iput p1, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->g:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkImageView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->f:Landroid/graphics/PorterDuffXfermode;

    const/16 p1, 0x1f

    iput p1, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->g:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkImageView;->initView()V

    return-void
.end method


# virtual methods
.method protected drawRadius(Landroid/graphics/Canvas;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->b:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkImageView;->getWidth()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkImageView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v6, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v3, 0x0

    iget v5, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->g:I

    invoke-virtual {p1, v2, v3, v5}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v3

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v5, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->a:I

    int-to-float v6, v5

    int-to-float v5, v5

    invoke-virtual {p1, v2, v6, v5, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v2

    iget-object v5, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->f:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget p1, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->a:I

    if-nez p1, :cond_1

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->b:Z

    :cond_1
    return v4

    :cond_2
    :goto_0
    return v1
.end method

.method protected drawStroke(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->c:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iget v2, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->d:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->c:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->a:I

    int-to-float v3, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget p1, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->c:I

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->e:Z

    :cond_1
    return-void
.end method

.method public getCornerRadius()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->a:I

    int-to-float v0, v0

    return v0
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
    .locals 1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkImageView;->drawRadius(Landroid/graphics/Canvas;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkImageView;->drawStroke(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public removeStroke()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->d:I

    iput v0, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->c:I

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->a:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->b:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkImageView;->invalidate()V

    return-void
.end method

.method public setCornerRadiusDP(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkImageView;->setCornerRadius(I)V

    return-void
.end method

.method public setStroke(II)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->d:I

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->c:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/view/TuSdkImageView;->e:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkImageView;->invalidate()V

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
