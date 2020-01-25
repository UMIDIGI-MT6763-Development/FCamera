.class public Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;
.super Landroid/widget/ScrollView;
.source "HeadZoomScrollView.java"


# instance fields
.field private mReplyRatio:F

.field private mScaleRatio:F

.field private mScaleTimes:F

.field private mScaling:Z

.field private mTouchY:F

.field private mZoomView:Landroid/view/View;

.field private mZoomViewHeight:I

.field private mZoomViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mTouchY:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mZoomViewWidth:I

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mZoomViewHeight:I

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mScaling:Z

    const p1, 0x3ecccccd    # 0.4f

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mScaleRatio:F

    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mScaleTimes:F

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mReplyRatio:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mTouchY:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mZoomViewWidth:I

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mZoomViewHeight:I

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mScaling:Z

    const p1, 0x3ecccccd    # 0.4f

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mScaleRatio:F

    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mScaleTimes:F

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mReplyRatio:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mTouchY:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mZoomViewWidth:I

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mZoomViewHeight:I

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mScaling:Z

    const p1, 0x3ecccccd    # 0.4f

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mScaleRatio:F

    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mScaleTimes:F

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mReplyRatio:F

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->setZoom(F)V

    return-void
.end method

.method private replyView()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mZoomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mZoomViewWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget v2, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mReplyRatio:F

    mul-float/2addr v0, v2

    float-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView$1;-><init>(Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private setZoom(F)V
    .locals 7

    iget v0, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mZoomViewWidth:I

    int-to-float v1, v0

    add-float/2addr v1, p1

    float-to-double v1, v1

    int-to-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v3, v5

    div-double/2addr v1, v3

    double-to-float v0, v1

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mScaleTimes:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mZoomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mZoomViewWidth:I

    int-to-float v2, v1

    add-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mZoomViewHeight:I

    int-to-float v2, v2

    int-to-float v3, v1

    add-float/2addr v3, p1

    int-to-float p1, v1

    div-float/2addr v3, p1

    mul-float/2addr v2, v3

    float-to-int p1, v2

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mZoomViewWidth:I

    sub-int/2addr p1, v1

    neg-int p1, p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mZoomViewWidth:I

    sub-int/2addr v2, v3

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v1, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mZoomView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->setOverScrollMode(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mZoomView:Landroid/view/View;

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mZoomView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mZoomViewWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mZoomViewHeight:I

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mZoomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mZoomViewWidth:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mZoomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mZoomViewHeight:I

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mZoomView:Landroid/view/View;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mZoomViewWidth:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mZoomViewHeight:I

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mScaling:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mTouchY:F

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mTouchY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mScaleRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-gez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mScaling:Z

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->setZoom(F)V

    return p1

    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->mScaling:Z

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/iko/HeadZoomScrollView;->replyView()V

    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_6
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
