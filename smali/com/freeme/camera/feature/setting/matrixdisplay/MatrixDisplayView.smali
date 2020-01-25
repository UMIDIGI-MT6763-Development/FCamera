.class public Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;
.super Landroid/view/ViewGroup;
.source "MatrixDisplayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$OnScrollListener;,
        Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$OnItemSelectedListener;,
        Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final DOWN_STATE:I = 0x0

.field private static final MOVE_STATE:I = 0x1

.field private static final MSG_ITEM_CLICK:I = 0x66

.field private static final MSG_SCROLL_DONE:I = 0x67

.field private static final MSG_SCROLL_VIEW:I = 0x65

.field private static final SCROLL_SPEED:I = 0xa

.field private static final SCROLL_STEP:I = 0x32

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final TIME_BOUND:J = 0x64L

.field private static final UP_STATE:I = 0x2

.field private static final WAIT_EFFECT_VIEW_UPDATED:I = 0x96


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mBottomPosition:I

.field private mColumnCount:I

.field private mColumnHeight:I

.field private mColumnWidth:I

.field private mDensity:F

.field private mDispalyHeight:I

.field private mDisplayWidth:I

.field private mDownPointX:I

.field private mDownPointY:I

.field private mDownRow:I

.field private mDownTime:J

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mEventState:I

.field private mHandler:Landroid/os/Handler;

.field private mItemClickListener:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$OnItemClickListener;

.field private mLastMoveDistance:I

.field private mLastTopRow:I

.field private mMotionY:I

.field private mMoveTime:J

.field private mNeedScrollOut:Z

.field private mNeedUpdateView:Z

.field private mOnScrollListener:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$OnScrollListener;

.field private mPressX:I

.field private mPressY:I

.field private mPressedView:Landroid/view/View;

.field private mRecycleView:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedPosition:I

.field private mSelectedView:Landroid/view/View;

.field private mSelectionBottomPadding:I

.field private mSelectionLeftPadding:I

.field private mSelectionRightPadding:I

.field private mSelectionTopPadding:I

.field private mSelectorDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectorRect:Landroid/graphics/Rect;

.field private mTop:I

.field private mTopPosition:I

.field private mTouchFocused:Z

.field private mUpPointX:I

.field private mUpPointY:I

