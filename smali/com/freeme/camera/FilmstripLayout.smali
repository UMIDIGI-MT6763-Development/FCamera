.class public Lcom/freeme/camera/FilmstripLayout;
.super Landroid/widget/FrameLayout;
.source "FilmstripLayout.java"

# interfaces
.implements Lcom/freeme/camera/filmstrip/FilmstripContentPanel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/FilmstripLayout$MyBackgroundDrawable;,
        Lcom/freeme/camera/FilmstripLayout$MyGestureListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION_MS:J = 0xc8L


# instance fields
.field private mBackgroundDrawable:Lcom/freeme/camera/FilmstripLayout$MyBackgroundDrawable;

.field private final mFilmstripAnimator:Landroid/animation/ValueAnimator;

.field private mFilmstripAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mFilmstripAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mFilmstripContentLayout:Landroid/widget/FrameLayout;

.field private mFilmstripContentTranslationProgress:F

.field private mFilmstripGestureListener:Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

.field private mFilmstripView:Lcom/freeme/camera/FilmstripView;

.field private mGestureRecognizer:Lcom/freeme/camera/ui/FilmstripGestureRecognizer;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/freeme/camera/filmstrip/FilmstripContentPanel$Listener;

.field private mSwipeTrend:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/freeme/camera/FilmstripLayout$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/FilmstripLayout$1;-><init>(Lcom/freeme/camera/FilmstripLayout;)V

    iput-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/freeme/camera/FilmstripLayout$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/FilmstripLayout$2;-><init>(Lcom/freeme/camera/FilmstripLayout;)V

    iput-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/freeme/camera/FilmstripLayout$1;

    invoke-direct {p2, p0}, Lcom/freeme/camera/FilmstripLayout$1;-><init>(Lcom/freeme/camera/FilmstripLayout;)V

    iput-object p2, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    new-instance p2, Lcom/freeme/camera/FilmstripLayout$2;

    invoke-direct {p2, p0}, Lcom/freeme/camera/FilmstripLayout$2;-><init>(Lcom/freeme/camera/FilmstripLayout;)V

    iput-object p2, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/freeme/camera/FilmstripLayout$1;

    invoke-direct {p2, p0}, Lcom/freeme/camera/FilmstripLayout$1;-><init>(Lcom/freeme/camera/FilmstripLayout;)V

    iput-object p2, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    new-instance p2, Lcom/freeme/camera/FilmstripLayout$2;

    invoke-direct {p2, p0}, Lcom/freeme/camera/FilmstripLayout$2;-><init>(Lcom/freeme/camera/FilmstripLayout;)V

    iput-object p2, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/FilmstripLayout;)F
    .locals 0

    iget p0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripContentTranslationProgress:F

    return p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/FilmstripLayout;)Lcom/freeme/camera/FilmstripView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripView:Lcom/freeme/camera/FilmstripView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/freeme/camera/FilmstripLayout;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripLayout;->translateContentLayoutByPixel(F)V

    return-void
.end method

