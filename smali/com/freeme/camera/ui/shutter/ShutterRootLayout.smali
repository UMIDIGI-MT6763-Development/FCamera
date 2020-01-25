.class Lcom/freeme/camera/ui/shutter/ShutterRootLayout;
.super Landroid/widget/RelativeLayout;
.source "ShutterRootLayout.java"

# interfaces
.implements Lcom/freeme/camera/ui/shutter/ShutterTitleView$OnShutterTextClicked;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/ui/shutter/ShutterRootLayout$KeyEventListenerImpl;,
        Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;,
        Lcom/freeme/camera/ui/shutter/ShutterRootLayout$OnShutterChangeListener;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION_MS:I = 0x64

.field private static final MINI_SCROLL_LENGTH:I = 0x14

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mChangIndex:I

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field mDelayed:Ljava/lang/Runnable;

.field private mDirection:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsFirstInit:Z

.field private mIsFirstInitForFrontCamera:Z

.field private mListener:Lcom/freeme/camera/ui/shutter/ShutterRootLayout$OnShutterChangeListener;

.field mNoModeDelayed:Ljava/lang/Runnable;

.field mNoModeDelayedForFrontCamera:Ljava/lang/Runnable;

.field private mResumed:Z

.field private mScrollDistance:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSwitchShutter:Ljava/lang/Runnable;

.field private mapp:Lcom/freeme/camera/common/app/IApp;

