.class Lcom/freeme/camera/FilmstripView$MyScroller;
.super Ljava/lang/Object;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/FilmstripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/FilmstripView$MyScroller$Listener;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/freeme/camera/FilmstripView$MyScroller$Listener;

.field private final mScrollChecker:Ljava/lang/Runnable;

.field private final mScroller:Landroid/widget/Scroller;

.field private final mXScrollAnimator:Landroid/animation/ValueAnimator;

.field private final mXScrollAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private final mXScrollAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/freeme/camera/FilmstripView$MyScroller$Listener;Landroid/animation/TimeInterpolator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/freeme/camera/FilmstripView$MyScroller$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/FilmstripView$MyScroller$1;-><init>(Lcom/freeme/camera/FilmstripView$MyScroller;)V

    iput-object v0, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mScrollChecker:Ljava/lang/Runnable;

    new-instance v0, Lcom/freeme/camera/FilmstripView$MyScroller$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/FilmstripView$MyScroller$2;-><init>(Lcom/freeme/camera/FilmstripView$MyScroller;)V

    iput-object v0, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mXScrollAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/freeme/camera/FilmstripView$MyScroller$3;

    invoke-direct {v0, p0}, Lcom/freeme/camera/FilmstripView$MyScroller$3;-><init>(Lcom/freeme/camera/FilmstripView$MyScroller;)V

    iput-object v0, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mXScrollAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    iput-object p2, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mListener:Lcom/freeme/camera/FilmstripView$MyScroller$Listener;

    new-instance p2, Landroid/widget/Scroller;

    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mScroller:Landroid/widget/Scroller;

    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mXScrollAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mXScrollAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/freeme/camera/FilmstripView$MyScroller;)Landroid/widget/Scroller;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/freeme/camera/FilmstripView$MyScroller;)Lcom/freeme/camera/FilmstripView$MyScroller$Listener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mListener:Lcom/freeme/camera/FilmstripView$MyScroller$Listener;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/freeme/camera/FilmstripView$MyScroller;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private runChecker()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mListener:Lcom/freeme/camera/FilmstripView$MyScroller$Listener;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mScrollChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mScrollChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public fling(IIIIIIII)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lcom/freeme/camera/FilmstripView$MyScroller;->mScroller:Landroid/widget/Scroller;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView$MyScroller;->runChecker()V

    return-void
.end method

.method public forceFinished(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public isFinished()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startScroll(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView$MyScroller;->runChecker()V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 0

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    int-to-long p4, p5

    invoke-virtual {p2, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    const/4 p4, 0x2

    new-array p4, p4, [I

    const/4 p5, 0x0

    aput p1, p4, p5

    add-int/2addr p1, p3

    const/4 p3, 0x1

    aput p1, p4, p3

    invoke-virtual {p2, p4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyScroller;->mXScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
