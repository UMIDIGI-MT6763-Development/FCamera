.class public Lcom/freeme/elementscenter/dc/ui/Banner;
.super Landroid/view/ViewGroup;
.source "Banner.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/elementscenter/dc/ui/Banner$ZoomInInterpolator;,
        Lcom/freeme/elementscenter/dc/ui/Banner$ZoomOutInterpolator;,
        Lcom/freeme/elementscenter/dc/ui/Banner$ScrollInterpolator;,
        Lcom/freeme/elementscenter/dc/ui/Banner$InverseZInterpolator;,
        Lcom/freeme/elementscenter/dc/ui/Banner$ZInterpolator;,
        Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;,
        Lcom/freeme/elementscenter/dc/ui/Banner$PageSwitchListener;,
        Lcom/freeme/elementscenter/dc/ui/Banner$State;
    }
.end annotation


# static fields
.field protected static final ADJACENT_SCREEN_DROP_DURATION:I = 0x12c

.field protected static final ALPHA_QUANTIZE_LEVEL:F = 1.0E-4f

.field protected static final BACKGROUND_FADE_OUT_DURATION:I = 0x15e

.field private static final DEBUG:Z = true

.field private static final DEBUG_DRAW:Z = false

.field protected static final DEBUG_EVENTS:Z = false

.field public static final DIR_LEFT:I = 0x2

.field public static final DIR_RIGHT:I = 0x3

.field public static final DIR_SHORTEST:I = 0x1

.field protected static final FLOAT_ZERO:F = 0.001f

.field public static final INVALID_PAGE:I = -0x1

.field protected static final INVALID_POINTER:I = -0x1

.field protected static final MAX_PAGE_NUM:I = 0x1b

.field protected static MIN_LENGTH_FOR_FLING:I = 0x19

.field protected static final NANOTIME_DIV:F = 1.0E9f

.field private static final OVERSCROLL_DAMP_FACTOR:F = 0.14f

.field private static final PAGE_SNAP_DEFAULT_DURATION:I = 0x226

.field private static final PAGE_SNAP_MAX_DURATION:I = 0x3e8

.field protected static final RETURN_TO_ORIGINAL_PAGE_THRESHOLD:F = 0.1f

.field protected static final SIGNIFICANT_MOVE_THRESHOLD:F = 0.4f

.field private static final TAG:Ljava/lang/String; = "Banner"

.field protected static final TOUCH_STATE_DRIFTING:I = 0x4

.field protected static final TOUCH_STATE_NEXT_PAGE:I = 0x3

.field protected static final TOUCH_STATE_PREV_PAGE:I = 0x2

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field protected static final WORKSPACE_ROTATION:F = 12.5f

.field protected static final sScrollIndicatorFadeInDuration:I = 0x1f4

.field protected static final sScrollIndicatorFadeOutDuration:I = 0x28a

.field protected static final sScrollIndicatorFlashDuration:I = 0x28a


# instance fields
.field protected bannerCanScroll:Z

.field hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

.field protected mActivePointerId:I

.field protected mAllowLongPress:Z

.field protected mAllowOverScroll:Z

.field public mAnimator:Landroid/animation/AnimatorSet;

.field protected mBackground:Landroid/graphics/drawable/Drawable;

.field protected mBackgroundAlpha:F

.field private final mCamera:Landroid/graphics/Camera;

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mCenterPagesVertically:Z

