.class public Lorg/lasque/tusdk/core/utils/anim/WidthAnimation;
.super Landroid/view/animation/Animation;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, p1, v0, p2}, Lorg/lasque/tusdk/core/utils/anim/WidthAnimation;-><init>(Landroid/view/View;FF)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;FF)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/anim/WidthAnimation;->d:Landroid/view/View;

    iput p2, p0, Lorg/lasque/tusdk/core/utils/anim/WidthAnimation;->a:F

    iput p3, p0, Lorg/lasque/tusdk/core/utils/anim/WidthAnimation;->b:F

    iget p2, p0, Lorg/lasque/tusdk/core/utils/anim/WidthAnimation;->a:F

    const/high16 p3, -0x40800000    # -1.0f

    cmpl-float p2, p2, p3

    if-nez p2, :cond_0

    invoke-static {p1}, Lorg/lasque/tusdk/core/struct/ViewSize;->create(Landroid/view/View;)Lorg/lasque/tusdk/core/struct/ViewSize;

    move-result-object p1

    iget p1, p1, Lorg/lasque/tusdk/core/struct/ViewSize;->width:I

    int-to-float p1, p1

    iput p1, p0, Lorg/lasque/tusdk/core/utils/anim/WidthAnimation;->a:F

    :cond_0
    iget p1, p0, Lorg/lasque/tusdk/core/utils/anim/WidthAnimation;->b:F

    iget p2, p0, Lorg/lasque/tusdk/core/utils/anim/WidthAnimation;->a:F

    sub-float/2addr p1, p2

    iput p1, p0, Lorg/lasque/tusdk/core/utils/anim/WidthAnimation;->c:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    iget-object p2, p0, Lorg/lasque/tusdk/core/utils/anim/WidthAnimation;->d:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v0, p0, Lorg/lasque/tusdk/core/utils/anim/WidthAnimation;->a:F

    iget v1, p0, Lorg/lasque/tusdk/core/utils/anim/WidthAnimation;->c:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/anim/WidthAnimation;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method protected finalize()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/anim/WidthAnimation;->d:Landroid/view/View;

    invoke-super {p0}, Landroid/view/animation/Animation;->finalize()V

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