.method static synthetic access$1100(Lcom/freeme/camera/FilmstripLayout;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/freeme/camera/FilmstripLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripLayout;->onSwipeOut()V

    return-void
.end method

.method static synthetic access$200(Lcom/freeme/camera/FilmstripLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripLayout;->notifyShown()V

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/camera/FilmstripLayout;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripLayout;->translateContentLayout(F)V

    return-void
.end method

.method static synthetic access$500(Lcom/freeme/camera/FilmstripLayout;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripContentLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/FilmstripLayout;)Lcom/freeme/camera/ui/FilmstripGestureRecognizer;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/FilmstripLayout;->mGestureRecognizer:Lcom/freeme/camera/ui/FilmstripGestureRecognizer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/FilmstripLayout;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/FilmstripLayout;)Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripGestureListener:Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/freeme/camera/FilmstripLayout;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/FilmstripLayout;->mSwipeTrend:I

    return p0
.end method

.method static synthetic access$902(Lcom/freeme/camera/FilmstripLayout;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/FilmstripLayout;->mSwipeTrend:I

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/freeme/camera/ui/FilmstripGestureRecognizer;

    new-instance v1, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;-><init>(Lcom/freeme/camera/FilmstripLayout;Lcom/freeme/camera/FilmstripLayout$1;)V

    invoke-direct {v0, p1, v1}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer;-><init>(Landroid/content/Context;Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;)V

    iput-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mGestureRecognizer:Lcom/freeme/camera/ui/FilmstripGestureRecognizer;

    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/freeme/camera/FilmstripLayout;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private notifyHidden()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mListener:Lcom/freeme/camera/filmstrip/FilmstripContentPanel$Listener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/freeme/camera/filmstrip/FilmstripContentPanel$Listener;->onFilmstripHidden()V

    return-void
.end method

.method private notifyShown()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mListener:Lcom/freeme/camera/filmstrip/FilmstripContentPanel$Listener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/freeme/camera/filmstrip/FilmstripContentPanel$Listener;->onFilmstripShown()V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripView:Lcom/freeme/camera/FilmstripView;

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView;->zoomAtIndexChanged()V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripView:Lcom/freeme/camera/FilmstripView;

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView;->getController()Lcom/freeme/camera/filmstrip/FilmstripController;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/filmstrip/FilmstripController;->getCurrentId()I

    move-result v1

    invoke-interface {v0}, Lcom/freeme/camera/filmstrip/FilmstripController;->inFilmstrip()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mListener:Lcom/freeme/camera/filmstrip/FilmstripContentPanel$Listener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/filmstrip/FilmstripContentPanel$Listener;->onEnterFilmstrip(I)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/freeme/camera/filmstrip/FilmstripController;->inFullScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mListener:Lcom/freeme/camera/filmstrip/FilmstripContentPanel$Listener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/filmstrip/FilmstripContentPanel$Listener;->onEnterFullScreenUiShown(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onSwipeOut()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mListener:Lcom/freeme/camera/filmstrip/FilmstripContentPanel$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/filmstrip/FilmstripContentPanel$Listener;->onSwipeOut()V

    :cond_0
    return-void
.end method

.method private onSwipeOutBegin()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mListener:Lcom/freeme/camera/filmstrip/FilmstripContentPanel$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/filmstrip/FilmstripContentPanel$Listener;->onSwipeOutBegin()V

    :cond_0
    return-void
.end method

.method private runAnimation(FF)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    cmpl-float v0, p1, p2

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    iget-object p2, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    invoke-interface {p1, p2}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private translateContentLayout(F)V
    .locals 2

    iput p1, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripContentTranslationProgress:F

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripContentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return-void
.end method

.method private translateContentLayoutByPixel(F)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripContentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripContentTranslationProgress:F

    return-void
.end method


# virtual methods
.method public animateHide()Z
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripLayout;->hideFilmstrip()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/freeme/camera/FilmstripLayout;->translateContentLayout(F)V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    iget-object v1, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public hideFilmstrip()V
    .locals 2

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripLayout;->onSwipeOutBegin()V

    iget v0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripContentTranslationProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/FilmstripLayout;->runAnimation(FF)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripLayout;->animateHide()Z

    move-result v0

    return v0
.end method

.method public onFinishInflate()V
    .locals 2

    const v0, 0x7f0900c6

    invoke-virtual {p0, v0}, Lcom/freeme/camera/FilmstripLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/FilmstripView;

    iput-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripView:Lcom/freeme/camera/FilmstripView;

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripView:Lcom/freeme/camera/FilmstripView;

    new-instance v1, Lcom/freeme/camera/FilmstripLayout$3;

    invoke-direct {v1, p0}, Lcom/freeme/camera/FilmstripLayout$3;-><init>(Lcom/freeme/camera/FilmstripLayout;)V

    invoke-virtual {v0, v1}, Lcom/freeme/camera/FilmstripView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripView:Lcom/freeme/camera/FilmstripView;

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView;->getGestureListener()Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripGestureListener:Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    const v0, 0x7f090066

    invoke-virtual {p0, v0}, Lcom/freeme/camera/FilmstripLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripContentLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripView:Lcom/freeme/camera/FilmstripView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripLayout;->getVisibility()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripLayout;->hide()V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripContentTranslationProgress:F

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripLayout;->translateContentLayout(F)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mGestureRecognizer:Lcom/freeme/camera/ui/FilmstripGestureRecognizer;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setFilmstripListener(Lcom/freeme/camera/filmstrip/FilmstripContentPanel$Listener;)V
    .locals 2

    iput-object p1, p0, Lcom/freeme/camera/FilmstripLayout;->mListener:Lcom/freeme/camera/filmstrip/FilmstripContentPanel$Listener;

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripContentTranslationProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripLayout;->notifyShown()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripLayout;->notifyHidden()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripView:Lcom/freeme/camera/FilmstripView;

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView;->getController()Lcom/freeme/camera/filmstrip/FilmstripController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/filmstrip/FilmstripController;->setListener(Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripLayout;->notifyHidden()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/freeme/camera/FilmstripLayout;->translateContentLayout(F)V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    iget-object v1, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripAnimator:Landroid/animation/ValueAnimator;

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public showFilmstrip()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/FilmstripLayout;->setVisibility(I)V

    iget v0, p0, Lcom/freeme/camera/FilmstripLayout;->mFilmstripContentTranslationProgress:F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/FilmstripLayout;->runAnimation(FF)V

    return-void
.end method
