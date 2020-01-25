.class public Lorg/lasque/tusdk/core/utils/anim/DepthPageTransformer;
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
.method public transformPage(Landroid/view/View;F)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, p2, v1

    const/4 v2, 0x0

    if-gez v1, :cond_1

    :cond_0
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_1

    :cond_1
    cmpg-float v1, p2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-gtz v1, :cond_2

    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    :goto_0
    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    goto :goto_1

    :cond_2
    cmpg-float v1, p2, v3

    if-gtz v1, :cond_0

    sub-float v1, v3, p2

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    int-to-float v0, v0

    neg-float v1, p2

    mul-float/2addr v0, v1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    const/high16 v0, 0x3f400000    # 0.75f

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr v3, p2

    mul-float/2addr v3, v1

    add-float/2addr v3, v0

    goto :goto_0

    :goto_1
    return-void
.end method
