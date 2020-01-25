.class public Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/impl/view/widget/RegionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field private d:Landroid/graphics/RectF;

.field private e:Landroid/graphics/RectF;

.field private f:Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->b:F

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->d:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->e:Landroid/graphics/RectF;

    return-void
.end method

.method private a()Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->f:Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->getRectPercent()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;-><init>(Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;Landroid/graphics/RectF;)V

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->f:Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->f:Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;

    const/16 v1, 0x104

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->setDuration(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->f:Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;

    new-instance v1, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->f:Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->cancel()V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->f:Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;

    return-object v0
.end method


# virtual methods
.method public changeWithRatio(FLorg/lasque/tusdk/impl/view/widget/RegionHandler$RegionChangerListener;)Landroid/graphics/RectF;
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->getRatio()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->getRectPercent()Landroid/graphics/RectF;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->a()Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->getRectPercent()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->setCurrent(Landroid/graphics/RectF;)V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->setRatio(F)V

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->a()Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;

    move-result-object p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->getRectPercent()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->startTo(Landroid/graphics/RectF;Lorg/lasque/tusdk/impl/view/widget/RegionHandler$RegionChangerListener;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->getRectPercent()Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getCenterRectPercent()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->e:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getOffsetTopPercent()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->b:F

    return v0
.end method

.method public getRatio()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->a:F

    return v0
.end method

.method public getRectPercent()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->d:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getWrapSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-object v0
.end method

.method protected recalculate(FLorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/graphics/RectF;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->recalculateCenterRectPercent(FLorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/graphics/RectF;

    move-result-object p1

    iget p2, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->b:F

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_0

    iget p2, p1, Landroid/graphics/RectF;->top:F

    iget v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->b:F

    sub-float/2addr p2, v0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_0
    return-object p1
.end method

.method protected recalculateCenterRectPercent(FLorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/graphics/RectF;
    .locals 4

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Lorg/lasque/tusdk/core/struct/TuSdkSize;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iget v1, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    new-instance p1, Landroid/graphics/Rect;

    iget v1, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    const/4 v3, 0x0

    invoke-direct {p1, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/RectHelper;->makeRectWithAspectRatioInsideRect(Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iget p2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p2

    :cond_1
    :goto_0
    new-instance p1, Landroid/graphics/RectF;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v0, p2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1
.end method

.method public setOffsetTopPercent(F)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->b:F

    return-void
.end method

.method public setRatio(F)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->a:F

    iget p1, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->a:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iput v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->a:F

    :cond_0
    iget p1, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->a:F

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->recalculate(FLorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->d:Landroid/graphics/RectF;

    iget p1, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->a:F

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->recalculateCenterRectPercent(FLorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->e:Landroid/graphics/RectF;

    return-void
.end method

.method public setWrapSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 1

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1, p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    :cond_0
    iget p1, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->a:F

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->recalculate(FLorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;->d:Landroid/graphics/RectF;

    return-void
.end method
