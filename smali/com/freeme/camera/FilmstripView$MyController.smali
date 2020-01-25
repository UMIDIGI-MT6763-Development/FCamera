.class Lcom/freeme/camera/FilmstripView$MyController;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Lcom/freeme/camera/filmstrip/FilmstripController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/FilmstripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyController"
.end annotation


# instance fields
.field private mCanStopScroll:Z

.field private mFlingAnimator:Landroid/animation/AnimatorSet;

.field private final mScaleAnimator:Landroid/animation/ValueAnimator;

.field private final mScaleAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mScroller:Lcom/freeme/camera/FilmstripView$MyScroller;

.field private final mScrollerListener:Lcom/freeme/camera/FilmstripView$MyScroller$Listener;

.field private mZoomAnimator:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lcom/freeme/camera/FilmstripView;


# direct methods
.method constructor <init>(Lcom/freeme/camera/FilmstripView;Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/freeme/camera/FilmstripView$MyController$1;

    invoke-direct {p2, p0}, Lcom/freeme/camera/FilmstripView$MyController$1;-><init>(Lcom/freeme/camera/FilmstripView$MyController;)V

    iput-object p2, p0, Lcom/freeme/camera/FilmstripView$MyController;->mScrollerListener:Lcom/freeme/camera/FilmstripView$MyScroller$Listener;

    new-instance p2, Lcom/freeme/camera/FilmstripView$MyController$2;

    invoke-direct {p2, p0}, Lcom/freeme/camera/FilmstripView$MyController$2;-><init>(Lcom/freeme/camera/FilmstripView$MyController;)V

    iput-object p2, p0, Lcom/freeme/camera/FilmstripView$MyController;->mScaleAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    new-instance v0, Lcom/freeme/camera/FilmstripView$MyScroller;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$2400(Lcom/freeme/camera/FilmstripView;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$2400(Lcom/freeme/camera/FilmstripView;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$MyController;->mScrollerListener:Lcom/freeme/camera/FilmstripView$MyScroller$Listener;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/freeme/camera/FilmstripView$MyScroller;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/freeme/camera/FilmstripView$MyScroller$Listener;Landroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->mScroller:Lcom/freeme/camera/FilmstripView$MyScroller;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->mCanStopScroll:Z

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->mScaleAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->mScaleAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$MyController;->mScaleAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$MyController;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/freeme/camera/FilmstripView$MyController$3;

    invoke-direct {v0, p0, p1}, Lcom/freeme/camera/FilmstripView$MyController$3;-><init>(Lcom/freeme/camera/FilmstripView$MyController;Lcom/freeme/camera/FilmstripView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/freeme/camera/FilmstripView$MyController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripView$MyController;->setSurroundingViewsVisible(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/freeme/camera/FilmstripView$MyController;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView$MyController;->stopScale()V

    return-void
.end method

.method static synthetic access$2002(Lcom/freeme/camera/FilmstripView$MyController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/FilmstripView$MyController;->mCanStopScroll:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/freeme/camera/FilmstripView$MyController;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView$MyController;->loadZoomedImage()V

    return-void
.end method

.method static synthetic access$4502(Lcom/freeme/camera/FilmstripView$MyController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController;->mZoomAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/freeme/camera/FilmstripView$MyController;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController;->mFlingAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/freeme/camera/FilmstripView$MyController;Lcom/freeme/camera/FilmstripView$ViewItem;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/freeme/camera/FilmstripView$MyController;->zoomAt(Lcom/freeme/camera/FilmstripView$ViewItem;FF)V

    return-void
.end method

.method static synthetic access$6100(Lcom/freeme/camera/FilmstripView$MyController;Z)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripView$MyController;->getCurrentDataMaxScale(Z)F

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/FilmstripView$MyController;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView$MyController;->cancelZoomAnimation()V

    return-void
.end method

.method static synthetic access$800(Lcom/freeme/camera/FilmstripView$MyController;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView$MyController;->cancelFlingAnimation()V

    return-void
.end method

.method static synthetic access$900(Lcom/freeme/camera/FilmstripView$MyController;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView$MyController;->cancelLoadingZoomedImage()V

    return-void
.end method

.method private cancelFlingAnimation()V
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView$MyController;->isFlingAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->mFlingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelLoadingZoomedImage()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$4100(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/ui/ZoomView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/ui/ZoomView;->cancelPartialDecodingTask()V

    return-void
.end method

.method private cancelZoomAnimation()V
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView$MyController;->isZoomAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->mZoomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private estimateMaxX(III)I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$100(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/filmstrip/DataAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/filmstrip/DataAdapter;->getTotalNumber()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x64

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$3600(Lcom/freeme/camera/FilmstripView;)I

    move-result p1

    add-int/2addr p3, p1

    mul-int/2addr v0, p3

    add-int/2addr p2, v0

    return p2
.end method

.method private estimateMinX(III)I
    .locals 1

    add-int/lit8 p1, p1, 0x64

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$3600(Lcom/freeme/camera/FilmstripView;)I

    move-result v0

    add-int/2addr p3, v0

    mul-int/2addr p1, p3

    sub-int/2addr p2, p1

    return p2
.end method

.method private getCurrentDataMaxScale(Z)F
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v2}, Lcom/freeme/camera/FilmstripView;->access$100(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/filmstrip/DataAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/freeme/camera/filmstrip/DataAdapter;->getImageData(I)Lcom/freeme/camera/filmstrip/ImageData;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/freeme/camera/filmstrip/ImageData;->isUIActionSupported(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lcom/freeme/camera/filmstrip/ImageData;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-interface {v2}, Lcom/freeme/camera/filmstrip/ImageData;->getRotation()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_2

    invoke-interface {v2}, Lcom/freeme/camera/filmstrip/ImageData;->getRotation()I

    move-result v3

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_3

    :cond_2
    invoke-interface {v2}, Lcom/freeme/camera/filmstrip/ImageData;->getHeight()I

    move-result v1

    int-to-float v1, v1

    :cond_3
    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$4700(Lcom/freeme/camera/FilmstripView;)F

    move-result p1

    mul-float/2addr v1, p1

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v1
.end method

.method private getCurrentUri()Landroid/net/Uri;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v1}, Lcom/freeme/camera/FilmstripView;->access$100(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/filmstrip/DataAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/freeme/camera/filmstrip/DataAdapter;->getImageData(I)Lcom/freeme/camera/filmstrip/ImageData;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/filmstrip/ImageData;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private goToItem(I)Z
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v0

    aget-object p1, v0, p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/freeme/camera/FilmstripView$MyController;->stopScrolling(Z)Z

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result p1

    const/16 v2, 0x320

    invoke-virtual {p0, p1, v2, v0}, Lcom/freeme/camera/FilmstripView$MyController;->scrollToPosition(IIZ)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/freeme/camera/FilmstripView;->access$2300(Lcom/freeme/camera/FilmstripView;Lcom/freeme/camera/FilmstripView$ViewItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x3f333333    # 0.7f

    const/16 v0, 0x190

    invoke-direct {p0, p1, v0}, Lcom/freeme/camera/FilmstripView$MyController;->scaleTo(FI)V

    :cond_1
    return v1
.end method

.method private loadZoomedImage()V
    .locals 4

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView$MyController;->inZoomView()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v1}, Lcom/freeme/camera/FilmstripView;->access$100(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/filmstrip/DataAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/freeme/camera/filmstrip/DataAdapter;->getImageData(I)Lcom/freeme/camera/filmstrip/ImageData;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/freeme/camera/filmstrip/ImageData;->isUIActionSupported(I)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView$MyController;->getCurrentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getViewRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v2, :cond_4

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Lcom/freeme/camera/filmstrip/ImageData;->getRotation()I

    move-result v1

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v3}, Lcom/freeme/camera/FilmstripView;->access$4100(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/ui/ZoomView;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v0}, Lcom/freeme/camera/ui/ZoomView;->loadBitmap(Landroid/net/Uri;ILandroid/graphics/RectF;)V

    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method private scaleTo(FI)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView$MyController;->stopScale()V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->mScaleAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$MyController;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v3}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v3

    aput v3, v0, v2

    aput p1, v0, v1

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private setSurroundingViewsVisible(Z)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v2}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v2

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v2}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz p1, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v2, v3}, Lcom/freeme/camera/FilmstripView$ViewItem;->setVisibility(I)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private stopScale()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method private zoomAt(Lcom/freeme/camera/FilmstripView$ViewItem;FF)V
    .locals 8

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->mZoomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/freeme/camera/FilmstripView$MyController;->getCurrentDataMaxScale(Z)F

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v2}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v1

    sub-float v3, v1, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    move v4, v1

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/FilmstripView$MyController;->mZoomAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$MyController;->mZoomAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v3}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x1

    aput v4, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->mZoomAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->mZoomAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/freeme/camera/FilmstripView$MyController$4;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/freeme/camera/FilmstripView$MyController$4;-><init>(Lcom/freeme/camera/FilmstripView$MyController;FLcom/freeme/camera/FilmstripView$ViewItem;FF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->mZoomAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/freeme/camera/FilmstripView$MyController$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/freeme/camera/FilmstripView$MyController$5;-><init>(Lcom/freeme/camera/FilmstripView$MyController;Lcom/freeme/camera/FilmstripView$ViewItem;FF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController;->mZoomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public fling(F)V
    .locals 13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/FilmstripView$MyController;->stopScrolling(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v1}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v1

    div-float v1, p1, v1

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView$MyController;->inFullScreen()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v2, v0}, Lcom/freeme/camera/FilmstripView;->access$2300(Lcom/freeme/camera/FilmstripView;Lcom/freeme/camera/FilmstripView$ViewItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView$MyController;->goToFilmstrip()V

    :cond_2
    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-virtual {v1}, Lcom/freeme/camera/FilmstripView;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v3

    invoke-direct {p0, v2, v3, v1}, Lcom/freeme/camera/FilmstripView$MyController;->estimateMinX(III)I

    move-result v9

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v0

    invoke-direct {p0, v2, v0, v1}, Lcom/freeme/camera/FilmstripView$MyController;->estimateMaxX(III)I

    move-result v10

    iget-object v4, p0, Lcom/freeme/camera/FilmstripView$MyController;->mScroller:Lcom/freeme/camera/FilmstripView$MyScroller;

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$1800(Lcom/freeme/camera/FilmstripView;)I

    move-result v5

    const/4 v6, 0x0

    neg-float p1, p1

    float-to-int v7, p1

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/freeme/camera/FilmstripView$MyScroller;->fling(IIIIIIII)V

    return-void
.end method

.method flingInsideZoomView(FF)V
    .locals 9

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView$MyController;->inZoomView()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const-wide v3, 0x3fa99999a0000000L    # 0.05000000074505806

    float-to-double v5, v2

    const-wide v7, 0x3fd5555560000000L    # 0.3333333432674408

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v5, v3

    double-to-float v2, v5

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getTranslationX()F

    move-result v3

    iget-object v4, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v4}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getTranslationY()F

    move-result v4

    iget-object v5, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v5}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v5

    mul-float/2addr v4, v5

    const/4 v5, 0x2

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput v3, v6, v7

    const/high16 v8, 0x40800000    # 4.0f

    div-float v8, v2, v8

    mul-float/2addr p1, v8

    add-float/2addr v3, p1

    aput v3, v6, v1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-array v3, v5, [F

    aput v4, v3, v7

    mul-float/2addr v8, p2

    add-float/2addr v4, v8

    aput v4, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v1, Lcom/freeme/camera/FilmstripView$MyController$6;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/freeme/camera/FilmstripView$MyController$6;-><init>(Lcom/freeme/camera/FilmstripView$MyController;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Lcom/freeme/camera/FilmstripView$ViewItem;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->mFlingAnimator:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->mFlingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController;->mFlingAnimator:Landroid/animation/AnimatorSet;

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, p2

    float-to-int p2, v2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController;->mFlingAnimator:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/freeme/camera/FilmstripView$MyController$7;

    invoke-direct {p2, p0}, Lcom/freeme/camera/FilmstripView$MyController$7;-><init>(Lcom/freeme/camera/FilmstripView$MyController;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController;->mFlingAnimator:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/freeme/camera/FilmstripView$MyController$8;

    invoke-direct {p2, p0}, Lcom/freeme/camera/FilmstripView$MyController$8;-><init>(Lcom/freeme/camera/FilmstripView$MyController;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController;->mFlingAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public getCurrentId()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$1500(Lcom/freeme/camera/FilmstripView;)I

    move-result v0

    return v0
.end method

.method public goToFilmstrip()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v0

    const v2, 0x3f333333    # 0.7f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x190

    invoke-direct {p0, v2, v0}, Lcom/freeme/camera/FilmstripView$MyController;->scaleTo(FI)V

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v3}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v3

    aget-object v1, v3, v1

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v3}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v1}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v4, v1}, Lcom/freeme/camera/FilmstripView;->access$2300(Lcom/freeme/camera/FilmstripView;Lcom/freeme/camera/FilmstripView$ViewItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v3}, Lcom/freeme/camera/FilmstripView$MyController;->scrollToPosition(IIZ)V

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$2600(Lcom/freeme/camera/FilmstripView;)V

    :cond_3
    return-void
.end method

.method public goToFirstItem()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$4800(Lcom/freeme/camera/FilmstripView;)V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$1100(Lcom/freeme/camera/FilmstripView;)V

    return-void
.end method

.method public goToFullScreen()V
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView$MyController;->inFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0x190

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/FilmstripView$MyController;->scaleTo(FI)V

    return-void
.end method

.method public goToNextItem()Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/freeme/camera/FilmstripView$MyController;->goToItem(I)Z

    move-result v0

    return v0
.end method

.method public goToPreviousItem()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/freeme/camera/FilmstripView$MyController;->goToItem(I)Z

    move-result v0

    return v0
.end method

.method public inCameraFullscreen()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$3400(Lcom/freeme/camera/FilmstripView;)Z

    move-result v0

    return v0
.end method

.method public inFilmstrip()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$3100(Lcom/freeme/camera/FilmstripView;)Z

    move-result v0

    return v0
.end method

.method public inFullScreen()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$3200(Lcom/freeme/camera/FilmstripView;)Z

    move-result v0

    return v0
.end method

.method public inZoomView()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$4900(Lcom/freeme/camera/FilmstripView;)Z

    move-result v0

    return v0
.end method

.method public isCameraPreview()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$3300(Lcom/freeme/camera/FilmstripView;)Z

    move-result v0

    return v0
.end method

.method public isFlingAnimationRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->mFlingAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScaling()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->mScroller:Lcom/freeme/camera/FilmstripView$MyScroller;

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$MyScroller;->isFinished()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isZoomAnimationRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->mZoomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public scroll(F)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/FilmstripView$MyController;->stopScrolling(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$1800(Lcom/freeme/camera/FilmstripView;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int p1, v1

    invoke-static {v0, p1}, Lcom/freeme/camera/FilmstripView;->access$1802(Lcom/freeme/camera/FilmstripView;I)I

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$1900(Lcom/freeme/camera/FilmstripView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/freeme/camera/FilmstripView$MyController;->stopScrolling(Z)Z

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView;->invalidate()V

    return-void
.end method

.method public scrollToPosition(IIZ)V
    .locals 7

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p3, p0, Lcom/freeme/camera/FilmstripView$MyController;->mCanStopScroll:Z

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$MyController;->mScroller:Lcom/freeme/camera/FilmstripView$MyScroller;

    iget-object p3, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p3}, Lcom/freeme/camera/FilmstripView;->access$1800(Lcom/freeme/camera/FilmstripView;)I

    move-result v2

    const/4 v3, 0x0

    iget-object p3, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p3}, Lcom/freeme/camera/FilmstripView;->access$1800(Lcom/freeme/camera/FilmstripView;)I

    move-result p3

    sub-int v4, p1, p3

    const/4 v5, 0x0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/freeme/camera/FilmstripView$MyScroller;->startScroll(IIIII)V

    return-void
.end method

.method public setDataAdapter(Lcom/freeme/camera/filmstrip/DataAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0, p1}, Lcom/freeme/camera/FilmstripView;->access$3000(Lcom/freeme/camera/FilmstripView;Lcom/freeme/camera/filmstrip/DataAdapter;)V

    return-void
.end method

.method public setImageGap(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0, p1}, Lcom/freeme/camera/FilmstripView;->access$2900(Lcom/freeme/camera/FilmstripView;I)V

    return-void
.end method

.method public setListener(Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0, p1}, Lcom/freeme/camera/FilmstripView;->access$3500(Lcom/freeme/camera/FilmstripView;Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;)V

    return-void
.end method

.method public stopScrolling(Z)Z
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView$MyController;->isScrolling()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/freeme/camera/FilmstripView$MyController;->mCanStopScroll:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController;->mScroller:Lcom/freeme/camera/FilmstripView$MyScroller;

    invoke-virtual {p1, v1}, Lcom/freeme/camera/FilmstripView$MyScroller;->forceFinished(Z)V

    return v1
.end method
