.class public Lorg/lasque/tusdk/core/utils/anim/AnimHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/utils/anim/AnimHelper$TuSdkViewAnimatorAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alphAnimation(ZI)Landroid/view/animation/Animation;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sub-float/2addr v0, p0

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, p0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance p0, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    int-to-long p0, p1

    invoke-virtual {v1, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v1
.end method

.method public static alphaAnimator(Landroid/view/View;IFF)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/anim/AnimHelper;->clearAnimation(Landroid/view/View;)V

    invoke-static {p0, p2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    new-instance p1, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    return-object p0
.end method

.method public static alphaHidden(Landroid/view/View;)V
    .locals 3

    const/16 v0, 0xc8

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/lasque/tusdk/core/utils/anim/AnimHelper;->alphaAnimator(Landroid/view/View;IFF)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$1;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-void
.end method

.method public static alphaShow(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0xc8

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1, v2}, Lorg/lasque/tusdk/core/utils/anim/AnimHelper;->alphaAnimator(Landroid/view/View;IFF)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-void
.end method

.method public static clear(Landroid/view/View;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public static clearAnimation(Landroid/view/View;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public static getResAnima(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static heightAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/utils/anim/HeightAnimation;

    int-to-float p1, p1

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/utils/anim/HeightAnimation;-><init>(Landroid/view/View;F)V

    const-wide/16 v1, 0x104

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/anim/HeightAnimation;->setDuration(J)V

    new-instance p1, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/utils/anim/HeightAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method public static offsetYPullAnimation(IZZ)Landroid/view/animation/Animation;
    .locals 12

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sub-float v1, v0, p1

    if-eqz p2, :cond_1

    sub-float v2, p1, v0

    move v9, v2

    goto :goto_1

    :cond_1
    move v9, v1

    :goto_1
    if-eqz p2, :cond_2

    sub-float p2, v1, v0

    move v11, p2

    goto :goto_2

    :cond_2
    move v11, p1

    :goto_2
    new-instance p2, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v2, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    int-to-long v2, p0

    invoke-virtual {p2, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-virtual {p2, v0}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    invoke-virtual {p2, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    new-instance p0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0, p1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {p2, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance p0, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {p2, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object p2
.end method

.method public static removeViewAnimtor(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 10

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const-string v3, "translationX"

    const/4 v4, 0x1

    new-array v5, v4, [F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    const/4 v7, 0x0

    aput v6, v5, v7

    invoke-static {p0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-string v5, "alpha"

    new-array v6, v4, [F

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v8, 0x96

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v1, v3, v7

    aput v7, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$4;

    invoke-direct {v4, p1, p0, v0, v1}, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$4;-><init>(Landroid/animation/Animator$AnimatorListener;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$5;

    invoke-direct {p1, v0, p0}, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$5;-><init>(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static rotate3dAnimtor(Landroid/view/View;IFFFFLandroid/animation/Animator$AnimatorListener;)V
    .locals 13

    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p6

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    div-int/lit8 v4, p1, 0x3

    const-string v5, "scaleX"

    const/4 v6, 0x2

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput v1, v7, v8

    const/4 v9, 0x1

    aput p5, v7, v9

    invoke-static {p0, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    int-to-long v10, v4

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-string v7, "scaleY"

    new-array v12, v6, [F

    aput v1, v12, v8

    aput p5, v12, v9

    invoke-static {p0, v7, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-string v10, "rotationY"

    new-array v6, v6, [F

    aput p2, v6, v8

    aput p3, v6, v9

    invoke-static {p0, v10, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sub-int v4, p1, v4

    int-to-long v8, v4

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    cmpl-float v4, v1, p5

    if-lez v4, :cond_1

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    :cond_1
    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static rotate3dView(Landroid/view/View;IFFZLandroid/view/animation/Animation$AnimationListener;)V
    .locals 10

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lorg/lasque/tusdk/core/struct/ViewSize;->create(Landroid/view/View;)Lorg/lasque/tusdk/core/struct/ViewSize;

    move-result-object v0

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getScreenSize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    :cond_1
    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v6, v1, v2

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v0, v0

    div-float v7, v0, v2

    new-instance v0, Lorg/lasque/tusdk/core/utils/anim/Rotate3dAnimation;

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v8, v6, v1

    move-object v3, v0

    move v4, p2

    move v5, p3

    move v9, p4

    invoke-direct/range {v3 .. v9}, Lorg/lasque/tusdk/core/utils/anim/Rotate3dAnimation;-><init>(FFFFFZ)V

    int-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/utils/anim/Rotate3dAnimation;->setDuration(J)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/utils/anim/Rotate3dAnimation;->setFillEnabled(Z)V

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/utils/anim/Rotate3dAnimation;->setFillAfter(Z)V

    if-eqz p4, :cond_2

    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    :goto_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/utils/anim/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, p5}, Lorg/lasque/tusdk/core/utils/anim/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static rotate3dView(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 6

    div-int/lit8 v1, p1, 0x2

    new-instance v5, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$3;

    invoke-direct {v5, p0, p1, p2}, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$3;-><init>(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V

    const/4 v2, 0x0

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/lasque/tusdk/core/utils/anim/AnimHelper;->rotate3dView(Landroid/view/View;IFFZLandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public static rotateAnimation(Landroid/view/View;Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;I)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getRotation(Landroid/view/View;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->viewFromToDegree(I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->viewDegree()I

    move-result p1

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->rotation(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    new-instance p2, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$2;

    invoke-direct {p2, p1}, Lorg/lasque/tusdk/core/utils/anim/AnimHelper$2;-><init>(I)V

    invoke-virtual {p0, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static scaleAlphaAnimation(IZ)Landroid/view/animation/Animation;
    .locals 11

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    sub-float/2addr v0, p1

    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    int-to-long v2, p0

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    new-instance p0, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v10, p0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    new-instance p0, Landroid/view/animation/ScaleAnimation;

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v1, p0

    move v2, p1

    move v3, v0

    move v4, p1

    move v5, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v10, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance p0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0, p1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v10, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v10
.end method

.method public static shakeAnimation(I)Landroid/view/animation/Animation;
    .locals 3

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {v0, v1, v2, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v1, Landroid/view/animation/CycleInterpolator;

    int-to-float p0, p0

    invoke-direct {v1, p0}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v0
.end method

.method public static startHeightAnim(Landroid/view/View;II)V
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    new-instance v0, Lorg/lasque/tusdk/core/utils/anim/HeightAnimation;

    int-to-float p1, p1

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/utils/anim/HeightAnimation;-><init>(Landroid/view/View;F)V

    new-instance p1, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/utils/anim/HeightAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    int-to-long p1, p2

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/utils/anim/HeightAnimation;->setDuration(J)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method
