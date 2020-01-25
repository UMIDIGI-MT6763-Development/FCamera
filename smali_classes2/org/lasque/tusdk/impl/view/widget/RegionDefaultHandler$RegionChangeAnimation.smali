.class Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegionChangeAnimation"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;

.field private b:Landroid/graphics/RectF;

.field private c:Landroid/graphics/RectF;

.field private d:Lorg/lasque/tusdk/impl/view/widget/RegionHandler$RegionChangerListener;

.field private e:Landroid/animation/ValueAnimator;

.field private f:I

.field private g:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->a:Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->b:Landroid/graphics/RectF;

    return-void
.end method

.method private a()V
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->cancel()V

    new-instance v0, Lorg/lasque/tusdk/core/utils/anim/RectFEvaluator;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/utils/anim/RectFEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->b:Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->c:Landroid/graphics/RectF;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->e:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->e:Landroid/animation/ValueAnimator;

    iget v1, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->f:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->e:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->g:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->e:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->b:Landroid/graphics/RectF;

    iget-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->d:Lorg/lasque/tusdk/impl/view/widget/RegionHandler$RegionChangerListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->b:Landroid/graphics/RectF;

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/impl/view/widget/RegionHandler$RegionChangerListener;->onRegionChanged(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public setCurrent(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->b:Landroid/graphics/RectF;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->f:I

    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->g:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public startTo(Landroid/graphics/RectF;Lorg/lasque/tusdk/impl/view/widget/RegionHandler$RegionChangerListener;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->c:Landroid/graphics/RectF;

    iput-object p2, p0, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->d:Lorg/lasque/tusdk/impl/view/widget/RegionHandler$RegionChangerListener;

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/view/widget/RegionDefaultHandler$RegionChangeAnimation;->a()V

    return-void
.end method
