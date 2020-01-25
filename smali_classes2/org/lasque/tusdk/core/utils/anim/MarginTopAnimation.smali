.class public Lorg/lasque/tusdk/core/utils/anim/MarginTopAnimation;
.super Landroid/view/animation/Animation;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;FF)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/anim/MarginTopAnimation;->d:Landroid/view/View;

    iput p2, p0, Lorg/lasque/tusdk/core/utils/anim/MarginTopAnimation;->a:F

    iput p3, p0, Lorg/lasque/tusdk/core/utils/anim/MarginTopAnimation;->b:F

    iget p1, p0, Lorg/lasque/tusdk/core/utils/anim/MarginTopAnimation;->b:F

    iget p2, p0, Lorg/lasque/tusdk/core/utils/anim/MarginTopAnimation;->a:F

    sub-float/2addr p1, p2

    iput p1, p0, Lorg/lasque/tusdk/core/utils/anim/MarginTopAnimation;->c:F

    return-void
.end method

.method public static showTopView(Landroid/view/View;JZ)V
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    neg-int p3, p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    sub-int/2addr v0, p3

    new-instance v1, Lorg/lasque/tusdk/core/utils/anim/MarginTopAnimation;

    int-to-float p3, p3

    int-to-float v0, v0

    invoke-direct {v1, p0, p3, v0}, Lorg/lasque/tusdk/core/utils/anim/MarginTopAnimation;-><init>(Landroid/view/View;FF)V

    invoke-virtual {v1, p1, p2}, Lorg/lasque/tusdk/core/utils/anim/MarginTopAnimation;->setDuration(J)V

    new-instance p1, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, p1}, Lorg/lasque/tusdk/core/utils/anim/MarginTopAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    iget p2, p0, Lorg/lasque/tusdk/core/utils/anim/MarginTopAnimation;->a:F

    iget v0, p0, Lorg/lasque/tusdk/core/utils/anim/MarginTopAnimation;->c:F

    mul-float/2addr v0, p1

    add-float/2addr p2, v0

    float-to-int p1, p2

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/utils/anim/MarginTopAnimation;->setMarginTop(I)V

    return-void
.end method

.method protected finalize()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/anim/MarginTopAnimation;->d:Landroid/view/View;

    invoke-super {p0}, Landroid/view/animation/Animation;->finalize()V

    return-void
.end method

.method protected setMarginTop(I)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/anim/MarginTopAnimation;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/anim/MarginTopAnimation;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