.field vto:Landroid/view/ViewTreeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mChangIndex:I

    iput p2, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mCurrentIndex:I

    new-instance v0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$1;-><init>(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)V

    iput-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mDelayed:Ljava/lang/Runnable;

    iput-boolean p2, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mDirection:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mIsFirstInit:Z

    iput-boolean p2, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mIsFirstInitForFrontCamera:Z

    new-instance v0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$2;-><init>(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)V

    iput-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mNoModeDelayed:Ljava/lang/Runnable;

    new-instance v0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$3;

    invoke-direct {v0, p0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$3;-><init>(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)V

    iput-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mNoModeDelayedForFrontCamera:Ljava/lang/Runnable;

    iput-boolean p2, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mResumed:Z

    iput p2, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mScrollDistance:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->vto:Landroid/view/ViewTreeObserver;

    new-instance p2, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$4;

    invoke-direct {p2, p0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$4;-><init>(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)V

    iput-object p2, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mSwitchShutter:Ljava/lang/Runnable;

    new-instance p2, Landroid/widget/Scroller;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {p2, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mScroller:Landroid/widget/Scroller;

    iput-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->vto:Landroid/view/ViewTreeObserver;

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->vto:Landroid/view/ViewTreeObserver;

    new-instance p2, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$5;

    invoke-direct {p2, p0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$5;-><init>(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mChangIndex:I

    return p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->snapTOShutter(II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)Landroid/widget/Scroller;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mResumed:Z

    return p0
.end method

.method static synthetic access$1300()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mIsFirstInit:Z

    return p0
.end method

.method static synthetic access$202(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mIsFirstInit:Z

    return p1
.end method

.method static synthetic access$300(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mCurrentIndex:I

    return p0
.end method

.method static synthetic access$302(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)Lcom/freeme/camera/ui/shutter/ShutterRootLayout$OnShutterChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mListener:Lcom/freeme/camera/ui/shutter/ShutterRootLayout$OnShutterChangeListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->snapTOShutterNoMode(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mIsFirstInitForFrontCamera:Z

    return p0
.end method

.method static synthetic access$602(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mIsFirstInitForFrontCamera:Z

    return p1
.end method

.method static synthetic access$800(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mapp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$900(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private doShutterAnimation(II)V
    .locals 7

    iget v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mCurrentIndex:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt p1, v1, :cond_7

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getScrollX()I

    move-result v0

    neg-int v0, v0

    goto/16 :goto_2

    :cond_0
    iget-boolean v1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mDirection:Z

    const/4 v3, 0x0

    const v4, 0x7f070060

    if-eqz v1, :cond_3

    if-le v0, v2, :cond_2

    move v1, v3

    :goto_0
    if-ge v3, v0, :cond_1

    iget v5, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mCurrentIndex:I

    sub-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mCurrentIndex:I

    sub-int/2addr v6, v3

    sub-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto/16 :goto_2

    :cond_2
    iget v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mCurrentIndex:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_3
    if-le v0, v2, :cond_5

    move v1, v3

    :goto_1
    if-ge v3, v0, :cond_4

    iget v5, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mCurrentIndex:I

    add-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mCurrentIndex:I

    add-int/2addr v6, v3

    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mCurrentIndex:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    :goto_2
    iget-boolean v1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mDirection:Z

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    neg-int v0, v0

    :cond_6
    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getScrollX()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v4, v0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mScrollDistance:I

    iput p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mCurrentIndex:I

    invoke-virtual {p0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->invalidate()V

    :cond_7
    return-void
.end method

.method private snapTOShutter(II)V
    .locals 6

    iget v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/shutter/ShutterTitleView;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->getModeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "pano_dialog_title"

    const-string v4, "string"

    iget-object v5, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mapp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v5}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCaptureState() ==  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mapp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/ui/CameraAppUI;

    invoke-virtual {v2}, Lcom/freeme/camera/ui/CameraAppUI;->getCaptureState()Lcom/freeme/camera/common/CaptureState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mapp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/CameraAppUI;->getCaptureState()Lcom/freeme/camera/common/CaptureState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/CaptureState;->START:Lcom/freeme/camera/common/CaptureState;

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "On  capturing,please wait..."

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mCurrentIndex:I

    if-eq p1, v0, :cond_2

    if-le p1, v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mDirection:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mDirection:Z

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->doShutterAnimation(II)V

    :cond_2
    return-void
.end method

.method private snapTOShutterNoMode(II)V
    .locals 1

    iget v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mCurrentIndex:I

    if-eq p1, v0, :cond_1

    if-le p1, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mDirection:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mDirection:Z

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->doShutterAnimation(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mapp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getShutterButton()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mapp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getShutterButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mapp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Lcom/freeme/camera/common/IAppUi;->setUIEnabledImmediately(IZ)V

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mapp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2, v1}, Lcom/freeme/camera/common/IAppUi;->setUIEnabledImmediately(IZ)V

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v2, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->postInvalidate()V

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mSwitchShutter:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mSwitchShutter:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mListener:Lcom/freeme/camera/ui/shutter/ShutterRootLayout$OnShutterChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$OnShutterChangeListener;->onShutterChangedEnd()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/shutter/ShutterTitleView;

    iget v2, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mCurrentIndex:I

    if-ne v1, v2, :cond_2

    const v2, 0x7f060071

    invoke-virtual {v0, v2}, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->setTextColor(I)V

    goto :goto_1

    :cond_2
    const v2, 0x7f060070

    invoke-virtual {v0, v2}, Lcom/freeme/camera/ui/shutter/ShutterTitleView;->setTextColor(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getGestureListener()Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;
    .locals 2

    new-instance v0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$GestureListenerImpl;-><init>(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;Lcom/freeme/camera/ui/shutter/ShutterRootLayout$1;)V

    return-object v0
.end method

.method public getKeyEventListener()Lcom/freeme/camera/common/app/IApp$KeyEventListener;
    .locals 2

    new-instance v0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$KeyEventListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$KeyEventListenerImpl;-><init>(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;Lcom/freeme/camera/ui/shutter/ShutterRootLayout$1;)V

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mapp:Lcom/freeme/camera/common/app/IApp;

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mResumed:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mResumed:Z

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onScrollChanged(IIII)V

    return-void
.end method

.method public onShutterTextClicked(I)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterTextClicked index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mResumed:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->snapTOShutter(II)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setOnShutterChangedListener(Lcom/freeme/camera/ui/shutter/ShutterRootLayout$OnShutterChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mListener:Lcom/freeme/camera/ui/shutter/ShutterRootLayout$OnShutterChangeListener;

    return-void
.end method

.method public updateCurrentShutterIndex(I)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->snapTOShutterNoMode(II)V

    iput p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mChangIndex:I

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mDelayed:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mDelayed:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
