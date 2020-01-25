.class public Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$TuSdkListViewFlingActionDelegate;,
        Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:J

.field private e:F

.field private f:Z

.field private g:Landroid/view/VelocityTracker;

.field private h:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;

.field private i:Landroid/graphics/PointF;

.field private j:Landroid/content/Context;

.field private k:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$TuSdkListViewFlingActionDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->d:J

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->j:Landroid/content/Context;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->j:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->a:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->b:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->c:I

    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Recycle"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->e:F

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->h:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->resetDownView()V

    :cond_0
    if-eqz p2, :cond_2

    instance-of v0, p2, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;

    if-eqz v0, :cond_2

    check-cast p2, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;

    invoke-interface {p2}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;->flingCanShow()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->i:Landroid/graphics/PointF;

    iput-object p2, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->h:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p2

    iput-object p2, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->g:Landroid/view/VelocityTracker;

    iget-object p2, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->g:Landroid/view/VelocityTracker;

    invoke-virtual {p2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->h:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->b()V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->g:Landroid/view/VelocityTracker;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->h:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->i:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->i:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-boolean v2, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->f:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->a:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    iget v2, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->a:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->k:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$TuSdkListViewFlingActionDelegate;

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->f:Z

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->h:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;

    invoke-interface {v2, v3}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;->flingStateWillChange(Z)V

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->h:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;

    invoke-interface {v2}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;->flingCellWrap()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v2

    iput v2, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->e:F

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->k:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$TuSdkListViewFlingActionDelegate;

    invoke-interface {v2, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$TuSdkListViewFlingActionDelegate;->onFlingActionCancelItemClick(Landroid/view/MotionEvent;)V

    :cond_1
    iget-boolean p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->f:Z

    if-eqz p1, :cond_3

    iget p1, v0, Landroid/graphics/PointF;->x:F

    iget v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->e:F

    add-float/2addr p1, v0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->h:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;->flingCellWrap()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    return v3

    :cond_3
    :goto_1
    return v1
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->g:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->g:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 8

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->g:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->h:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->f:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;->flingCellWrap()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->g:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v2, p1

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->h:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;

    invoke-interface {p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;->flingWrapWidth()I

    move-result p1

    int-to-double v4, p1

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v6

    cmpl-double p1, v2, v4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p1, :cond_1

    :goto_0
    move p1, v3

    goto :goto_1

    :cond_1
    iget p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->b:I

    int-to-float p1, p1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    iget p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->c:I

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_2

    cmpg-float p1, v1, v0

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_1
    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->h:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;

    invoke-interface {p1, v3}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;->flingStateWillChange(Z)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->h:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;

    invoke-interface {p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;->flingCellWrap()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->h:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;->flingWrapWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget-wide v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance v0, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->resetDownView()V

    :goto_2
    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->b()V

    iput-boolean v2, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->f:Z

    return-void

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->resetDownView()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->b()V

    return-void
.end method


# virtual methods
.method public onDestory()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->h:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->k:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$TuSdkListViewFlingActionDelegate;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_1
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->b(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->a(Landroid/view/MotionEvent;Landroid/view/View;)V

    :goto_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public resetDownView()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->h:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;->flingStateWillChange(Z)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->h:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$LasqueListViewFlingActionInterface;->flingCellWrap()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-wide v1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->d:J

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$TuSdkListViewFlingActionDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->k:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$TuSdkListViewFlingActionDelegate;

    return-void
.end method