.field private mUpTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    iput p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mEventState:I

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mRecycleView:Ljava/util/LinkedList;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectorRect:Landroid/graphics/Rect;

    const/4 p2, -0x1

    iput p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mLastTopRow:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectionLeftPadding:I

    iput p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectionTopPadding:I

    iput p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectionRightPadding:I

    iput p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectionBottomPadding:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDensity:F

    iput-boolean p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mNeedScrollOut:Z

    iput-boolean p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mNeedUpdateView:Z

    iput-boolean p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTouchFocused:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDensity:F

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f08006b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0, p2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->setWillNotDraw(Z)V

    new-instance p1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$1;

    invoke-direct {p1, p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$1;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->scrollViewByDistance(III)V

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectedPosition:I

    return p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->onItemClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->scrollDone()V

    return-void
.end method

.method static synthetic access$400()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$OnScrollListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mOnScrollListener:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$OnScrollListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private addCell(Landroid/widget/LinearLayout;[Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnWidth:I

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    if-eqz v3, :cond_0

    invoke-virtual {p1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addLayout(Landroid/widget/LinearLayout;[Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->addCell(Landroid/widget/LinearLayout;[Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->addView(Landroid/view/View;)V

    iget p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnWidth:I

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnCount:I

    mul-int/2addr p2, v1

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    invoke-virtual {p1, p2, v1}, Landroid/widget/LinearLayout;->measure(II)V

    iget p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTop:I

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnWidth:I

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnCount:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    add-int/2addr v2, p2

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/widget/LinearLayout;->layout(IIII)V

    iget p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTop:I

    iget p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTop:I

    return-void
.end method

.method private bindView()V
    .locals 8

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->removeAllViews()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mRecycleView:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDispalyHeight:I

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnCount:I

    mul-int/2addr v1, v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v2, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindView(), maxCountsInScreen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", count:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_4

    iget v6, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnCount:I

    rem-int v7, v4, v6

    if-nez v7, :cond_0

    new-array v5, v6, [Landroid/view/View;

    :cond_0
    iget-object v6, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v6, v3, v1, v1}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mRecycleView:Ljava/util/LinkedList;

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$7;

    invoke-direct {v7, p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$7;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    iget v6, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnCount:I

    if-ne v4, v6, :cond_2

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setMotionEventSplittingEnabled(Z)V

    invoke-direct {p0, v4, v5}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->addLayout(Landroid/widget/LinearLayout;[Landroid/view/View;)V

    move v4, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v0, -0x1

    if-lt v3, v6, :cond_3

    if-lez v4, :cond_3

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v6, v5}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->addLayout(Landroid/widget/LinearLayout;[Landroid/view/View;)V

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private clearPressedState()V
    .locals 8

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f080251

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private computeCurrentColumn(I)I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnWidth:I

    div-int/2addr p1, v0

    return p1
.end method

.method private computeCurrentRow(I)I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTopPosition:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    div-int/2addr p1, v0

    return p1
.end method

.method private doActionDown(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDownTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mPressX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mMotionY:I

    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mPressY:I

    iget p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTopPosition:I

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mPressY:I

    if-ge p1, v0, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mEventState:I

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->releaseEdgeEffects()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->clearPressedState()V

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mPressX:I

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mPressY:I

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->getViewByPosition(II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mPressedView:Landroid/view/View;

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mPressY:I

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->computeCurrentRow(I)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDownRow:I

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mPressX:I

    iput v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDownPointX:I

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mMotionY:I

    iput v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDownPointY:I

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private doActionMove(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mEventState:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mMoveTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v1, p1, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->isTouchFocus(IIZ)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTouchFocused:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mPressedView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->setPressed(Z)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mPressedView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDownRow:I

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mPressedView:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->positionSelector(ILandroid/view/View;)V

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTouchFocused:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, p1, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->isTouchFocus(IIZ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTouchFocused:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mPressedView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0, v3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->setPressed(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mPressedView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    iput-boolean v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTouchFocused:Z

    :cond_1
    :goto_0
    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mMotionY:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mLastMoveDistance:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    if-le v1, v2, :cond_2

    mul-int/2addr v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int v0, v2, v0

    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->scrollViewByDistance(I)V

    :cond_3
    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mMotionY:I

    return v3
.end method

.method private doActionUp(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x2

    iput v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mEventState:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mUpTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mUpPointX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mUpPointY:I

    iget p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mUpPointX:I

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mUpPointY:I

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->isTouchFocus(IIZ)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTouchFocused:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mPressedView:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->setPressed(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mPressedView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    iget p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDownRow:I

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mPressedView:Landroid/view/View;

    invoke-direct {p0, p1, v3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->positionSelector(ILandroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->releaseEdgeEffects()V

    iget p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTopPosition:I

    const/16 v3, 0x32

    if-lez p1, :cond_1

    iget v4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDispalyHeight:I

    div-int/2addr v4, v0

    if-gt p1, v4, :cond_1

    invoke-direct {p0, p1, v2, v3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->scrollViewByDistance(III)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTopPosition:I

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDispalyHeight:I

    div-int/lit8 v4, v0, 0x2

    if-le p1, v4, :cond_2

    invoke-direct {p0, p1, v0, v3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->scrollViewByDistance(III)V

    :cond_2
    :goto_0
    iget p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTopPosition:I

    if-gez p1, :cond_4

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    rem-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    div-int/lit8 v4, v3, 0x2

    const/16 v5, 0x14

    if-lt v0, v4, :cond_3

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTopPosition:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr v3, p1

    sub-int p1, v0, v3

    invoke-direct {p0, v0, p1, v5}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->scrollViewByDistance(III)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTopPosition:I

    sub-int p1, v0, p1

    invoke-direct {p0, v0, p1, v5}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->scrollViewByDistance(III)V

    :cond_4
    :goto_1
    sget-object p1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUpPointX:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mUpPointX:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mUpPointY:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mUpPointY:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", distance:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mUpPointY:I

    iget v4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDownPointY:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mUpPointY:I

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDownPointY:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDensity:F

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v0, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v0, v4

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_6

    iget p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mUpPointX:I

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDownPointX:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDensity:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    goto :goto_2

    :cond_5
    iput-boolean v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTouchFocused:Z

    return v2

    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->isSelectedViewInSight()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectedView:Landroid/view/View;

    if-eqz p1, :cond_7

    const v0, 0x7f080238

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->invalidate()V

    return v1
.end method

.method private getViewByPosition(II)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->computeCurrentRow(I)I

    move-result p2

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->computeCurrentColumn(I)I

    move-result p1

    rem-int/lit8 p2, p2, 0x4

    invoke-virtual {p0, p2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private isSelectedViewInSight()Z
    .locals 4

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectedPosition:I

    div-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTopPosition:I

    neg-int v3, v2

    if-lt v0, v3, :cond_0

    neg-int v2, v2

    iget v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDispalyHeight:I

    add-int/2addr v2, v3

    if-gt v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isTouchFocus(IIZ)Z
    .locals 7

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mPressX:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mPressY:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDensity:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    iget-wide v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mMoveTime:J

    iget-wide v5, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDownTime:J

    sub-long/2addr v3, v5

    sget-object p3, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moving, distanceX:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", distanceY:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", max:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", timeInterval:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v5}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-ge p1, v0, :cond_0

    if-ge p2, v0, :cond_0

    const-wide/16 p1, 0x64

    cmp-long p1, v3, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-wide v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mUpTime:J

    iget-wide v5, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDownTime:J

    sub-long/2addr v3, v5

    sget-object p3, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Up, distanceX:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", distanceY:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", max:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", timeInterval:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-ge p1, v0, :cond_2

    if-ge p2, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private onItemClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mPressedView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mUpPointX:I

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mUpPointY:I

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->pointToPosition(II)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_1
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mItemClickListener:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$OnItemClickListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1, p1, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$OnItemClickListener;->onItemClick(Landroid/view/View;I)Z

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->setPressed(Z)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mPressedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->clearPressedState()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectedView:Landroid/view/View;

    const v1, 0x7f080238

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iput v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectedPosition:I

    return-void
.end method

.method private pointToPosition(II)I
    .locals 1

    invoke-direct {p0, p2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->computeCurrentRow(I)I

    move-result p2

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->computeCurrentColumn(I)I

    move-result p1

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnCount:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    return p2
.end method

.method private positionSelector(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectionLeftPadding:I

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectionTopPadding:I

    sub-int/2addr p2, v1

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectionRightPadding:I

    add-int/2addr p3, v1

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectionBottomPadding:I

    add-int/2addr p4, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private positionSelector(ILandroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    mul-int/2addr v2, p1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    iget v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    mul-int/2addr p1, v3

    invoke-virtual {v0, v1, v2, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->positionSelector(IIII)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->refreshDrawableState()V

    return-void
.end method

.method private releaseEdgeEffects()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_0
    return-void
.end method

.method private scrollDone()V
    .locals 3

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTopPosition:I

    if-gtz v0, :cond_3

    neg-int v1, v0

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    div-int/2addr v1, v2

    rem-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    div-int/lit8 v2, v2, 0x2

    if-lt v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v0, v1, 0x9

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    :cond_1
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mOnScrollListener:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$OnScrollListener;

    if-eqz v2, :cond_2

    invoke-interface {v2, p0, v1, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$OnScrollListener;->onScrollDone(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;II)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mNeedUpdateView:Z

    :cond_3
    return-void
.end method

.method private scrollView(I)V
    .locals 5

    neg-int v0, p1

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    div-int v1, v0, v1

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mLastTopRow:I

    if-ne v2, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->scrollViewInCurPage(I)V

    return-void

    :cond_0
    sget-object v2, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "topRow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mLastTopRow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mLastTopRow:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",topPosition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    rem-int/2addr v0, p1

    const/4 p1, 0x0

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mLastTopRow:I

    if-le v2, v1, :cond_1

    invoke-direct {p0, v1, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->scrollViewToPrvPage(II)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1, p1, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->scrollViewToNextPage(III)V

    :goto_0
    iput v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mLastTopRow:I

    return-void
.end method

.method private scrollViewByDistance(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTopPosition:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_4

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mBottomPosition:I

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    mul-int/lit8 v2, v1, 0x3

    if-lt v0, v2, :cond_4

    add-int/2addr v0, p1

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->postInvalidateOnAnimation()V

    :cond_3
    iget p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    mul-int/lit8 p1, p1, 0x3

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mBottomPosition:I

    sub-int/2addr p1, v0

    :cond_4
    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTopPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTopPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "deltaY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTopPosition:I

    if-gez v0, :cond_6

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    if-le v0, v1, :cond_6

    if-lez p1, :cond_5

    sub-int/2addr p1, v1

    goto :goto_1

    :cond_5
    add-int/2addr p1, v1

    :cond_6
    :goto_1
    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTopPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTopPosition:I

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mBottomPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mBottomPosition:I

    const/4 v0, 0x0

    neg-int p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->scrollBy(II)V

    iget p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTopPosition:I

    if-gtz p1, :cond_7

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->scrollView(I)V

    :cond_7
    iget p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTopPosition:I

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDispalyHeight:I

    if-lt p1, v0, :cond_8

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mNeedScrollOut:Z

    :cond_8
    return-void
.end method

.method private scrollViewByDistance(III)V
    .locals 5

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollViewByDistance(), startPoint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", endPoint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",step:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mEventState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mEventState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sub-int v0, p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_2

    add-int v3, v0, p3

    if-gtz v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    if-gtz v3, :cond_1

    neg-int v0, p3

    :cond_1
    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->scrollViewByDistance(I)V

    sub-int/2addr p1, p3

    goto :goto_2

    :cond_2
    sub-int v3, v0, p3

    if-ltz v3, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    if-ltz v3, :cond_4

    move v0, p3

    :cond_4
    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->scrollViewByDistance(I)V

    add-int/2addr p1, p3

    :goto_2
    const/4 v0, 0x3

    new-array v0, v0, [I

    aput p1, v0, v1

    aput p2, v0, v2

    const/4 p1, 0x2

    aput p3, v0, p1

    iget p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mEventState:I

    if-ne p2, p1, :cond_6

    if-eqz v4, :cond_5

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x65

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0xa

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x67

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    :goto_3
    return-void
.end method

.method private scrollViewInCurPage(I)V
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    add-int/lit8 p1, p1, 0x3

    rem-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mNeedUpdateView:Z

    if-eqz v2, :cond_1

    mul-int/lit8 p1, p1, 0x3

    move v2, p1

    :goto_0
    iget v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnCount:I

    add-int/2addr v3, p1

    if-ge v2, v3, :cond_0

    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mRecycleView:Ljava/util/LinkedList;

    rem-int/lit8 v5, v2, 0xc

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v2, v4, v1}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mNeedUpdateView:Z

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$3;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$3;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;Landroid/widget/LinearLayout;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scrollViewToNextPage(III)V
    .locals 7

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result p2

    if-ltz p3, :cond_6

    const/4 p3, 0x3

    if-lez p1, :cond_5

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    mul-int v4, v0, v3

    iget v5, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnWidth:I

    iget v6, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnCount:I

    mul-int/2addr v5, v6

    add-int/lit8 v6, v0, 0x1

    mul-int/2addr v6, v3

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/widget/LinearLayout;->layout(IIII)V

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$5;

    invoke-direct {v4, p0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$5;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    add-int/lit8 v3, p1, -0x1

    if-ltz v3, :cond_1

    invoke-virtual {p0, v3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$6;

    invoke-direct {v5, p0, v1, v3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$6;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    mul-int/2addr v0, p3

    mul-int/2addr p1, p3

    move p3, p1

    move p1, v0

    :goto_0
    iget v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnCount:I

    add-int/2addr v3, v0

    if-ge p1, v3, :cond_2

    if-ge p1, p2, :cond_2

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mRecycleView:Ljava/util/LinkedList;

    invoke-virtual {v4, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, p1, v4, v1}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnCount:I

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    move p1, v2

    :goto_1
    if-ge p1, v0, :cond_6

    const/4 p2, 0x0

    if-eqz v1, :cond_3

    iget p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnCount:I

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    :cond_3
    if-eqz p2, :cond_4

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setClickable(Z)V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    invoke-virtual {p0, p3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/16 p3, 0x9

    move v0, p3

    :goto_2
    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnCount:I

    add-int/2addr v1, p3

    if-ge v0, v1, :cond_6

    if-ge v0, p2, :cond_6

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mRecycleView:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v0, v2, p1}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method private scrollViewToPrvPage(II)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    mul-int v2, p1, v1

    iget v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnWidth:I

    iget v4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnCount:I

    mul-int/2addr v3, v4

    add-int/lit8 v4, p1, 0x1

    mul-int/2addr v4, v1

    invoke-virtual {p2, v0, v2, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$4;

    invoke-direct {v2, p0, p2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$4;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;Landroid/widget/LinearLayout;)V

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    mul-int/lit8 p1, p1, 0x3

    move v1, p1

    :goto_0
    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnCount:I

    add-int/2addr v2, p1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mRecycleView:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v1, v3, p2}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mRecycleView:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mRecycleView:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectorDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectionLeftPadding:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectionTopPadding:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectionRightPadding:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectionBottomPadding:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->updateSelectorState()V

    return-void
.end method

.method private shouldShowSelector()Z
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method private updateSelectorState()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectorDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    sget-object p1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[onDraw]"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mNeedScrollOut:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$2;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mNeedScrollOut:Z

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mTopPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTopPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", X = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", Y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->releaseEdgeEffects()V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->invalidate()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->doActionMove(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->doActionUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->doActionDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :goto_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    sget-object p1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onLayout], left:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", top:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", right:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", bottom:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p4

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p5

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p3, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    iget p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDisplayWidth:I

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDispalyHeight:I

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    sget-object p1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[onMeasure]"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnWidth:I

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public scrollToSelectedPosition(I)V
    .locals 2

    div-int/lit8 p1, p1, 0x3

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    mul-int/2addr p1, v0

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTopPosition:I

    neg-int p1, p1

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v1, p1, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->scrollViewByDistance(III)V

    goto :goto_0

    :cond_0
    if-gt p1, v0, :cond_1

    iget p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mTopPosition:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->scrollViewByDistance(III)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 3

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mAdapter:Landroid/widget/BaseAdapter;

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnCount:I

    div-int/2addr v1, v2

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mBottomPosition:I

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result p1

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnCount:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mBottomPosition:I

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mBottomPosition:I

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->bindView()V

    return-void
.end method

.method public setGridCountInColumn(I)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnCount:I

    return-void
.end method

.method public setGridHeight(I)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnHeight:I

    return-void
.end method

.method public setGridWidth(I)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mColumnWidth:I

    return-void
.end method

.method public setLayoutSize(II)V
    .locals 1

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDisplayWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDispalyHeight:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDisplayWidth:I

    iput p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mDispalyHeight:I

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setOnItemClickListener(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mItemClickListener:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$OnItemClickListener;

    return-void
.end method

.method public setOnScrollListener(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mOnScrollListener:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$OnScrollListener;

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    return-void
.end method

.method public setSelector(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public showSelectedBorder(I)V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->clearPressedState()V

    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectedPosition:I

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->isSelectedViewInSight()Z

    move-result v0

    if-eqz v0, :cond_0

    div-int/lit8 v0, p1, 0x3

    rem-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    rem-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->mSelectedView:Landroid/view/View;

    const v0, 0x7f080238

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method
