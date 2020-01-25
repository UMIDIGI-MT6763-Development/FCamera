.class public Lorg/lasque/tusdk/core/utils/anim/ZoomOutPageTransformer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected resetView(Landroid/view/View;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    return-void
.end method

.method public transformPage(Landroid/view/View;F)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v2, p2, v2

    const/4 v3, 0x0

    if-gez v2, :cond_1

    :cond_0
    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_1

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v4, p2, v2

    if-gtz v4, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v2, v4

    const v5, 0x3f59999a    # 0.85f

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    int-to-float v1, v1

    sub-float/2addr v2, v4

    mul-float/2addr v1, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    int-to-float v0, v0

    mul-float/2addr v0, v2

    div-float/2addr v0, v6

    cmpg-float p2, p2, v3

    if-gez p2, :cond_2

    div-float/2addr v1, v6

    sub-float/2addr v0, v1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    goto :goto_0

    :cond_2
    neg-float p2, v0

    div-float/2addr v1, v6

    add-float/2addr p2, v1

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    :goto_0
    invoke-static {p1, v4}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    invoke-static {p1, v4}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    sub-float/2addr v4, v5

    const p2, 0x3e199998    # 0.14999998f

    div-float/2addr v4, p2

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr v4, p2

    add-float/2addr v4, p2

    invoke-static {p1, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    :goto_1
    return-void
.end method