.field public mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field protected mChildOffsets:[I

.field protected mChildOffsetsWithLayoutScale:[I

.field protected mChildRelativeOffsets:[I

.field mCurrMills:J

.field protected mCurrentPage:I

.field protected mDeferScrollUpdate:Z

.field protected mDensity:F

.field protected mDownMotionX:F

.field protected mDragViewMultiplyColor:I

.field protected mDrawBackground:Z

.field protected mDriftSlop:I

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field mFrameNum:I

.field protected mHasScrollIndicator:Z

.field protected mIsDataReady:Z

.field protected mIsDragOccuring:Z

.field protected mIsInQuickViewMode:Z

.field protected mIsInSeekBarMode:Z

.field protected mIsPageMoving:Z

.field protected mIsWorkSpacePageNumMax:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field protected mLastPageForVibrate:I

.field protected mLastScreenCenter:I

.field protected mLastScrollX:I

.field public mLauncher:Landroid/content/Context;

.field protected mLayoutScale:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mMatrix:Landroid/graphics/Matrix;

.field protected mMaxScrollX:I

.field protected mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field protected mMinSnapVelocity:I

.field private mMinimumWidth:I

.field protected mNewAlphas:[F

.field protected mNewBackgroundAlphaMultipliers:[F

.field protected mNewBackgroundAlphas:[F

.field protected mNewRotationYs:[F

.field protected mNewScaleXs:[F

.field protected mNewScaleYs:[F

.field protected mNewTranslationXs:[F

.field protected mNewTranslationYs:[F

.field protected mNextPage:I

.field protected mOffsetXs:[F

.field protected mOldAlphas:[F

.field protected mOldBackgroundAlphaMultipliers:[F

.field protected mOldBackgroundAlphas:[F

.field protected mOldRotationYs:[F

.field protected mOldScaleXs:[F

.field protected mOldScaleYs:[F

.field protected mOldTranslationXs:[F

.field protected mOldTranslationYs:[F

.field protected mOverScrollX:I

.field protected mPageLayoutHeightGap:I

.field protected mPageLayoutPaddingBottom:I

.field protected mPageLayoutPaddingLeft:I

.field protected mPageLayoutPaddingRight:I

.field protected mPageLayoutPaddingTop:I

.field protected mPageLayoutWidthGap:I

.field protected mPageSpacing:I

.field protected mPageSpacingInMiniMode:I

.field protected mPageSwitchListener:Lcom/freeme/elementscenter/dc/ui/Banner$PageSwitchListener;

.field protected mPageTransformsDirty:Z

.field protected mPageZoom:F

.field protected mPagesPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPagingTouchSlop:I

.field public mPreviousPage:I

.field protected mSavedRotationY:F

.field protected mSavedScrollX:I

.field protected mSavedTranslationX:F

.field protected mScrollIndicator:Lcom/freeme/elementscenter/dc/ui/BannerIndicator;

.field protected mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

.field protected mScroller:Landroid/widget/Scroller;

.field protected mSmoothingTime:F

.field protected mSnapVelocity:I

.field public mSpringLoadedShrinkFactor:F

.field protected mSpringLoadedTranslationY:F

.field public mState:Lcom/freeme/elementscenter/dc/ui/Banner$State;

.field private final mTempFloat2:[F

.field protected mTempInverseMatrix:Landroid/graphics/Matrix;

.field protected final mTempRect:Landroid/graphics/Rect;

.field protected mTempVisiblePagesRange:[I

.field protected final mTempXY:[I

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mTransitionProgress:F

.field protected mUnboundedScrollX:I

.field protected mUsePagingTouchSlop:Z

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mVisiblePages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mZoomInInterpolator:Lcom/freeme/elementscenter/dc/ui/Banner$ZoomInInterpolator;

.field motionTrackingIsCurrent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->bannerCanScroll:Z

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTempInverseMatrix:Landroid/graphics/Matrix;

    const/16 v1, 0xc8

    iput v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mSnapVelocity:I

    iput-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mFirstLayout:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mNextPage:I

    iput v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastScreenCenter:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchState:I

    iput-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mAllowLongPress:Z

    iput v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCellCountX:I

    iput v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCellCountY:I

    iput-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mAllowOverScroll:Z

    const/4 v3, 0x2

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTempVisiblePagesRange:[I

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLayoutScale:F

    iput v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mActivePointerId:I

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageSwitchListener:Lcom/freeme/elementscenter/dc/ui/Banner$PageSwitchListener;

    iput-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mFadeInAdjacentScreens:Z

    iput-boolean v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mUsePagingTouchSlop:Z

    iput-boolean v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mDeferScrollUpdate:Z

    iput-boolean v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mIsPageMoving:Z

    iput-boolean v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mIsDataReady:Z

    iput-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mHasScrollIndicator:Z

    iput-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mDrawBackground:Z

    const/4 v5, 0x0

    iput v5, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mBackgroundAlpha:F

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mMatrix:Landroid/graphics/Matrix;

    new-instance v6, Landroid/graphics/Camera;

    invoke-direct {v6}, Landroid/graphics/Camera;-><init>()V

    iput-object v6, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCamera:Landroid/graphics/Camera;

    new-array v6, v3, [F

    iput-object v6, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTempFloat2:[F

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrMills:J

    iput v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mFrameNum:I

    iput v5, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mSpringLoadedTranslationY:F

    sget-object v5, Lcom/freeme/elementscenter/dc/ui/Banner$State;->NORMAL:Lcom/freeme/elementscenter/dc/ui/Banner$State;

    iput-object v5, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mState:Lcom/freeme/elementscenter/dc/ui/Banner$State;

    iput-boolean v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mIsDragOccuring:Z

    iput v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPreviousPage:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTempRect:Landroid/graphics/Rect;

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTempXY:[I

    iput-boolean v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mIsWorkSpacePageNumMax:Z

    iput-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageTransformsDirty:Z

    iput-boolean v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->motionTrackingIsCurrent:Z

    new-instance v3, Lcom/freeme/elementscenter/dc/ui/Banner$ZoomInInterpolator;

    invoke-direct {v3}, Lcom/freeme/elementscenter/dc/ui/Banner$ZoomInInterpolator;-><init>()V

    iput-object v3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mZoomInInterpolator:Lcom/freeme/elementscenter/dc/ui/Banner$ZoomInInterpolator;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPagesPool:Ljava/util/ArrayList;

    iput v4, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageZoom:F

    new-instance v3, Lcom/freeme/elementscenter/dc/ui/Banner$2;

    invoke-direct {v3, p0}, Lcom/freeme/elementscenter/dc/ui/Banner$2;-><init>(Lcom/freeme/elementscenter/dc/ui/Banner;)V

    iput-object v3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mVisiblePages:Ljava/util/ArrayList;

    iput v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastScrollX:I

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLauncher:Landroid/content/Context;

    sget-object v1, Lcom/freeme/elementscenter/R$styleable;->Banner:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/freeme/elementscenter/R$styleable;->Banner_pageSpacing:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/freeme/elementscenter/dc/ui/Banner;->setPageSpacing(I)V

    sget p3, Lcom/freeme/elementscenter/R$styleable;->Banner_pageSpacingInMiniMode:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/freeme/elementscenter/dc/ui/Banner;->setPageSpacingInMiniMode(I)V

    sget p3, Lcom/freeme/elementscenter/R$styleable;->Banner_pageLayoutPaddingTop:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageLayoutPaddingTop:I

    sget p3, Lcom/freeme/elementscenter/R$styleable;->Banner_pageLayoutPaddingBottom:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageLayoutPaddingBottom:I

    sget p3, Lcom/freeme/elementscenter/R$styleable;->Banner_pageLayoutPaddingLeft:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageLayoutPaddingLeft:I

    sget p3, Lcom/freeme/elementscenter/R$styleable;->Banner_pageLayoutPaddingRight:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageLayoutPaddingRight:I

    sget p3, Lcom/freeme/elementscenter/R$styleable;->Banner_pageLayoutWidthGap:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageLayoutWidthGap:I

    sget p3, Lcom/freeme/elementscenter/R$styleable;->Banner_pageLayoutHeightGap:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageLayoutHeightGap:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/freeme/elementscenter/R$dimen;->min_len_for_fling:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/freeme/elementscenter/dc/ui/Banner;->MIN_LENGTH_FOR_FLING:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v2}, Lcom/freeme/elementscenter/dc/ui/Banner;->setHapticFeedbackEnabled(Z)V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->init()V

    iput-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageTransformsDirty:Z

    return-void
.end method

.method private drawPage(Landroid/graphics/Canvas;Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;J)V
    .locals 1

    iget v0, p2, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mIndex:I

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Lcom/freeme/elementscenter/dc/ui/Banner;->transformPage(Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;J)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/freeme/elementscenter/dc/ui/Banner;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "drawPage Draw page is NULL. Report this."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getNearestScrollXForPage(III)I
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageTotWidth(Z)I

    move-result v1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->isLoopingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p2}, Lcom/freeme/elementscenter/dc/ui/Banner;->getLowerBoundForScrollX(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne p3, v3, :cond_0

    const/4 v0, -0x1

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageCount()I

    move-result p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_3

    mul-int v4, v3, v1

    mul-int/2addr v4, v0

    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageIndexForScrollX(I)I

    move-result v5

    if-ne v5, p1, :cond_1

    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    mul-int p2, p1, v1

    :cond_3
    return p2
.end method

.method private getSlotForScrollX(I)I
    .locals 7

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageTotWidth()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->isLoopingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    if-gez p1, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    div-int/2addr p1, v0

    return p1

    :cond_1
    div-int/2addr p1, v0

    return p1

    :cond_2
    const/4 p1, -0x1

    const v0, 0x7fffffff

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v3

    move v4, p1

    move p1, v1

    :goto_0
    if-ge p1, v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildOffset(I)I

    move-result v6

    add-int/2addr v6, v5

    sub-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v0, :cond_3

    move v4, p1

    move v0, v5

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    return v1

    :cond_5
    return v4
.end method

.method static mix(FFF)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    return v0
.end method

.method private newPageInfo()Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPagesPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPagesPool:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;

    invoke-direct {v0, p0}, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;-><init>(Lcom/freeme/elementscenter/dc/ui/Banner;)V

    :goto_0
    invoke-virtual {v0}, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->reset()V

    return-object v0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float v1, p1, p1

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    return v1
.end method

.method private updateMotionTracking(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mDownMotionX:F

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastMotionY:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastMotionXRemainder:F

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->motionTrackingIsCurrent:Z

    return-void
.end method

.method private updateSeekbarMode()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mState:Lcom/freeme/elementscenter/dc/ui/Banner$State;

    sget-object v1, Lcom/freeme/elementscenter/dc/ui/Banner$State;->NORMAL:Lcom/freeme/elementscenter/dc/ui/Banner$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->isSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mIsInSeekBarMode:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected acceleratedOverScroll(F)V
    .locals 5

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollX()I

    int-to-float v0, v0

    div-float v1, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v1, v3

    :cond_1
    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mOverScrollX:I

    iget p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mOverScrollX:I

    div-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->setScrollX(I)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mMaxScrollX:I

    add-int v1, p1, v0

    iput v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mOverScrollX:I

    div-int/lit8 v0, v0, 0x3

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->setScrollX(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->invalidate()V

    return-void
.end method

.method protected acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    iget p3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    if-ltz p3, :cond_0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageCount()I

    move-result v0

    if-ge p3, v0, :cond_0

    iget p3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    invoke-virtual {p0, p3}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    :cond_0
    const/16 p3, 0x11

    if-ne p2, p3, :cond_2

    iget p3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    if-lez p3, :cond_1

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, p3}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    :cond_1
    return-void

    :cond_2
    const/16 p3, 0x42

    if-ne p2, p3, :cond_3

    iget p3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p3, v0, :cond_3

    iget p3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p3}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    :cond_3
    return-void
.end method

.method public allowLongPress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mAllowLongPress:Z

    return v0
.end method

.method public animateToNormalInMini(Z)V
    .locals 0

    return-void
.end method

.method public bannerCanScroll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->bannerCanScroll:Z

    return v0
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mAllowLongPress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mAllowLongPress:Z

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    :cond_0
    return-void
.end method

.method protected cancelScrollingIndicatorAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public changeState(Lcom/freeme/elementscenter/dc/ui/Banner$State;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->changeState(Lcom/freeme/elementscenter/dc/ui/Banner$State;Z)V

    return-void
.end method

.method public changeState(Lcom/freeme/elementscenter/dc/ui/Banner$State;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->changeState(Lcom/freeme/elementscenter/dc/ui/Banner$State;ZI)V

    return-void
.end method

.method public changeState(Lcom/freeme/elementscenter/dc/ui/Banner$State;ZI)V
    .locals 0

    return-void
.end method

.method protected checkFlingWeatherView(II)V
    .locals 0

    return-void
.end method

.method protected checkOffsetsOutofBounds(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mChildOffsets:[I

    if-eqz v0, :cond_1

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mChildRelativeOffsets:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mChildOffsetsWithLayoutScale:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->invalidateCachedOffsets()V

    :cond_1
    return-void
.end method

.method public checkScrollX()V
    .locals 3

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getCurrentPage()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    if-eq v0, v1, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->scrollTo(II)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFinalX(I)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    return-void
.end method

.method public clearChildrenCache()V
    .locals 0

    return-void
.end method

.method public computeScroll()V
    .locals 0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->computeScrollHelper()Z

    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 4

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->scrollTo(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->invalidate()V

    return v3

    :cond_2
    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mNextPage:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageNearestToCenterOfScreen()I

    move-result v0

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastPageForVibrate:I

    iput v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mNextPage:I

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->notifyPageSwitchListener()V

    iput-boolean v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mIsInSeekBarMode:Z

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchState:I

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->pageEndMoving()V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->scrollEnd()V

    :cond_3
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x1000

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_4
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->checkScrollX()V

    return v3

    :cond_5
    return v1
.end method

.method protected convertCanvas(ILandroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected dampedOverScroll(F)V
    .locals 5

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollX()I

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v1, p1, v0

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->overScrollInfluenceCurve(F)F

    move-result v1

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v3, v1

    :cond_1
    const v1, 0x3e0f5c29    # 0.14f

    mul-float/2addr v3, v1

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mOverScrollX:I

    iget p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mOverScrollX:I

    div-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->setScrollX(I)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mMaxScrollX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mOverScrollX:I

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mOverScrollX:I

    div-int/lit8 v0, v0, 0x3

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->setScrollX(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->invalidate()V

    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 8

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string p1, "Banner"

    const-string p2, "determineScrollingStart pointerIndex = -1, just return "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastMotionX:F

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastMotionY:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->isSpringLoaded()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mSpringLoadedShrinkFactor:F

    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    mul-float/2addr p2, v2

    :cond_1
    iget v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchSlop:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPagingTouchSlop:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v0, v2, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    if-le v0, p2, :cond_3

    move v0, v5

    goto :goto_1

    :cond_3
    move v0, v4

    :goto_1
    if-le p1, p2, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollX()I

    move-result p1

    const-string p2, "Banner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "determineScrollingStart -- xPaged = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", yMoved = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Banner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "determineScrollingStart -- mTouchSlop = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchSlop:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mPagingTouchSlop = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPagingTouchSlop:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Banner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "determineScrollingStart -- mLastMotionX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastMotionX:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", mLastMotionY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastMotionY:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Banner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "determineScrollingStart -- mScrollX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mTouchX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchX:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_5

    if-nez v2, :cond_5

    if-eqz v4, :cond_8

    :cond_5
    iget-boolean p2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mUsePagingTouchSlop:Z

    if-eqz p2, :cond_6

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    :goto_2
    iput v5, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchState:I

    iget p2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTotalMotionX:F

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastMotionX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr p2, v0

    iput p2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTotalMotionX:F

    iput v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastMotionX:F

    iput v3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastMotionXRemainder:F

    int-to-float p1, p1

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchX:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    long-to-float p1, p1

    const p2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mSmoothingTime:F

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->pageBeginMoving()V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->requestDisallowInterceptTouchEvent()V

    :cond_7
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->cancelCurrentPageLongPress()V

    :cond_8
    return-void
.end method

.method protected determineScrollingStartWhenMultiPoint(Landroid/view/MotionEvent;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    return-void
.end method

.method public disableAllPageHardwareType()V
    .locals 5

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->isLoopingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mOverScrollX:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastScreenCenter:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->screenScrolled(I)V

    iput v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastScreenCenter:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->drawAllChildNotLoop(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->updateVisiblePages()I

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastScreenCenter:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->screenScrolled(I)V

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastScreenCenter:I

    :cond_2
    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->drawAllChildLoop(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getCurrentPage()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToPage(I)V

    return v0

    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getCurrentPage()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToPage(I)V

    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    const-wide v2, 0x3fde147ae147ae14L    # 0.47

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method protected drawAllChildLoop(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollProgress(Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollProgress(Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getBottom()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getDrawingTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;

    if-eq v4, v1, :cond_2

    invoke-direct {p0, p1, v4, v2, v3}, Lcom/freeme/elementscenter/dc/ui/Banner;->drawPage(Landroid/graphics/Canvas;Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;J)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/freeme/elementscenter/dc/ui/Banner;->drawPage(Landroid/graphics/Canvas;Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;J)V

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageTransformsDirty:Z

    return-void
.end method

.method protected drawAllChildNotLoop(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v6}, Lcom/freeme/elementscenter/dc/ui/Banner;->getVisiblePages([I)V

    iget-object v6, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTempVisiblePagesRange:[I

    const/4 v7, 0x0

    aget v7, v6, v7

    const/4 v8, 0x1

    aget v6, v6, v8

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    if-eq v6, v8, :cond_1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getDrawingTime()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    add-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p1, v0, v1, v3, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :goto_0
    if-lt v6, v7, :cond_0

    invoke-virtual {p0, v6, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->convertCanvas(ILandroid/graphics/Canvas;)V

    invoke-virtual {p0, v6}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v8, v9}, Lcom/freeme/elementscenter/dc/ui/Banner;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public enableAllPageHardwareType()V
    .locals 5

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public enableChildrenCache()V
    .locals 0

    return-void
.end method

.method public enableLRHardwareType(I)V
    .locals 0

    return-void
.end method

.method public exitSmallState()V
    .locals 0

    return-void
.end method

.method protected flashScrollingIndicator(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->removeCallbacks(Ljava/lang/Runnable;)Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->showScrollingIndicator(Z)V

    return-void
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    move-object v1, p1

    :goto_0
    if-ne v1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    return-void

    :cond_0
    if-ne v1, p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected getAdjustedPageIndex(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->isLoopingEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    return p1
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public getBackgroundAlpha()F
    .locals 1

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mBackgroundAlpha:F

    return v0
.end method

.method protected getCenterOfViewRelative(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getNonLoopedScrollXForPageIndex(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getMeasuredWidth()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getMeasuredWidth()I

    move-result v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    sub-int/2addr p1, v0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    return p1
.end method

.method protected getChildIndexForRelativeOffset(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getRelativeChildOffset(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v2

    if-gt v2, p1, :cond_0

    if-gt p1, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected getChildOffset(I)I
    .locals 5

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->checkOffsetsOutofBounds(I)V

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLayoutScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mChildOffsets:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mChildOffsetsWithLayoutScale:[I

    :goto_0
    if-eqz v0, :cond_1

    aget v1, v0, p1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    aget p1, v0, p1

    return p1

    :cond_1
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0, v2}, Lcom/freeme/elementscenter/dc/ui/Banner;->getRelativeChildOffset(I)I

    move-result v1

    :goto_1
    if-ge v2, p1, :cond_3

    invoke-virtual {p0, v2}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    aput v1, v0, p1

    :cond_4
    return v1
.end method

.method protected getChildWidth(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-lez p1, :cond_1

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mMinimumWidth:I

    if-gt v0, p1, :cond_2

    return p1

    :cond_2
    return v0
.end method

.method public getCurrentDropLayoutIndex()I
    .locals 2

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mNextPage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    :cond_0
    return v0
.end method

.method public getCurrentPage()I
    .locals 1

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    :goto_0
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/freeme/elementscenter/R$string;->default_scroll_format:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPageId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final getDensity()F
    .locals 1

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mDensity:F

    return v0
.end method

.method public getFadeInAdjacentScreens()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mFadeInAdjacentScreens:Z

    return v0
.end method

.method public getLayoutScale()F
    .locals 1

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLayoutScale:F

    return v0
.end method

.method protected getLowerBoundForScrollX(I)I
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageTotWidth(Z)I

    move-result v1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->isLoopingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    iget v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mMaxScrollX:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    div-int/2addr p1, v1

    mul-int/2addr v1, p1

    return v1

    :cond_0
    if-gez p1, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr p1, v0

    div-int/2addr p1, v1

    add-int/2addr p1, v0

    mul-int/2addr p1, v1

    neg-int p1, p1

    return p1

    :cond_1
    div-int/2addr p1, v1

    mul-int/2addr v1, p1

    return v1
.end method

.method public getMaxScrollX()I
    .locals 1

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mMaxScrollX:I

    return v0
.end method

.method public getNextPage()I
    .locals 2

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    :goto_0
    return v0
.end method

.method public getNonLoopedScrollXForPageIndex(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildOffset(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getRelativeChildOffset(I)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public getOffsetXForRotation(FII)F
    .locals 4

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCamera:Landroid/graphics/Camera;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCamera:Landroid/graphics/Camera;

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mMatrix:Landroid/graphics/Matrix;

    neg-int v1, p2

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    neg-int v3, p3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mMatrix:Landroid/graphics/Matrix;

    int-to-float p2, p2

    mul-float v1, p2, v2

    int-to-float p3, p3

    mul-float/2addr v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTempFloat2:[F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v2, 0x1

    aput p3, v0, v2

    iget-object p3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 p3, 0x0

    cmpl-float p1, p1, p3

    if-lez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    :goto_0
    iget-object p3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTempFloat2:[F

    aget p3, p3, v1

    sub-float/2addr p2, p3

    mul-float/2addr p1, p2

    return p1
.end method

.method public getOverScrollX()I
    .locals 1

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mOverScrollX:I

    return v0
.end method

.method public getPageAt(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getPageCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageForView(Landroid/view/View;)I
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected getPageIndexForScrollX(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageCount()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getSlotForScrollX(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->isLoopingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    if-gez p1, :cond_0

    add-int/lit8 p1, v0, -0x1

    rem-int/2addr v1, v0

    sub-int/2addr p1, v1

    return p1

    :cond_0
    rem-int/2addr v1, v0

    return v1

    :cond_1
    return v1
.end method

.method public getPageNearestToCenterOfScreen()I
    .locals 8

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->isLoopingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const v0, 0x7fffffff

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v4

    :goto_0
    if-ge v1, v4, :cond_1

    invoke-virtual {p0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildOffset(I)I

    move-result v6

    add-int/2addr v6, v5

    sub-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v0, :cond_0

    move v2, v1

    move v0, v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageTotWidth(Z)I

    move-result v0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollX()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v2}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageIndexForScrollX(I)I

    move-result v4

    invoke-virtual {p0, v3}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageIndexForScrollX(I)I

    move-result v5

    if-ne v4, v5, :cond_3

    return v4

    :cond_3
    invoke-virtual {p0, v4}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v6, :cond_7

    if-eqz v7, :cond_7

    invoke-virtual {p0, v2}, Lcom/freeme/elementscenter/dc/ui/Banner;->getLowerBoundForScrollX(I)I

    move-result v1

    invoke-virtual {p0, v6}, Lcom/freeme/elementscenter/dc/ui/Banner;->getCenterOfViewRelative(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v3}, Lcom/freeme/elementscenter/dc/ui/Banner;->getLowerBoundForScrollX(I)I

    move-result v2

    invoke-virtual {p0, v7}, Lcom/freeme/elementscenter/dc/ui/Banner;->getCenterOfViewRelative(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollX()I

    move-result v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    sub-int v0, v3, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    if-ne v2, v4, :cond_4

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x3

    if-lt v0, v1, :cond_5

    goto :goto_1

    :cond_4
    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    if-lt v1, v0, :cond_6

    :cond_5
    move v1, v4

    goto :goto_2

    :cond_6
    :goto_1
    move v1, v5

    :cond_7
    :goto_2
    return v1
.end method

.method protected getPageTotWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageSpacing:I

    add-int/2addr v0, v1

    if-gtz v0, :cond_0

    return v0

    :cond_0
    return v0
.end method

.method protected getPageTotWidth(Z)I
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLauncher:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result p1

    iget v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageSpacing:I

    add-int/2addr p1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getMeasuredWidth()I

    move-result p1

    iget v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageSpacing:I

    add-int/2addr p1, v1

    :goto_0
    if-gtz p1, :cond_1

    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :cond_1
    return p1
.end method

.method protected getRelativeChildOffset(I)I
    .locals 5

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->checkOffsetsOutofBounds(I)V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPaddingRight()I

    move-result v1

    iget-object v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_0

    aget v3, v2, p1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    aget p1, v2, p1

    return p1

    :cond_0
    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildWidth(I)I

    move-result v1

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mChildRelativeOffsets:[I

    if-eqz v1, :cond_1

    aput v0, v1, p1

    :cond_1
    return v0
.end method

.method protected getScaledMeasuredWidth(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mMinimumWidth:I

    if-le v0, p1, :cond_0

    move p1, v0

    :cond_0
    int-to-float p1, p1

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLayoutScale:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method protected getScaledRelativeChildOffset(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    return v0
.end method

.method public getScrollProgress(ILandroid/view/View;I)F
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p2}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result p2

    iget v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageSpacing:I

    add-int/2addr p2, v1

    invoke-virtual {p0, p3}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildOffset(I)I

    move-result v1

    invoke-virtual {p0, p3}, Lcom/freeme/elementscenter/dc/ui/Banner;->getRelativeChildOffset(I)I

    move-result p3

    sub-int/2addr v1, p3

    add-int/2addr v1, v0

    sub-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p2, p3

    div-float/2addr p1, p2

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public getScrollProgress(Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;)F
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollX()I

    move-result v1

    iget p1, p1, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mLowerBound:I

    sub-int/2addr v1, p1

    int-to-float p1, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    div-float/2addr p1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    return p1
.end method

.method public getScrollRegion()I
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildWidth(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    return v0
.end method

.method protected getScrollXForPageIndex(III)I
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->isLoopingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getNonLoopedScrollXForPageIndex(I)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/freeme/elementscenter/dc/ui/Banner;->getNearestScrollXForPage(III)I

    move-result p1

    return p1

    :cond_1
    const/4 v1, 0x3

    if-ne p3, v1, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/freeme/elementscenter/dc/ui/Banner;->getNearestScrollXForPage(III)I

    move-result p1

    return p1

    :cond_2
    invoke-direct {p0, p1, p2, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getNearestScrollXForPage(III)I

    move-result p3

    invoke-direct {p0, p1, p2, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getNearestScrollXForPage(III)I

    move-result p1

    sub-int v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int p2, p3, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge v0, p2, :cond_3

    return p1

    :cond_3
    return p3
.end method

.method protected getScrollingIndicator()Lcom/freeme/elementscenter/dc/ui/BannerIndicator;
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mHasScrollIndicator:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicator:Lcom/freeme/elementscenter/dc/ui/BannerIndicator;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lcom/freeme/elementscenter/R$id;->banner_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicator:Lcom/freeme/elementscenter/dc/ui/BannerIndicator;

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicator:Lcom/freeme/elementscenter/dc/ui/BannerIndicator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mHasScrollIndicator:Z

    :cond_1
    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicator:Lcom/freeme/elementscenter/dc/ui/BannerIndicator;

    return-object v0
.end method

.method public getTouchState()I
    .locals 1

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchState:I

    return v0
.end method

.method public getTranslationXforCubeEffect(FLandroid/view/View;)F
    .locals 1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    if-lez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-virtual {p0, p2}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    sub-float/2addr p1, p2

    neg-float p1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-virtual {p0, p2}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    sub-float/2addr p1, p2

    :goto_0
    return p1
.end method

.method public getVisiblePages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mVisiblePages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVisiblePages([I)V
    .locals 10

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0, v2}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScaledRelativeChildOffset(I)I

    move-result v6

    add-int/2addr v6, v4

    move v4, v2

    :goto_0
    if-gt v6, v0, :cond_0

    add-int/lit8 v7, v1, -0x1

    if-ge v4, v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v7

    iget v8, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageSpacing:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    goto :goto_0

    :cond_0
    move v7, v4

    :goto_1
    add-int v8, v0, v5

    if-ge v6, v8, :cond_1

    add-int/lit8 v8, v1, -0x1

    if-ge v7, v8, :cond_1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v8

    iget v9, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageSpacing:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    goto :goto_1

    :cond_1
    aput v4, p1, v2

    aput v7, p1, v3

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    aput v0, p1, v2

    aput v0, p1, v3

    :goto_2
    return-void
.end method

.method protected hasElasticScrollIndicator()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hideScrollingIndicator(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollingIndicator()Lcom/freeme/elementscenter/dc/ui/BannerIndicator;

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicator:Lcom/freeme/elementscenter/dc/ui/BannerIndicator;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->updateScrollingIndicatorPosition()V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->cancelScrollingIndicatorAnimations()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicator:Lcom/freeme/elementscenter/dc/ui/BannerIndicator;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicator:Lcom/freeme/elementscenter/dc/ui/BannerIndicator;

    invoke-virtual {p1, v0}, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->setAlpha(F)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicator:Lcom/freeme/elementscenter/dc/ui/BannerIndicator;

    const-string v2, "alpha"

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v0, v1, v3

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x28a

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicator:Lcom/freeme/elementscenter/dc/ui/BannerIndicator;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/freeme/elementscenter/dc/ui/Banner$4;

    invoke-direct {v0, p0}, Lcom/freeme/elementscenter/dc/ui/Banner$4;-><init>(Lcom/freeme/elementscenter/dc/ui/Banner;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method protected hitsNextPage(FF)Z
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getMeasuredWidth()I

    move-result p2

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getRelativeChildOffset(I)I

    move-result v0

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageSpacing:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 1

    iget p2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    invoke-virtual {p0, p2}, Lcom/freeme/elementscenter/dc/ui/Banner;->getRelativeChildOffset(I)I

    move-result p2

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageSpacing:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected indexToPage(I)I
    .locals 0

    return p1
.end method

.method protected init()V
    .locals 3

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/freeme/elementscenter/dc/ui/Banner$ScrollInterpolator;

    invoke-direct {v2, p0}, Lcom/freeme/elementscenter/dc/ui/Banner$ScrollInterpolator;-><init>(Lcom/freeme/elementscenter/dc/ui/Banner;)V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScroller:Landroid/widget/Scroller;

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCenterPagesVertically:Z

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/freeme/elementscenter/R$dimen;->touch_slop:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchSlop:I

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/freeme/elementscenter/R$dimen;->drift_slop:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mDriftSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPagingTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mMaximumVelocity:I

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mDensity:F

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mDensity:F

    const/high16 v1, 0x44160000    # 600.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mMinFlingVelocity:I

    const v1, 0x4e897700

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mMinSnapVelocity:I

    invoke-virtual {p0, p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    new-instance v0, Lcom/freeme/elementscenter/dc/ui/Banner$1;

    invoke-direct {v0, p0}, Lcom/freeme/elementscenter/dc/ui/Banner$1;-><init>(Lcom/freeme/elementscenter/dc/ui/Banner;)V

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method protected initAnimationArrays()V
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mOldTranslationXs:[F

    if-eqz v1, :cond_0

    array-length v1, v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mOldTranslationXs:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mOldTranslationYs:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mOldScaleXs:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mOldScaleYs:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mOldBackgroundAlphas:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mOldBackgroundAlphaMultipliers:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mOldAlphas:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mOldRotationYs:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mNewTranslationXs:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mNewTranslationYs:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mNewScaleXs:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mNewScaleYs:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mNewBackgroundAlphas:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mNewBackgroundAlphaMultipliers:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mNewAlphas:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mNewRotationYs:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mOffsetXs:[F

    return-void
.end method

.method protected initFinished()Z
    .locals 3

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Banner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has no child ,just return false in initFinished() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected invalidateCachedOffsets()V
    .locals 4

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mChildOffsets:[I

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mChildRelativeOffsets:[I

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mChildOffsetsWithLayoutScale:[I

    goto :goto_1

    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mChildOffsets:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mChildRelativeOffsets:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mChildOffsetsWithLayoutScale:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mChildOffsets:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    iget-object v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mChildRelativeOffsets:[I

    aput v3, v2, v1

    iget-object v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mChildOffsetsWithLayoutScale:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public isFastDrawing()Z
    .locals 2

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchState:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mNextPage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFinishedSwitchingState()Z
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTransitionProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isInResetState()Z
    .locals 1

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInSeekbarMode()Z
    .locals 1

    invoke-direct {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->updateSeekbarMode()V

    iget-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mIsInSeekBarMode:Z

    return v0
.end method

.method public isLocked()Z
    .locals 3

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->isInSeekbarMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const-string v0, "Banner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isLocked isInSeekbarMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->isInSeekbarMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Banner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isLocked getVisibility() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method protected isLoopingEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNormal()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mState:Lcom/freeme/elementscenter/dc/ui/Banner$State;

    sget-object v1, Lcom/freeme/elementscenter/dc/ui/Banner$State;->NORMAL:Lcom/freeme/elementscenter/dc/ui/Banner$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isPageMoving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mIsPageMoving:Z

    return v0
.end method

.method public isPrivatePage(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isQuickView()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mState:Lcom/freeme/elementscenter/dc/ui/Banner$State;

    sget-object v1, Lcom/freeme/elementscenter/dc/ui/Banner$State;->QUICK_VIEW:Lcom/freeme/elementscenter/dc/ui/Banner$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isScrollingIndicatorEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSmall()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mState:Lcom/freeme/elementscenter/dc/ui/Banner$State;

    sget-object v1, Lcom/freeme/elementscenter/dc/ui/Banner$State;->SMALL:Lcom/freeme/elementscenter/dc/ui/Banner$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSpringLoaded()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mState:Lcom/freeme/elementscenter/dc/ui/Banner$State;

    sget-object v1, Lcom/freeme/elementscenter/dc/ui/Banner$State;->SPRING_LOADED:Lcom/freeme/elementscenter/dc/ui/Banner$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSwitchingState()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected maxOverScroll()F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->overScrollInfluenceCurve(F)F

    move-result v0

    mul-float/2addr v1, v0

    const v0, 0x4e783d71

    mul-float/2addr v1, v0

    return v1
.end method

.method protected notifyPageSwitchListener()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageSwitchListener:Lcom/freeme/elementscenter/dc/ui/Banner$PageSwitchListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/freeme/elementscenter/dc/ui/Banner$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->invalidate()V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->invalidateCachedOffsets()V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->animateToNormalInMini(Z)V

    return-void
.end method

.method public onEnterScrollArea(III)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onExitScrollArea()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    move v5, v2

    move v2, v0

    move v0, v5

    :goto_0
    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_5

    :cond_2
    if-gtz v0, :cond_4

    cmpl-float p1, v2, v3

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->scrollLeft()V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->scrollRight()V

    :goto_2
    return v1

    :cond_5
    :goto_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->bannerCanScroll:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget v3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchState:I

    if-ne v3, v2, :cond_1

    return v2

    :cond_1
    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eq v0, v3, :cond_b

    const/4 v3, -0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchState:I

    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToDestination()V

    :cond_2
    iput v5, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchState:I

    iput-boolean v5, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mAllowLongPress:Z

    iput v3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mActivePointerId:I

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->releaseVelocityTracker()V

    iput-boolean v5, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->motionTrackingIsCurrent:Z

    goto/16 :goto_4

    :pswitch_1
    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mActivePointerId:I

    if-eq v0, v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_4

    :pswitch_2
    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchState:I

    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToDestination()V

    :cond_3
    iput v5, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchState:I

    iput-boolean v5, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mAllowLongPress:Z

    iput v3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mActivePointerId:I

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->releaseVelocityTracker()V

    iput-boolean v5, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->motionTrackingIsCurrent:Z

    goto/16 :goto_4

    :cond_4
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/freeme/elementscenter/dc/ui/Banner;->requestParentDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    iget-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->motionTrackingIsCurrent:Z

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->updateMotionTracking(Landroid/view/MotionEvent;)V

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v6, 0x0

    iput v6, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTotalMotionX:F

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mActivePointerId:I

    iput-boolean v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mAllowLongPress:Z

    iget-object v6, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getFinalX()I

    move-result v6

    iget-object v7, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget-object v7, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_7

    iget v7, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchSlop:I

    if-ge v6, v7, :cond_6

    goto :goto_0

    :cond_6
    move v6, v5

    goto :goto_1

    :cond_7
    :goto_0
    move v6, v2

    :goto_1
    if-eqz v6, :cond_8

    iput v5, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchState:I

    iget-object v6, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->resetTranslationForPages()V

    goto :goto_2

    :cond_8
    iput v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchState:I

    iput-boolean v5, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mAllowLongPress:Z

    :goto_2
    iget v6, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchState:I

    if-eq v6, v1, :cond_a

    const/4 v7, 0x3

    if-eq v6, v7, :cond_a

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v6

    if-lez v6, :cond_a

    invoke-virtual {p0, v0, v3}, Lcom/freeme/elementscenter/dc/ui/Banner;->hitsPreviousPage(FF)Z

    move-result v6

    if-eqz v6, :cond_9

    iput v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchState:I

    goto :goto_3

    :cond_9
    invoke-virtual {p0, v0, v3}, Lcom/freeme/elementscenter/dc/ui/Banner;->hitsNextPage(FF)Z

    move-result v0

    if-eqz v0, :cond_a

    iput v7, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchState:I

    :cond_a
    :goto_3
    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastPageForVibrate:I

    goto :goto_4

    :cond_b
    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->releaseVelocityTracker()V

    iput-boolean v5, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->motionTrackingIsCurrent:Z

    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-le p1, v1, :cond_c

    return v2

    :cond_c
    iget p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchState:I

    if-eqz p1, :cond_d

    if-eq p1, v4, :cond_d

    goto :goto_5

    :cond_d
    move v2, v5

    :goto_5
    return v2

    :cond_e
    :goto_6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    iget-boolean p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mIsDataReady:Z

    if-nez p1, :cond_0

    const-string p1, "Banner"

    const-string p2, " mIsDataReady is not ready , just return "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPaddingBottom()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result p3

    const/4 p4, 0x0

    if-lez p3, :cond_1

    invoke-virtual {p0, p4}, Lcom/freeme/elementscenter/dc/ui/Banner;->getRelativeChildOffset(I)I

    move-result p5

    goto :goto_0

    :cond_1
    move p5, p4

    :goto_0
    move v0, p5

    move p5, p4

    :goto_1
    if-ge p5, p3, :cond_4

    invoke-virtual {p0, p5}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-boolean v4, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCenterPagesVertically:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, p2

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    goto :goto_2

    :cond_2
    move v4, p1

    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v0

    add-int/2addr v3, v4

    invoke-virtual {v1, v0, v4, v5, v3}, Landroid/view/View;->layout(IIII)V

    iget v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageSpacing:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_3
    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_4
    iget-boolean p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mFirstLayout:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    if-ltz p1, :cond_5

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_5

    invoke-virtual {p0, p4}, Lcom/freeme/elementscenter/dc/ui/Banner;->setHorizontalScrollBarEnabled(Z)V

    iget p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildOffset(I)I

    move-result p1

    iget p2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    invoke-virtual {p0, p2}, Lcom/freeme/elementscenter/dc/ui/Banner;->getRelativeChildOffset(I)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1, p4}, Lcom/freeme/elementscenter/dc/ui/Banner;->scrollTo(II)V

    iget-object p2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2, p1}, Landroid/widget/Scroller;->setFinalX(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->setHorizontalScrollBarEnabled(Z)V

    iput-boolean p4, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mFirstLayout:Z

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPaddingBottom()I

    move-result v3

    iget-boolean v4, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mIsDataReady:Z

    if-nez v4, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    add-int/2addr v2, v3

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v1, :cond_3

    invoke-virtual {p0, v4}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v10, -0x80000000

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v12, -0x2

    if-ne v9, v12, :cond_1

    move v9, v10

    goto :goto_1

    :cond_1
    move v9, v11

    :goto_1
    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v8, v12, :cond_2

    goto :goto_2

    :cond_2
    move v10, v11

    :goto_2
    sub-int v8, p1, v0

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    sub-int v9, p2, v2

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    const-string v8, "Banner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\tmeasure-child"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    add-int/2addr v5, v2

    add-int/2addr v6, v0

    invoke-virtual {p0, v6, v5}, Lcom/freeme/elementscenter/dc/ui/Banner;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->invalidateCachedOffsets()V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->updateScrollingIndicatorPosition()V

    if-lez v1, :cond_4

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildOffset(I)I

    move-result p1

    invoke-virtual {p0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getRelativeChildOffset(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mMaxScrollX:I

    goto :goto_3

    :cond_4
    iput v3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mMaxScrollX:I

    :goto_3
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 1

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->enableLRHardwareType(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->showScrollingIndicator(Z)V

    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->disableAllPageHardwareType()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->showScrollingIndicator(Z)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mDownMotionX:F

    iput v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastMotionX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastMotionY:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastMotionXRemainder:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mActivePointerId:I

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    iget-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->bannerCanScroll:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_14

    const/4 v1, -0x1

    const/4 v4, 0x4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchState:I

    if-eq p1, v3, :cond_1

    if-ne p1, v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToDestination()V

    :cond_2
    iput v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchState:I

    iput v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mActivePointerId:I

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->releaseVelocityTracker()V

    iput-boolean v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->motionTrackingIsCurrent:Z

    goto/16 :goto_5

    :pswitch_1
    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchState:I

    if-ne v0, v3, :cond_5

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastMotionX:F

    iget v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastMotionXRemainder:F

    add-float/2addr v0, v1

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTotalMotionX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v1, v4

    iput v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTotalMotionX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchX:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchX:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v1, v4

    const v4, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v4

    iput v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mSmoothingTime:F

    iget-boolean v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mDeferScrollUpdate:Z

    if-nez v1, :cond_3

    float-to-int v1, v0

    invoke-virtual {p0, v1, v2}, Lcom/freeme/elementscenter/dc/ui/Banner;->scrollBy(II)V

    const-string v1, "Banner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent().Scrolling: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->invalidate()V

    :goto_0
    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastMotionX:F

    float-to-int p1, v0

    int-to-float p1, p1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastMotionXRemainder:F

    goto/16 :goto_5

    :cond_4
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->awakenScrollBars()Z

    goto/16 :goto_5

    :cond_5
    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_5

    :pswitch_2
    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchState:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v0, v3, :cond_b

    if-ne v0, v4, :cond_6

    goto :goto_1

    :cond_6
    const/16 v4, 0x226

    if-ne v0, v6, :cond_8

    iget p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    sub-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getAdjustedPageIndex(I)I

    move-result p1

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    if-eq p1, v0, :cond_7

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mNextPage:I

    if-eq p1, v0, :cond_7

    invoke-virtual {p0, p1, v4, v6}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToPage(III)V

    goto/16 :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToDestination()V

    goto/16 :goto_4

    :cond_8
    if-ne v0, v5, :cond_a

    iget p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getAdjustedPageIndex(I)I

    move-result p1

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    if-eq p1, v0, :cond_9

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mNextPage:I

    if-eq p1, v0, :cond_9

    invoke-virtual {p0, p1, v4, v5}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToPage(III)V

    goto/16 :goto_4

    :cond_9
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToDestination()V

    goto/16 :goto_4

    :cond_a
    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_4

    :cond_b
    :goto_1
    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget-object v4, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    iget v8, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mMaximumVelocity:I

    int-to-float v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v4, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget v4, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTotalMotionX:F

    iget v7, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastMotionX:F

    iget v8, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastMotionXRemainder:F

    add-float/2addr v7, v8

    sub-float/2addr v7, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v4, v7

    iput v4, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTotalMotionX:F

    iget v4, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTotalMotionX:F

    sget v7, Lcom/freeme/elementscenter/dc/ui/Banner;->MIN_LENGTH_FOR_FLING:I

    int-to-float v7, v7

    cmpg-float v4, v4, v7

    if-lez v4, :cond_10

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v7, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mSnapVelocity:I

    if-gt v4, v7, :cond_c

    goto :goto_2

    :cond_c
    if-lez v0, :cond_e

    iget v4, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mDownMotionX:F

    cmpg-float p1, p1, v4

    if-gez p1, :cond_d

    iget p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    move v5, v6

    goto :goto_3

    :cond_d
    iget p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    sub-int/2addr p1, v3

    move v5, v6

    goto :goto_3

    :cond_e
    iget v4, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mDownMotionX:F

    cmpl-float p1, p1, v4

    if-lez p1, :cond_f

    iget p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    goto :goto_3

    :cond_f
    iget p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    add-int/2addr p1, v3

    goto :goto_3

    :cond_10
    :goto_2
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageNearestToCenterOfScreen()I

    move-result p1

    move v5, v3

    :goto_3
    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getAdjustedPageIndex(I)I

    move-result v4

    iget v6, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    if-eq v4, v6, :cond_11

    iget v6, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mNextPage:I

    if-eq v4, v6, :cond_11

    invoke-virtual {p0, p1, v0, v5}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToPageBasedOnVelocity(III)V

    invoke-virtual {p0, p1, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->checkFlingWeatherView(II)V

    goto :goto_4

    :cond_11
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToDestination()V

    :goto_4
    iput v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchState:I

    iput v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mActivePointerId:I

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->releaseVelocityTracker()V

    iput-boolean v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->motionTrackingIsCurrent:Z

    goto :goto_5

    :pswitch_3
    iget-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->motionTrackingIsCurrent:Z

    if-nez v0, :cond_12

    invoke-direct {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->updateMotionTracking(Landroid/view/MotionEvent;)V

    :cond_12
    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_13
    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTotalMotionX:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mActivePointerId:I

    iget p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchState:I

    if-ne p1, v3, :cond_15

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->pageBeginMoving()V

    goto :goto_5

    :cond_14
    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iput-boolean v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->motionTrackingIsCurrent:Z

    :cond_15
    :goto_5
    return v3

    :cond_16
    :goto_6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected overScroll(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->dampedOverScroll(F)V

    return-void
.end method

.method protected pageBeginMoving()V
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mIsPageMoving:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mIsPageMoving:Z

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->onPageBeginMoving()V

    :cond_0
    return-void
.end method

.method protected pageEndMoving()V
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mIsPageMoving:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mIsPageMoving:Z

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->onPageEndMoving()V

    :cond_0
    return-void
.end method

.method protected releaseVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->indexToPage(I)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getCurrentPage()I

    move-result p2

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->isInTouchMode()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToPage(I)V

    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->indexToPage(I)I

    move-result p1

    iget p2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToPage(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent()V
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetFinalScrollForPageChange(I)V
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/freeme/elementscenter/dc/ui/BannerItemContainer;

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mSavedScrollX:I

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->setScrollX(I)V

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mSavedTranslationX:F

    invoke-virtual {p1, v0}, Lcom/freeme/elementscenter/dc/ui/BannerItemContainer;->setTranslationX(F)V

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mSavedRotationY:F

    invoke-virtual {p1, v0}, Lcom/freeme/elementscenter/dc/ui/BannerItemContainer;->setRotationY(F)V

    :cond_0
    return-void
.end method

.method public resetTranslationForPages()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->isNormal()Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setScaleY(F)V

    goto :goto_1

    :cond_0
    iget v3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mSpringLoadedShrinkFactor:F

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget v3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mSpringLoadedShrinkFactor:F

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setScaleY(F)V

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setRotationY(F)V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected screenScrolled(I)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageTransformsDirty:Z

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->isScrollingIndicatorEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->updateScrollingIndicator()V

    :cond_0
    return-void
.end method

.method public scrollBy(II)V
    .locals 1

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollY()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->scrollTo(II)V

    return-void
.end method

.method protected scrollEnd()V
    .locals 0

    return-void
.end method

.method public scrollLeft()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x3e8

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToPage(III)V

    return-void

    :cond_0
    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mNextPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToPage(III)V

    return-void
.end method

.method public scrollRight()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0x3e8

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToPage(III)V

    return-void

    :cond_0
    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToPage(III)V

    return-void
.end method

.method public scrollTo(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->isLoopingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/freeme/elementscenter/dc/ui/Banner;->scrollToLooped(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/freeme/elementscenter/dc/ui/Banner;->scrollToNonLooped(II)V

    :goto_0
    return-void
.end method

.method protected scrollToLooped(II)V
    .locals 0

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mUnboundedScrollX:I

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    int-to-float p1, p1

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mTouchX:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    long-to-float p1, p1

    const p2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mSmoothingTime:F

    return-void
.end method

.method protected scrollToNewPageWithoutMovingPages(I)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildOffset(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v4

    int-to-float v5, v0

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->setCurrentPage(I)V

    return-void
.end method

.method protected scrollToNonLooped(II)V
    .locals 1

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mUnboundedScrollX:I

    if-gez p1, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    iget-boolean p2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mAllowOverScroll:Z

    if-eqz p2, :cond_2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->overScroll(F)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mMaxScrollX:I

    if-le p1, v0, :cond_1

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    iget-boolean p2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mAllowOverScroll:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mMaxScrollX:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->overScroll(F)V

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mOverScrollX:I

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAllowLongPress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mAllowLongPress:Z

    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 1

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mBackgroundAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mBackgroundAlpha:F

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBannerCanScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->bannerCanScroll:Z

    return-void
.end method

.method public setCanUpdateWallpaper(Z)V
    .locals 0

    return-void
.end method

.method public setCurrentPage(I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    iget p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastPageForVibrate:I

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->updateCurrentPageScroll()V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->updateScrollingIndicator()V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->notifyPageSwitchListener()V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->invalidate()V

    return-void
.end method

.method public setDataReady(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mIsDataReady:Z

    return-void
.end method

.method public setFinalScrollForPageChange(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mSavedScrollX:I

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/elementscenter/dc/ui/BannerItemContainer;

    invoke-virtual {v0}, Lcom/freeme/elementscenter/dc/ui/BannerItemContainer;->getTranslationX()F

    move-result v1

    iput v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mSavedTranslationX:F

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildOffset(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getRelativeChildOffset(I)I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->setScrollX(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/freeme/elementscenter/dc/ui/BannerItemContainer;->setTranslationX(F)V

    invoke-virtual {v0, p1}, Lcom/freeme/elementscenter/dc/ui/BannerItemContainer;->setRotationY(F)V

    :cond_0
    return-void
.end method

.method public setLayoutScale(F)V
    .locals 7

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLayoutScale:F

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->invalidateCachedOffsets()V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result p1

    new-array v0, p1, [F

    new-array v1, p1, [F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_0

    invoke-virtual {p0, v3}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    aput v5, v0, v3

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->requestLayout()V

    invoke-virtual {p0, v3, v4}, Lcom/freeme/elementscenter/dc/ui/Banner;->measure(II)V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getBottom()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/freeme/elementscenter/dc/ui/Banner;->layout(IIII)V

    :goto_1
    if-ge v2, p1, :cond_1

    invoke-virtual {p0, v2}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    aget v4, v1, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->scrollToNewPageWithoutMovingPages(I)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageSpacing:I

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->invalidateCachedOffsets()V

    return-void
.end method

.method public setPageSpacingInMiniMode(I)V
    .locals 0

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageSpacingInMiniMode:I

    return-void
.end method

.method public setPageSwitchListener(Lcom/freeme/elementscenter/dc/ui/Banner$PageSwitchListener;)V
    .locals 2

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageSwitchListener:Lcom/freeme/elementscenter/dc/ui/Banner$PageSwitchListener;

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageSwitchListener:Lcom/freeme/elementscenter/dc/ui/Banner$PageSwitchListener;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    invoke-interface {p1, v0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setPageZoom(F)V
    .locals 0

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageZoom:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageTransformsDirty:Z

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->invalidate()V

    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public showScrollingIndicator(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const-string p1, "Banner"

    const-string v0, "showScrollingIndicator, getChildCount() < 1, return"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "Banner"

    const-string v0, "showScrollingIndicator, !isScrollingIndicatorEnabled(), return"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollingIndicator()Lcom/freeme/elementscenter/dc/ui/BannerIndicator;

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicator:Lcom/freeme/elementscenter/dc/ui/BannerIndicator;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->updateScrollingIndicatorPosition()V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->cancelScrollingIndicatorAnimations()V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicator:Lcom/freeme/elementscenter/dc/ui/BannerIndicator;

    invoke-virtual {p1, v0}, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->setAlpha(F)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicator:Lcom/freeme/elementscenter/dc/ui/BannerIndicator;

    const-string v3, "alpha"

    new-array v1, v1, [F

    aput v0, v1, v2

    invoke-static {p1, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicator:Lcom/freeme/elementscenter/dc/ui/BannerIndicator;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/freeme/elementscenter/dc/ui/Banner$3;

    invoke-direct {v0, p0}, Lcom/freeme/elementscenter/dc/ui/Banner$3;-><init>(Lcom/freeme/elementscenter/dc/ui/Banner;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected snapToDestination()V
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageNearestToCenterOfScreen()I

    move-result v0

    const/16 v1, 0x226

    invoke-virtual {p0, v0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToPageWithDuration(II)V

    return-void
.end method

.method protected snapToPage(I)V
    .locals 1

    const/16 v0, 0x226

    invoke-virtual {p0, p1, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToPage(II)V

    return-void
.end method

.method protected snapToPage(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToPageWithDuration(II)V

    return-void
.end method

.method protected snapToPage(III)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToPageInternal(III)V

    return-void
.end method

.method protected snapToPageBasedOnVelocity(III)V
    .locals 2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mSnapVelocity:I

    if-ge v0, v1, :cond_0

    const/16 p2, 0x384

    invoke-virtual {p0, p1, p2, p3}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToPage(III)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    div-int/lit8 p2, p2, 0xa

    const v0, -0x414ccccd    # -0.35f

    int-to-float p2, p2

    mul-float/2addr p2, v0

    const/high16 v0, 0x44610000    # 900.0f

    add-float/2addr p2, v0

    float-to-int p2, p2

    const/16 v0, 0x1c2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToPage(III)V

    :goto_0
    return-void
.end method

.method protected snapToPageInternal(III)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getAdjustedPageIndex(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollX()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollXForPageIndex(III)I

    move-result p3

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mUnboundedScrollX:I

    sub-int v4, p3, v0

    if-nez v4, :cond_0

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mNextPage:I

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->invalidate()V

    return-void

    :cond_0
    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mNextPage:I

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getFocusedChild()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_1

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    if-ne p3, p1, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->clearFocus()V

    :cond_1
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->pageBeginMoving()V

    invoke-virtual {p0, p2}, Lcom/freeme/elementscenter/dc/ui/Banner;->awakenScrollBars(I)Z

    if-nez p2, :cond_2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p2

    move v6, p2

    goto :goto_0

    :cond_2
    move v6, p2

    :goto_0
    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_3
    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mUnboundedScrollX:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->notifyPageSwitchListener()V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->invalidate()V

    return-void
.end method

.method protected snapToPageWithDirection(II)V
    .locals 1

    const/16 v0, 0x226

    invoke-virtual {p0, p1, v0, p2}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToPage(III)V

    return-void
.end method

.method protected snapToPageWithDuration(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToPage(III)V

    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 5

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildOffset(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getRelativeChildOffset(I)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mUnboundedScrollX:I

    sub-int/2addr v1, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mMinFlingVelocity:I

    if-ge v2, v3, :cond_0

    const/16 v0, 0x226

    invoke-virtual {p0, p1, v1, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToPage(III)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    int-to-float v0, v0

    div-float/2addr v4, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/freeme/elementscenter/dc/ui/Banner;->distanceInfluenceForSnapDuration(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mMinSnapVelocity:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, p1, v1, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->snapToPage(III)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/freeme/elementscenter/dc/ui/Banner;->checkFlingWeatherView(II)V

    return-void
.end method

.method public syncPageItems(IIZ)V
    .locals 0

    return-void
.end method

.method public syncPageItems(IZ)V
    .locals 0

    return-void
.end method

.method protected syncViewVisibility()V
    .locals 5

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;

    iget v3, v3, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mIndex:I

    if-ne v3, v0, :cond_0

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v2, :cond_2

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected transformPage(Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;J)V
    .locals 2

    iget-boolean p2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPageTransformsDirty:Z

    if-eqz p2, :cond_2

    iget p2, p1, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mIndex:I

    invoke-virtual {p0, p2}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mState:Lcom/freeme/elementscenter/dc/ui/Banner$State;

    sget-object v1, Lcom/freeme/elementscenter/dc/ui/Banner$State;->QUICK_VIEW:Lcom/freeme/elementscenter/dc/ui/Banner$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->isLoopingEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    iget p3, p1, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mTransX:I

    int-to-float p3, p3

    iget v0, p1, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mDeltaTranx:F

    add-float/2addr p3, v0

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    iget-object p3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mState:Lcom/freeme/elementscenter/dc/ui/Banner$State;

    sget-object v0, Lcom/freeme/elementscenter/dc/ui/Banner$State;->QUICK_VIEW:Lcom/freeme/elementscenter/dc/ui/Banner$State;

    if-eq p3, v0, :cond_1

    iget p3, p1, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mTransY:I

    int-to-float p3, p3

    iget v0, p1, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mDeltaTrany:F

    add-float/2addr p3, v0

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollX()I

    move-result p3

    if-eqz p3, :cond_1

    iget p3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLayoutScale:F

    iget v0, p1, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mScaleX:F

    mul-float/2addr p3, v0

    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleX(F)V

    iget p3, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLayoutScale:F

    iget v0, p1, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mScaleY:F

    mul-float/2addr p3, v0

    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleY(F)V

    iget p3, p1, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mAlpha:F

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget p1, p1, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mRotateY:F

    invoke-virtual {p2, p1}, Landroid/view/View;->setRotationY(F)V

    :cond_2
    return-void
.end method

.method protected updateCurrentPageScroll()V
    .locals 2

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildOffset(I)I

    move-result v0

    iget v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->scrollTo(II)V

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void
.end method

.method protected updateScrollingIndicator()V
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollingIndicator()Lcom/freeme/elementscenter/dc/ui/BannerIndicator;

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicator:Lcom/freeme/elementscenter/dc/ui/BannerIndicator;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->updateScrollingIndicatorPosition()V

    :cond_1
    return-void
.end method

.method protected updateScrollingIndicatorPosition()V
    .locals 3

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Banner"

    const-string v1, " updateScrollingIndicatorPosition isScrollingIndicatorEnabled = false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicator:Lcom/freeme/elementscenter/dc/ui/BannerIndicator;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicator:Lcom/freeme/elementscenter/dc/ui/BannerIndicator;

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getCurrentDropLayoutIndex()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->updateIndicators(II)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicator:Lcom/freeme/elementscenter/dc/ui/BannerIndicator;

    invoke-virtual {v0}, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->invalidate()V

    :cond_1
    return-void
.end method

.method public updateScrollingIndicatorState()V
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->hideScrollingIndicator(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner;->showScrollingIndicator(Z)V

    :goto_0
    return-void
.end method

.method protected updateVisiblePages()I
    .locals 9

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastScrollX:I

    if-eq v0, v1, :cond_5

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mPagesPool:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getChildCount()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageTotWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    add-int v3, v1, v0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, -0x1

    move v5, v4

    :goto_0
    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageIndexForScrollX(I)I

    move-result v6

    if-eq v5, v4, :cond_0

    if-eq v5, v6, :cond_2

    :cond_0
    invoke-virtual {p0, v6}, Lcom/freeme/elementscenter/dc/ui/Banner;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-direct {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->newPageInfo()Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;

    move-result-object v5

    iput v6, v5, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mIndex:I

    invoke-virtual {p0, v2}, Lcom/freeme/elementscenter/dc/ui/Banner;->getLowerBoundForScrollX(I)I

    move-result v7

    iput v7, v5, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mLowerBound:I

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->isLoopingEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, v5, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mIndex:I

    mul-int/2addr v7, v1

    neg-int v7, v7

    iget v8, v5, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mLowerBound:I

    add-int/2addr v7, v8

    iput v7, v5, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mTransX:I

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    iput v7, v5, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mTransX:I

    :goto_1
    iget-object v7, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v6

    :cond_2
    add-int/lit8 v6, v1, -0x1

    add-int/2addr v2, v6

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/Banner;->syncViewVisibility()V

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mLastScrollX:I

    :cond_4
    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    return v0
.end method

.method protected vibrate()V
    .locals 0

    return-void
.end method
