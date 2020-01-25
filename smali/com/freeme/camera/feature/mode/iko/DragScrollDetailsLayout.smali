.class public Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;
.super Landroid/widget/LinearLayout;
.source "DragScrollDetailsLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;,
        Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$OnSlideFinishListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0x12c

.field private static final DEFAULT_PERCENT:F = 0.3f


# instance fields
.field private mChildHasScrolled:Z

.field private mCurrentTargetView:Landroid/view/View;

.field private mCurrentViewIndex:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

.field private mDefaultPanel:I

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mDownstairsView:Landroid/view/View;

.field private mDuration:I

.field private mInitialInterceptY:F

.field private mMaxFlingVelocity:I

.field private mMiniFlingVelocity:I

.field private mOnSlideDetailsListener:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$OnSlideFinishListener;

.field private mPercent:F

.field private mScroller:Landroid/widget/Scroller;

.field private mTouchSlop:F

.field private mUpstairsView:Landroid/view/View;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mDefaultPanel:I

    const/16 v1, 0x12c

    iput v1, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mDuration:I

    const v2, 0x3e99999a    # 0.3f

    iput v2, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mPercent:F

    sget-object v3, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->UPSTAIRS:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    iput-object v3, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mCurrentViewIndex:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    sget-object v3, Lcom/freeme/camera/R$styleable;->DragScrollDetailsLayout:[I

    invoke-virtual {p1, p2, v3, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mPercent:F

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mDuration:I

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mDefaultPanel:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {p1, p3, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mTouchSlop:F

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mMaxFlingVelocity:I

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mMiniFlingVelocity:I

    invoke-virtual {p0, p2}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->setOrientation(I)V

    return-void
.end method

.method private adjustValidDownPoint(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mCurrentViewIndex:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    sget-object v1, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->UPSTAIRS:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mDownMotionY:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mCurrentViewIndex:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    sget-object v1, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->DOWNSTAIRS:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mDownMotionY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mDownMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mDownMotionY:F

    :cond_2
    return-void
.end method

.method private canScrollVertically(Landroid/view/View;ILandroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mChildHasScrolled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p3, p1}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->isTransformedTouchPointInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mChildHasScrolled:Z

    return v2

    :cond_1
    instance-of v0, p1, Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, p1, p2, p3}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->canViewPagerScrollVertically(Landroid/support/v4/view/ViewPager;ILandroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/view/ViewGroup;

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->canScrollVertically(Landroid/view/View;ILandroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-boolean v2, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mChildHasScrolled:Z

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method private canViewPagerScrollVertically(Landroid/support/v4/view/ViewPager;ILandroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/freeme/camera/feature/mode/iko/DragDetailFragmentPagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/feature/mode/iko/DragDetailFragmentPagerAdapter;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/iko/DragDetailFragmentPagerAdapter;->getPrimaryItem()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->canScrollVertically(Landroid/view/View;ILandroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private checkCanInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mDownMotionX:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mDownMotionY:F

    sub-float/2addr v1, v2

    float-to-int v2, v1

    invoke-virtual {p0, v2, p1}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->canChildScrollVertically(ILandroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mInitialInterceptY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v2, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mTouchSlop:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mCurrentViewIndex:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    sget-object v0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->UPSTAIRS:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    cmpl-float p1, v1, v2

    if-gtz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mCurrentViewIndex:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    sget-object v0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->DOWNSTAIRS:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    if-ne p1, v0, :cond_1

    cmpg-float p1, v1, v2

    if-ltz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private flingToFinishScroll()V
    .locals 11

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mUpstairsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v1, v0

    iget v2, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mPercent:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget-object v2, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->UPSTAIRS:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mCurrentViewIndex:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->getScrollY()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->getScrollY()I

    move-result v2

    if-gt v2, v1, :cond_2

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->needFlingToToggleView()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    sget-object v0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->DOWNSTAIRS:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mCurrentViewIndex:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->getScrollY()I

    move-result v0

    neg-int v0, v0

    int-to-float v4, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    sget-object v0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->DOWNSTAIRS:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mCurrentViewIndex:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->DOWNSTAIRS:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mCurrentViewIndex:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    if-ne v2, v3, :cond_7

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->getScrollY()I

    move-result v2

    if-gt v0, v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->getScrollY()I

    move-result v2

    sub-int v2, v0, v2

    if-ge v2, v1, :cond_6

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->needFlingToToggleView()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->getScrollY()I

    move-result v0

    neg-int v0, v0

    int-to-float v4, v0

    sget-object v0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->UPSTAIRS:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mCurrentViewIndex:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->getScrollY()I

    move-result v0

    neg-int v0, v0

    int-to-float v4, v0

    sget-object v0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->UPSTAIRS:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mCurrentViewIndex:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    :cond_7
    :goto_0
    iget-object v5, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mScroller:Landroid/widget/Scroller;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->getScrollY()I

    move-result v7

    const/4 v8, 0x0

    float-to-int v9, v4

    iget v10, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mDuration:I

    invoke-virtual/range {v5 .. v10}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mOnSlideDetailsListener:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$OnSlideFinishListener;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mCurrentViewIndex:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$OnSlideFinishListener;->onStatueChanged(Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;)V

    :cond_8
    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->postInvalidate()V

    return-void
.end method

.method private getCurrentTargetView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mCurrentViewIndex:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    sget-object v1, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->UPSTAIRS:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mUpstairsView:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mDownstairsView:Landroid/view/View;

    :goto_0
    return-object v0
.end method

.method private needFlingToToggleView()Z
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mMaxFlingVelocity:I

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mCurrentViewIndex:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    sget-object v1, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->UPSTAIRS:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    neg-float v0, v0

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mMiniFlingVelocity:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    return v2

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mMiniFlingVelocity:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private resetDownPosition(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mDownMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mDownMotionY:F

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mChildHasScrolled:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mInitialInterceptY:F

    return-void
.end method

.method private scroll(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mCurrentViewIndex:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    sget-object v1, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->UPSTAIRS:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mInitialInterceptY:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mInitialInterceptY:F

    :cond_0
    iget v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mInitialInterceptY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mInitialInterceptY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->scrollTo(II)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mUpstairsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mInitialInterceptY:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mInitialInterceptY:F

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mInitialInterceptY:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mUpstairsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mUpstairsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->scrollTo(II)V

    :goto_2
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method


# virtual methods
.method protected canChildScrollVertically(ILandroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->getCurrentTargetView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mCurrentTargetView:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mCurrentTargetView:Landroid/view/View;

    neg-int p1, p1

    invoke-direct {p0, v0, p1, p2}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->canScrollVertically(Landroid/view/View;ILandroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public computeScroll()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->computeScroll()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->resetDownPosition(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->requestDisallowInterceptTouchEvent(Z)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected isTransformedTouchPointInView(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x0

    aget v3, v1, v2

    int-to-float v3, v3

    sub-float/2addr v0, v3

    const/4 v3, 0x1

    aget v1, v1, v3

    int-to-float v1, v1

    sub-float/2addr p1, v1

    const/4 v1, 0x0

    cmpl-float v4, v0, v1

    if-ltz v4, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr v0, p2

    int-to-float p2, v0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    move v2, v3

    :cond_0
    return v2
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mUpstairsView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mDownstairsView:Landroid/view/View;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SlideDetailsLayout only accept childs more than 1!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->adjustValidDownPoint(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->checkCanInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->resetDownPosition(Landroid/view/MotionEvent;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0, p1, p2}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->measureChildren(II)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onScrollChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->scroll(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->flingToFinishScroll()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->recycleVelocityTracker()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public scrollToTop()V
    .locals 8

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mCurrentViewIndex:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    sget-object v1, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->DOWNSTAIRS:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->getScrollY()I

    move-result v0

    neg-int v6, v0

    iget v7, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mDuration:I

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    sget-object v0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;->UPSTAIRS:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mCurrentViewIndex:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->postInvalidate()V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mOnSlideDetailsListener:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$OnSlideFinishListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mCurrentViewIndex:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$OnSlideFinishListener;->onStatueChanged(Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$CurrentTargetIndex;)V

    :cond_1
    return-void
.end method

.method public setOnSlideDetailsListener(Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$OnSlideFinishListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mOnSlideDetailsListener:Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout$OnSlideFinishListener;

    return-void
.end method

.method public setPercent(F)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/DragScrollDetailsLayout;->mPercent:F

    return-void
.end method
