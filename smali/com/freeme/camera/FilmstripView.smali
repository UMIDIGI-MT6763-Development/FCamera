.class public Lcom/freeme/camera/FilmstripView;
.super Landroid/view/ViewGroup;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/FilmstripView$MyGestureReceiver;,
        Lcom/freeme/camera/FilmstripView$MyScroller;,
        Lcom/freeme/camera/FilmstripView$MyController;,
        Lcom/freeme/camera/FilmstripView$ViewItem;,
        Lcom/freeme/camera/FilmstripView$ActionCallbackImpl;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x3

.field private static final CAMERA_PREVIEW_SWIPE_THRESHOLD:I = 0x12c

.field private static final DECELERATION_FACTOR:I = 0x4

.field private static final FILM_STRIP_SCALE:F = 0.7f

.field private static final FLING_COASTING_DURATION_S:F = 0.05f

.field private static final FULL_SCREEN_SCALE:F = 1.0f

.field private static final GEOMETRY_ADJUST_TIME_MS:I = 0x190

.field private static final PROMOTE_HEIGHT_RATIO:F = 0.5f

.field private static final PROMOTE_VELOCITY:F = 3.5f

.field private static final SNAP_IN_CENTER_TIME_MS:I = 0x258

.field private static final SWIPE_TIME_OUT:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "FilmstripView"

.field private static final TOLERANCE:F = 0.1f

.field private static final VELOCITY_PROMOTE_HEIGHT_RATIO:F = 0.1f

.field private static final ZOOM_ANIMATION_DURATION_MS:I = 0xc8


# instance fields
.field private mActionCallback:Lcom/freeme/camera/data/LocalData$ActionCallback;

.field private mActivity:Landroid/app/Activity;

.field private mCenterX:I

.field private mCheckToIntercept:Z

.field private mController:Lcom/freeme/camera/FilmstripView$MyController;

.field private final mCurrentItem:I

.field private mDataAdapter:Lcom/freeme/camera/filmstrip/DataAdapter;

.field private mDataIdOnUserScrolling:I

.field private mDown:Landroid/view/MotionEvent;

.field private final mDrawArea:Landroid/graphics/Rect;

.field private mFullScreenUIHidden:Z

.field private mGestureListener:Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

.field private mGestureRecognizer:Lcom/freeme/camera/ui/FilmstripGestureRecognizer;

.field private mIsUserScrolling:Z

.field private mListener:Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;

.field private mOverScaleFactor:F

.field private mScale:F

.field private mSlop:I

.field private mViewAnimInterpolator:Landroid/animation/TimeInterpolator;

.field private mViewGapInPixel:I

.field private final mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

.field private mZoomView:Lcom/freeme/camera/ui/ZoomView;

.field private final recycledViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Queue<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput v0, p0, Lcom/freeme/camera/FilmstripView;->mCurrentItem:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/freeme/camera/FilmstripView$ViewItem;

    iput-object v1, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/freeme/camera/FilmstripView;->mZoomView:Lcom/freeme/camera/ui/ZoomView;

    iput-boolean v0, p0, Lcom/freeme/camera/FilmstripView;->mCheckToIntercept:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/freeme/camera/FilmstripView;->mOverScaleFactor:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/FilmstripView;->mFullScreenUIHidden:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/FilmstripView;->recycledViews:Landroid/util/SparseArray;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripView;->init(Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    const/4 p2, 0x1

    iput p2, p0, Lcom/freeme/camera/FilmstripView;->mCurrentItem:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/freeme/camera/FilmstripView$ViewItem;

    iput-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/FilmstripView;->mZoomView:Lcom/freeme/camera/ui/ZoomView;

    iput-boolean p2, p0, Lcom/freeme/camera/FilmstripView;->mCheckToIntercept:Z

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/freeme/camera/FilmstripView;->mOverScaleFactor:F

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/freeme/camera/FilmstripView;->mFullScreenUIHidden:Z

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/FilmstripView;->recycledViews:Landroid/util/SparseArray;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripView;->init(Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    const/4 p2, 0x1

    iput p2, p0, Lcom/freeme/camera/FilmstripView;->mCurrentItem:I

    const/4 p3, -0x1

    iput p3, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    const/4 p3, 0x3

    new-array p3, p3, [Lcom/freeme/camera/FilmstripView$ViewItem;

    iput-object p3, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/freeme/camera/FilmstripView;->mZoomView:Lcom/freeme/camera/ui/ZoomView;

    iput-boolean p2, p0, Lcom/freeme/camera/FilmstripView;->mCheckToIntercept:Z

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/freeme/camera/FilmstripView;->mOverScaleFactor:F

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/freeme/camera/FilmstripView;->mFullScreenUIHidden:Z

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/FilmstripView;->recycledViews:Landroid/util/SparseArray;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripView;->init(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/FilmstripView;)F
    .locals 0

    iget p0, p0, Lcom/freeme/camera/FilmstripView;->mScale:F

    return p0
.end method

.method static synthetic access$002(Lcom/freeme/camera/FilmstripView;F)F
    .locals 0

    iput p1, p0, Lcom/freeme/camera/FilmstripView;->mScale:F

    return p1
.end method

.method static synthetic access$100(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/filmstrip/DataAdapter;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/FilmstripView;->mDataAdapter:Lcom/freeme/camera/filmstrip/DataAdapter;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/FilmstripView;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->reload()V

    return-void
.end method

.method static synthetic access$1200(Lcom/freeme/camera/FilmstripView;Lcom/freeme/camera/filmstrip/DataAdapter$UpdateReporter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripView;->update(Lcom/freeme/camera/filmstrip/DataAdapter$UpdateReporter;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/freeme/camera/FilmstripView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripView;->updateInsertion(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/FilmstripView;->mListener:Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/freeme/camera/FilmstripView;)I
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->getCurrentId()I

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/freeme/camera/FilmstripView;ILcom/freeme/camera/filmstrip/ImageData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/FilmstripView;->animateItemRemoval(ILcom/freeme/camera/filmstrip/ImageData;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/freeme/camera/FilmstripView;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    return p0
.end method

.method static synthetic access$1802(Lcom/freeme/camera/FilmstripView;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    return p1
.end method

.method static synthetic access$1900(Lcom/freeme/camera/FilmstripView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->clampCenterX()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/FilmstripView;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/FilmstripView;->recycleView(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/freeme/camera/FilmstripView;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->snapInCenter()V

    return-void
.end method

.method static synthetic access$2200(Lcom/freeme/camera/FilmstripView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->isCurrentItemCentered()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/freeme/camera/FilmstripView;Lcom/freeme/camera/FilmstripView$ViewItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripView;->isViewTypeSticky(Lcom/freeme/camera/FilmstripView$ViewItem;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/freeme/camera/FilmstripView;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/FilmstripView;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/freeme/camera/FilmstripView;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->onLeaveFullScreen()V

    return-void
.end method

.method static synthetic access$2600(Lcom/freeme/camera/FilmstripView;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->onLeaveFilmstrip()V

    return-void
.end method

.method static synthetic access$2700(Lcom/freeme/camera/FilmstripView;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->onEnterFullScreen()V

    return-void
.end method

.method static synthetic access$2800(Lcom/freeme/camera/FilmstripView;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->onEnterFilmstrip()V

    return-void
.end method

.method static synthetic access$2900(Lcom/freeme/camera/FilmstripView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripView;->setViewGap(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/freeme/camera/FilmstripView;Lcom/freeme/camera/filmstrip/DataAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripView;->setDataAdapter(Lcom/freeme/camera/filmstrip/DataAdapter;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/freeme/camera/FilmstripView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->inFilmstrip()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/freeme/camera/FilmstripView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->inFullScreen()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lcom/freeme/camera/FilmstripView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->isCameraPreview()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lcom/freeme/camera/FilmstripView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->inCameraFullscreen()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lcom/freeme/camera/FilmstripView;Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripView;->setListener(Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/freeme/camera/FilmstripView;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/FilmstripView;->mViewGapInPixel:I

    return p0
.end method

.method static synthetic access$3700(Lcom/freeme/camera/FilmstripView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/FilmstripView;->mFullScreenUIHidden:Z

    return p0
.end method

.method static synthetic access$3800(Lcom/freeme/camera/FilmstripView;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->onLeaveFullScreenUiHidden()V

    return-void
.end method

.method static synthetic access$3900(Lcom/freeme/camera/FilmstripView;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->onLeaveZoomView()V

    return-void
.end method

.method static synthetic access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/FilmstripView;->mController:Lcom/freeme/camera/FilmstripView$MyController;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/freeme/camera/FilmstripView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/ui/ZoomView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/FilmstripView;->mZoomView:Lcom/freeme/camera/ui/ZoomView;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/freeme/camera/FilmstripView;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->onEnterFullScreenUiHidden()V

    return-void
.end method

.method static synthetic access$4400(Lcom/freeme/camera/FilmstripView;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->onEnterZoomView()V

    return-void
.end method

.method static synthetic access$4700(Lcom/freeme/camera/FilmstripView;)F
    .locals 0

    iget p0, p0, Lcom/freeme/camera/FilmstripView;->mOverScaleFactor:F

    return p0
.end method

.method static synthetic access$4800(Lcom/freeme/camera/FilmstripView;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->resetZoomView()V

    return-void
.end method

.method static synthetic access$4900(Lcom/freeme/camera/FilmstripView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->inZoomView()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/freeme/camera/FilmstripView;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->checkItemAtMaxSize()V

    return-void
.end method

.method static synthetic access$5500(Lcom/freeme/camera/FilmstripView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/FilmstripView;->mIsUserScrolling:Z

    return p0
.end method

.method static synthetic access$5502(Lcom/freeme/camera/FilmstripView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/FilmstripView;->mIsUserScrolling:Z

    return p1
.end method

.method static synthetic access$5600(Lcom/freeme/camera/FilmstripView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/FilmstripView;->demoteData(II)V

    return-void
.end method

.method static synthetic access$5700(Lcom/freeme/camera/FilmstripView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/FilmstripView;->promoteData(II)V

    return-void
.end method

.method static synthetic access$5800(Lcom/freeme/camera/FilmstripView;Lcom/freeme/camera/FilmstripView$ViewItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripView;->slideViewBack(Lcom/freeme/camera/FilmstripView$ViewItem;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/freeme/camera/FilmstripView;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/FilmstripView;->mDataIdOnUserScrolling:I

    return p0
.end method

.method static synthetic access$5902(Lcom/freeme/camera/FilmstripView;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/FilmstripView;->mDataIdOnUserScrolling:I

    return p1
.end method

.method static synthetic access$6000(Lcom/freeme/camera/FilmstripView;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->hideZoomView()V

    return-void
.end method

.method private adjustChildZOrder()V
    .locals 3

    const/4 v0, 0x2

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/freeme/camera/FilmstripView$ViewItem;->bringViewToFront()V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mZoomView:Lcom/freeme/camera/ui/ZoomView;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/FilmstripView;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method private animateItemRemoval(ILcom/freeme/camera/filmstrip/ImageData;)V
    .locals 8

    iget p2, p0, Lcom/freeme/camera/FilmstripView;->mScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->resetZoomView()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripView;->findItemByDataID(I)I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v4, v2, v1

    if-eqz v4, :cond_2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v2

    if-gt v2, p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v4, v2, v1

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v4, v2}, Lcom/freeme/camera/FilmstripView$ViewItem;->setId(I)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    if-ne p2, p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$ViewItem;->getMeasuredWidth()I

    move-result v1

    iget v4, p0, Lcom/freeme/camera/FilmstripView;->mViewGapInPixel:I

    add-int/2addr v1, v4

    add-int/lit8 v4, p2, 0x1

    :goto_2
    if-ge v4, v2, :cond_6

    iget-object v5, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v6, v5, v4

    if-eqz v6, :cond_5

    aget-object v6, v5, v4

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/freeme/camera/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v6, v5}, Lcom/freeme/camera/FilmstripView$ViewItem;->setLeftPosition(I)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    if-lt p2, v3, :cond_e

    iget-object v4, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v4, v4, p2

    invoke-virtual {v4}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/freeme/camera/FilmstripView;->mDataAdapter:Lcom/freeme/camera/filmstrip/DataAdapter;

    invoke-interface {v5}, Lcom/freeme/camera/filmstrip/DataAdapter;->getTotalNumber()I

    move-result v5

    if-ge v4, v5, :cond_e

    move v4, p2

    :goto_3
    const/4 v5, 0x2

    if-ge v4, v5, :cond_7

    iget-object v5, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    add-int/lit8 v6, v4, 0x1

    aget-object v7, v5, v6

    aput-object v7, v5, v4

    move v4, v6

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v6, v4, v3

    if-eqz v6, :cond_8

    aget-object v6, v4, v3

    invoke-virtual {v6}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v6

    add-int/2addr v6, v3

    invoke-direct {p0, v6}, Lcom/freeme/camera/FilmstripView;->buildItemFromData(I)Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v6

    aput-object v6, v4, v5

    :cond_8
    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->inFullScreen()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v4, v4, v3

    invoke-virtual {v4, v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->setVisibility(I)V

    iget-object v4, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v4, v4, v5

    if-eqz v4, :cond_9

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/freeme/camera/FilmstripView$ViewItem;->setVisibility(I)V

    :cond_9
    :goto_4
    if-ge p2, v2, :cond_b

    iget-object v4, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v5, v4, p2

    if-eqz v5, :cond_a

    aget-object v4, v4, p2

    int-to-float v5, v1

    invoke-virtual {v4, v5}, Lcom/freeme/camera/FilmstripView$ViewItem;->setTranslationX(F)V

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_b
    iget-object p2, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object p2, p2, v3

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/freeme/camera/FilmstripView;->mDataAdapter:Lcom/freeme/camera/filmstrip/DataAdapter;

    invoke-interface {v4}, Lcom/freeme/camera/filmstrip/DataAdapter;->getTotalNumber()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne v1, v4, :cond_12

    iget v1, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    invoke-virtual {p2}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result v4

    if-le v1, v4, :cond_12

    invoke-virtual {p2}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result v1

    iget v4, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    sub-int/2addr v1, v4

    invoke-virtual {p2}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result p2

    iput p2, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    move p2, v0

    :goto_5
    if-ge p2, v2, :cond_12

    iget-object v4, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v5, v4, p2

    if-eqz v5, :cond_c

    aget-object v4, v4, p2

    int-to-float v5, v1

    invoke-virtual {v4, v5}, Lcom/freeme/camera/FilmstripView$ViewItem;->translateXScaledBy(F)V

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_d
    const-string p2, "FilmstripView"

    const-string v1, "Caught invalid update in removal animation."

    invoke-static {p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_e
    iget v4, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    move v4, p2

    :goto_6
    if-lez v4, :cond_f

    iget-object v5, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    add-int/lit8 v6, v4, -0x1

    aget-object v6, v5, v6

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    :cond_f
    iget-object v4, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v5, v4, v3

    if-eqz v5, :cond_10

    aget-object v5, v4, v3

    invoke-virtual {v5}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-direct {p0, v5}, Lcom/freeme/camera/FilmstripView;->buildItemFromData(I)Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v5

    aput-object v5, v4, v0

    :cond_10
    :goto_7
    if-ltz p2, :cond_12

    iget-object v4, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v5, v4, p2

    if-eqz v5, :cond_11

    aget-object v4, v4, p2

    neg-int v5, v1

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/freeme/camera/FilmstripView$ViewItem;->setTranslationX(F)V

    :cond_11
    add-int/lit8 p2, p2, -0x1

    goto :goto_7

    :cond_12
    :goto_8
    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x8

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$ViewItem;->getTranslationY()F

    move-result v1

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_13

    neg-int p2, p2

    :cond_13
    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$ViewItem;->getTranslationY()F

    move-result v1

    int-to-float p2, p2

    add-float/2addr v1, p2

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView;->mViewAnimInterpolator:Landroid/animation/TimeInterpolator;

    const-wide/16 v5, 0x190

    invoke-virtual {p1, v1, v5, v6, p2}, Lcom/freeme/camera/FilmstripView$ViewItem;->animateTranslationY(FJLandroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView;->mViewAnimInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v4, v5, v6, p2}, Lcom/freeme/camera/FilmstripView$ViewItem;->animateAlpha(FJLandroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/freeme/camera/FilmstripView$2;

    invoke-direct {p2, p0, p1}, Lcom/freeme/camera/FilmstripView$2;-><init>(Lcom/freeme/camera/FilmstripView;Lcom/freeme/camera/FilmstripView$ViewItem;)V

    invoke-virtual {p0, p2, v5, v6}, Lcom/freeme/camera/FilmstripView;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->adjustChildZOrder()V

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView;->invalidate()V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object p1, p1, v3

    if-nez p1, :cond_14

    return-void

    :cond_14
    :goto_9
    if-ge v0, v2, :cond_16

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object p2, p1, v0

    if-eqz p2, :cond_15

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$ViewItem;->getTranslationX()F

    move-result p1

    cmpl-float p1, p1, v4

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripView;->slideViewBack(Lcom/freeme/camera/FilmstripView$ViewItem;)V

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_16
    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->isCurrentItemCentered()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripView;->isViewTypeSticky(Lcom/freeme/camera/FilmstripView$ViewItem;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView;->mController:Lcom/freeme/camera/FilmstripView$MyController;

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$MyController;->goToFullScreen()V

    :cond_17
    return-void
.end method

.method private buildItemFromData(I)Lcom/freeme/camera/FilmstripView$ViewItem;
    .locals 7

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "FilmstripView"

    const-string v0, "Activity destroyed, don\'t load data"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mDataAdapter:Lcom/freeme/camera/filmstrip/DataAdapter;

    invoke-interface {v0, p1}, Lcom/freeme/camera/filmstrip/DataAdapter;->getImageData(I)Lcom/freeme/camera/filmstrip/ImageData;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView;->getHeight()I

    move-result v3

    const-string v4, "FilmstripView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "suggesting item bounds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/freeme/camera/FilmstripView;->mDataAdapter:Lcom/freeme/camera/filmstrip/DataAdapter;

    invoke-interface {v4, v2, v3}, Lcom/freeme/camera/filmstrip/DataAdapter;->suggestViewSizeBound(II)V

    invoke-interface {v0}, Lcom/freeme/camera/filmstrip/ImageData;->prepare()V

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripView;->getRecycledView(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView;->mDataAdapter:Lcom/freeme/camera/filmstrip/DataAdapter;

    iget-object v4, p0, Lcom/freeme/camera/FilmstripView;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/freeme/camera/FilmstripView;->mActionCallback:Lcom/freeme/camera/data/LocalData$ActionCallback;

    invoke-interface {v3, v4, v2, p1, v5}, Lcom/freeme/camera/filmstrip/DataAdapter;->getView(Landroid/content/Context;Landroid/view/View;ILcom/freeme/camera/data/LocalData$ActionCallback;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    new-instance v1, Lcom/freeme/camera/FilmstripView$ViewItem;

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/freeme/camera/FilmstripView$ViewItem;-><init>(Lcom/freeme/camera/FilmstripView;ILandroid/view/View;Lcom/freeme/camera/filmstrip/ImageData;)V

    invoke-virtual {v1}, Lcom/freeme/camera/FilmstripView$ViewItem;->addViewToHierarchy()V

    return-object v1
.end method

.method private checkItemAtMaxSize()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->isMaximumBitmapRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->setMaximumBitmapRequested()V

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView;->mDataAdapter:Lcom/freeme/camera/filmstrip/DataAdapter;

    invoke-interface {v2, v1}, Lcom/freeme/camera/filmstrip/DataAdapter;->getImageData(I)Lcom/freeme/camera/filmstrip/ImageData;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/filmstrip/ImageData;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView;->mDataAdapter:Lcom/freeme/camera/filmstrip/DataAdapter;

    invoke-interface {v3, v1}, Lcom/freeme/camera/filmstrip/DataAdapter;->getImageData(I)Lcom/freeme/camera/filmstrip/ImageData;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/filmstrip/ImageData;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3, v1, v2}, Lcom/freeme/camera/FilmstripView$ViewItem;->resizeView(Landroid/content/Context;II)V

    return-void
.end method

.method private clampCenterX()Z
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v3

    if-ne v3, v1, :cond_1

    iget v3, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget v3, p0, Lcom/freeme/camera/FilmstripView;->mDataIdOnUserScrolling:I

    if-le v3, v1, :cond_1

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView;->mDataAdapter:Lcom/freeme/camera/filmstrip/DataAdapter;

    invoke-interface {v3, v2}, Lcom/freeme/camera/filmstrip/DataAdapter;->getImageData(I)Lcom/freeme/camera/filmstrip/ImageData;

    move-result-object v3

    invoke-interface {v3}, Lcom/freeme/camera/filmstrip/ImageData;->getViewType()I

    move-result v3

    if-ne v3, v1, :cond_1

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView;->mController:Lcom/freeme/camera/FilmstripView$MyController;

    invoke-virtual {v3}, Lcom/freeme/camera/FilmstripView$MyController;->isScrolling()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result v4

    if-ge v3, v4, :cond_2

    move v2, v1

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/freeme/camera/FilmstripView;->mDataAdapter:Lcom/freeme/camera/filmstrip/DataAdapter;

    invoke-interface {v4}, Lcom/freeme/camera/filmstrip/DataAdapter;->getTotalNumber()I

    move-result v4

    sub-int/2addr v4, v1

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result v4

    if-le v3, v4, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    :cond_4
    return v1
.end method

.method private demoteData(II)V
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView;->mListener:Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;->onFocusedDataDemoted(I)V

    :cond_0
    return-void
.end method

.method private fadeAndScaleRightViewItem(I)V
    .locals 5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_5

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v1, v0, p1

    add-int/lit8 v2, p1, -0x1

    aget-object v0, v0, v2

    if-eqz v1, :cond_4

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    const/4 v3, 0x4

    if-le p1, v2, :cond_2

    invoke-virtual {v1, v3}, Lcom/freeme/camera/FilmstripView$ViewItem;->setVisibility(I)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result p1

    iget v0, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    if-gt v0, p1, :cond_3

    invoke-virtual {v1, v3}, Lcom/freeme/camera/FilmstripView$ViewItem;->setVisibility(I)V

    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result v0

    iget v2, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    int-to-float v2, v2

    int-to-float v3, p1

    sub-float/2addr v2, v3

    sub-int p1, v0, p1

    int-to-float p1, p1

    div-float/2addr v2, p1

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    const v3, 0x3f333333    # 0.7f

    const v4, 0x3e99999a    # 0.3f

    mul-float/2addr v4, v2

    add-float/2addr v4, v3

    invoke-virtual {v1, p1, v0, v4}, Lcom/freeme/camera/FilmstripView$ViewItem;->layoutWithTranslationX(Landroid/graphics/Rect;IF)V

    invoke-virtual {v1, v2}, Lcom/freeme/camera/FilmstripView$ViewItem;->setAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/freeme/camera/FilmstripView$ViewItem;->setTranslationX(F)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/freeme/camera/FilmstripView$ViewItem;->setVisibility(I)V

    return-void

    :cond_4
    :goto_0
    const-string v0, "FilmstripView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid view item (curr or prev == null). curr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :goto_1
    const-string p1, "FilmstripView"

    const-string v0, "currItem id out of bound."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private findItemByDataID(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private findTheNearestView(I)I
    .locals 7

    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v4, v3, v0

    if-eqz v4, :cond_0

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/freeme/camera/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v3

    if-ne v3, v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v3, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result v3

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    :goto_1
    if-ge v4, v2, :cond_5

    iget-object v5, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v6, v5, v4

    if-eqz v6, :cond_5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/freeme/camera/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v5

    if-ne v5, v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result v5

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v3, :cond_4

    move v0, v4

    move v3, v5

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return v0
.end method

.method private getCurrentId()I
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v0

    return v0
.end method

.method private getRecycledView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mDataAdapter:Lcom/freeme/camera/filmstrip/DataAdapter;

    invoke-interface {v0, p1}, Lcom/freeme/camera/filmstrip/DataAdapter;->getItemViewType(I)I

    move-result p1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->recycledViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Queue;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private hideZoomView()V
    .locals 2

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->inZoomView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mController:Lcom/freeme/camera/FilmstripView$MyController;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView$MyController;->access$900(Lcom/freeme/camera/FilmstripView$MyController;)V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mZoomView:Lcom/freeme/camera/ui/ZoomView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/ZoomView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private inCameraFullscreen()Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/freeme/camera/FilmstripView;->isDataAtCenter(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->inFullScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/freeme/camera/FilmstripView;->isViewTypeSticky(Lcom/freeme/camera/FilmstripView$ViewItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method private inFilmstrip()Z
    .locals 2

    iget v0, p0, Lcom/freeme/camera/FilmstripView;->mScale:F

    const v1, 0x3f333333    # 0.7f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private inFullScreen()Z
    .locals 2

    iget v0, p0, Lcom/freeme/camera/FilmstripView;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private inZoomView()Z
    .locals 2

    iget v0, p0, Lcom/freeme/camera/FilmstripView;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private init(Landroid/app/Activity;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/FilmstripView;->setWillNotDraw(Z)V

    iput-object p1, p0, Lcom/freeme/camera/FilmstripView;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/FilmstripView$ActionCallbackImpl;

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/freeme/camera/FilmstripView$ActionCallbackImpl;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/freeme/camera/FilmstripView;->mActionCallback:Lcom/freeme/camera/data/LocalData$ActionCallback;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/freeme/camera/FilmstripView;->mScale:F

    iput v0, p0, Lcom/freeme/camera/FilmstripView;->mDataIdOnUserScrolling:I

    new-instance v0, Lcom/freeme/camera/FilmstripView$MyController;

    invoke-direct {v0, p0, p1}, Lcom/freeme/camera/FilmstripView$MyController;-><init>(Lcom/freeme/camera/FilmstripView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freeme/camera/FilmstripView;->mController:Lcom/freeme/camera/FilmstripView$MyController;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewAnimInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v0, Lcom/freeme/camera/ui/ZoomView;

    invoke-direct {v0, p1}, Lcom/freeme/camera/ui/ZoomView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freeme/camera/FilmstripView;->mZoomView:Lcom/freeme/camera/ui/ZoomView;

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mZoomView:Lcom/freeme/camera/ui/ZoomView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/freeme/camera/ui/ZoomView;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mZoomView:Lcom/freeme/camera/ui/ZoomView;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/FilmstripView;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/freeme/camera/FilmstripView$MyGestureReceiver;-><init>(Lcom/freeme/camera/FilmstripView;Lcom/freeme/camera/FilmstripView$1;)V

    iput-object v0, p0, Lcom/freeme/camera/FilmstripView;->mGestureListener:Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    new-instance v0, Lcom/freeme/camera/ui/FilmstripGestureRecognizer;

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView;->mGestureListener:Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    invoke-direct {v0, p1, v2}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer;-><init>(Landroid/content/Context;Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;)V

    iput-object v0, p0, Lcom/freeme/camera/FilmstripView;->mGestureRecognizer:Lcom/freeme/camera/ui/FilmstripGestureRecognizer;

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070119

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/freeme/camera/FilmstripView;->mSlop:I

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x43700000    # 240.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/freeme/camera/FilmstripView;->mOverScaleFactor:F

    iget p1, p0, Lcom/freeme/camera/FilmstripView;->mOverScaleFactor:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    iput v1, p0, Lcom/freeme/camera/FilmstripView;->mOverScaleFactor:F

    :cond_0
    new-instance p1, Lcom/freeme/camera/FilmstripView$1;

    invoke-direct {p1, p0}, Lcom/freeme/camera/FilmstripView$1;-><init>(Lcom/freeme/camera/FilmstripView;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/FilmstripView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private isCameraPreview()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/freeme/camera/FilmstripView;->isViewTypeSticky(Lcom/freeme/camera/FilmstripView$ViewItem;)Z

    move-result v0

    return v0
.end method

.method private isCurrentItemCentered()Z
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result v0

    iget v2, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isDataAtCenter(I)Z
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v0

    if-ne v0, p1, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->isCurrentItemCentered()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v3
.end method

.method private isViewTypeSticky(Lcom/freeme/camera/FilmstripView$ViewItem;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/FilmstripView;->mDataAdapter:Lcom/freeme/camera/filmstrip/DataAdapter;

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result p1

    invoke-interface {v1, p1}, Lcom/freeme/camera/filmstrip/DataAdapter;->getImageData(I)Lcom/freeme/camera/filmstrip/ImageData;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/filmstrip/ImageData;->getViewType()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method private layoutViewItems(Z)V
    .locals 12

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_d

    :cond_0
    const/4 v0, 0x2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v2, p1, v1

    iget v3, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$ViewItem;->getMeasuredWidth()I

    move-result p1

    div-int/2addr p1, v0

    sub-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lcom/freeme/camera/FilmstripView$ViewItem;->setLeftPosition(I)V

    :cond_1
    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->inZoomView()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView;->mViewAnimInterpolator:Landroid/animation/TimeInterpolator;

    iget v2, p0, Lcom/freeme/camera/FilmstripView;->mScale:F

    const v3, 0x3f333333    # 0.7f

    sub-float/2addr v2, v3

    const v3, 0x3e99999a    # 0.3f

    div-float/2addr v2, v3

    invoke-interface {p1, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/freeme/camera/FilmstripView;->mViewGapInPixel:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ltz v4, :cond_4

    iget-object v5, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v6, v5, v4

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v4, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/freeme/camera/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v5

    invoke-virtual {v6}, Lcom/freeme/camera/FilmstripView$ViewItem;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v5, v7

    iget v7, p0, Lcom/freeme/camera/FilmstripView;->mViewGapInPixel:I

    sub-int/2addr v5, v7

    invoke-virtual {v6, v5}, Lcom/freeme/camera/FilmstripView$ViewItem;->setLeftPosition(I)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    move v4, v0

    :goto_2
    const/4 v5, 0x3

    if-ge v4, v5, :cond_6

    iget-object v6, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v7, v6, v4

    if-nez v7, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v4, -0x1

    aget-object v5, v6, v5

    invoke-virtual {v5}, Lcom/freeme/camera/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v6

    invoke-virtual {v5}, Lcom/freeme/camera/FilmstripView$ViewItem;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v6, v5

    iget v5, p0, Lcom/freeme/camera/FilmstripView;->mViewGapInPixel:I

    add-int/2addr v6, v5

    invoke-virtual {v7, v6}, Lcom/freeme/camera/FilmstripView$ViewItem;->setLeftPosition(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    iget-object v4, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v4

    if-ne v4, v1, :cond_7

    iget-object v4, p0, Lcom/freeme/camera/FilmstripView;->mDataAdapter:Lcom/freeme/camera/filmstrip/DataAdapter;

    invoke-interface {v4, v3}, Lcom/freeme/camera/filmstrip/DataAdapter;->getImageData(I)Lcom/freeme/camera/filmstrip/ImageData;

    move-result-object v4

    invoke-interface {v4}, Lcom/freeme/camera/filmstrip/ImageData;->getViewType()I

    move-result v4

    if-ne v4, v1, :cond_7

    move v4, v1

    goto :goto_4

    :cond_7
    move v4, v3

    :goto_4
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v4, v4, v1

    iget-object v8, p0, Lcom/freeme/camera/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    iget v9, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    iget v10, p0, Lcom/freeme/camera/FilmstripView;->mScale:F

    invoke-virtual {v4, v8, v9, v10}, Lcom/freeme/camera/FilmstripView$ViewItem;->layoutWithTranslationX(Landroid/graphics/Rect;IF)V

    invoke-virtual {v4, v6}, Lcom/freeme/camera/FilmstripView$ViewItem;->setTranslationX(F)V

    invoke-virtual {v4, v7}, Lcom/freeme/camera/FilmstripView$ViewItem;->setAlpha(F)V

    goto :goto_5

    :cond_8
    cmpl-float v4, p1, v7

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result v8

    iget v9, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    if-ge v9, v8, :cond_9

    invoke-direct {p0, v1}, Lcom/freeme/camera/FilmstripView;->fadeAndScaleRightViewItem(I)V

    goto :goto_5

    :cond_9
    if-le v9, v8, :cond_a

    invoke-direct {p0, v1, v2, p1}, Lcom/freeme/camera/FilmstripView;->translateLeftViewItem(IIF)V

    goto :goto_5

    :cond_a
    iget-object v8, p0, Lcom/freeme/camera/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    iget v10, p0, Lcom/freeme/camera/FilmstripView;->mScale:F

    invoke-virtual {v4, v8, v9, v10}, Lcom/freeme/camera/FilmstripView$ViewItem;->layoutWithTranslationX(Landroid/graphics/Rect;IF)V

    invoke-virtual {v4, v6}, Lcom/freeme/camera/FilmstripView$ViewItem;->setTranslationX(F)V

    invoke-virtual {v4, v7}, Lcom/freeme/camera/FilmstripView$ViewItem;->setAlpha(F)V

    goto :goto_5

    :cond_b
    iget-object v4, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/freeme/camera/FilmstripView$ViewItem;->getTranslationX()F

    move-result v8

    mul-float/2addr v8, p1

    invoke-virtual {v4, v8}, Lcom/freeme/camera/FilmstripView$ViewItem;->setTranslationX(F)V

    iget-object v8, p0, Lcom/freeme/camera/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    iget v9, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    iget v10, p0, Lcom/freeme/camera/FilmstripView;->mScale:F

    invoke-virtual {v4, v8, v9, v10}, Lcom/freeme/camera/FilmstripView$ViewItem;->layoutWithTranslationX(Landroid/graphics/Rect;IF)V

    iget-object v8, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v8, v8, v3

    if-nez v8, :cond_c

    invoke-virtual {v4, v7}, Lcom/freeme/camera/FilmstripView$ViewItem;->setAlpha(F)V

    goto :goto_5

    :cond_c
    invoke-virtual {v4}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result v8

    iget-object v9, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result v9

    iget v10, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    int-to-float v10, v10

    int-to-float v11, v9

    sub-float/2addr v10, v11

    sub-int/2addr v8, v9

    int-to-float v8, v8

    div-float/2addr v10, v8

    sub-float v8, v7, v10

    sub-float v9, v7, p1

    mul-float/2addr v8, v9

    add-float/2addr v8, v10

    invoke-virtual {v4, v8}, Lcom/freeme/camera/FilmstripView$ViewItem;->setAlpha(F)V

    :goto_5
    move v4, v3

    :goto_6
    if-ltz v4, :cond_e

    iget-object v8, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v8, v8, v4

    if-nez v8, :cond_d

    goto :goto_7

    :cond_d
    invoke-direct {p0, v4, v2, p1}, Lcom/freeme/camera/FilmstripView;->translateLeftViewItem(IIF)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    :cond_e
    :goto_7
    move v2, v0

    :goto_8
    if-ge v2, v5, :cond_16

    iget-object v4, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v4, v4, v2

    if-nez v4, :cond_f

    goto :goto_c

    :cond_f
    iget-object v8, p0, Lcom/freeme/camera/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    iget v9, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    iget v10, p0, Lcom/freeme/camera/FilmstripView;->mScale:F

    invoke-virtual {v4, v8, v9, v10}, Lcom/freeme/camera/FilmstripView$ViewItem;->layoutWithTranslationX(Landroid/graphics/Rect;IF)V

    invoke-virtual {v4}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v8

    if-ne v8, v1, :cond_10

    invoke-direct {p0, v4}, Lcom/freeme/camera/FilmstripView;->isViewTypeSticky(Lcom/freeme/camera/FilmstripView$ViewItem;)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {v4, v7}, Lcom/freeme/camera/FilmstripView$ViewItem;->setAlpha(F)V

    goto :goto_b

    :cond_10
    cmpl-float v8, p1, v7

    if-nez v8, :cond_11

    invoke-direct {p0, v2}, Lcom/freeme/camera/FilmstripView;->fadeAndScaleRightViewItem(I)V

    goto :goto_b

    :cond_11
    invoke-virtual {v4}, Lcom/freeme/camera/FilmstripView$ViewItem;->getVisibility()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_12

    move v8, v1

    goto :goto_9

    :cond_12
    move v8, v3

    :goto_9
    if-ne v2, v0, :cond_13

    sub-float v9, v7, p1

    invoke-virtual {v4, v9}, Lcom/freeme/camera/FilmstripView$ViewItem;->setAlpha(F)V

    goto :goto_a

    :cond_13
    cmpl-float v9, p1, v6

    if-nez v9, :cond_14

    invoke-virtual {v4, v7}, Lcom/freeme/camera/FilmstripView$ViewItem;->setAlpha(F)V

    goto :goto_a

    :cond_14
    move v8, v3

    :goto_a
    if-eqz v8, :cond_15

    invoke-virtual {v4, v3}, Lcom/freeme/camera/FilmstripView$ViewItem;->setVisibility(I)V

    :cond_15
    iget-object v8, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Lcom/freeme/camera/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v8

    invoke-virtual {v4}, Lcom/freeme/camera/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, p1

    invoke-virtual {v4, v8}, Lcom/freeme/camera/FilmstripView$ViewItem;->setTranslationX(F)V

    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_16
    :goto_c
    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->stepIfNeeded()V

    return-void

    :cond_17
    :goto_d
    return-void
.end method

.method private measureViewItem(Lcom/freeme/camera/FilmstripView$ViewItem;II)V
    .locals 3

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView;->mDataAdapter:Lcom/freeme/camera/filmstrip/DataAdapter;

    invoke-interface {v1, v0}, Lcom/freeme/camera/filmstrip/DataAdapter;->getImageData(I)Lcom/freeme/camera/filmstrip/ImageData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/freeme/camera/filmstrip/ImageData;->getWidth()I

    move-result v1

    invoke-interface {v0}, Lcom/freeme/camera/filmstrip/ImageData;->getHeight()I

    move-result v2

    invoke-interface {v0}, Lcom/freeme/camera/filmstrip/ImageData;->getRotation()I

    move-result v0

    invoke-static {v1, v2, v0, p2, p3}, Lcom/freeme/camera/common/utils/CameraUtil;->resizeToFill(IIIII)Landroid/graphics/Point;

    move-result-object p2

    iget p3, p2, Landroid/graphics/Point;->x:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, p3, p2}, Lcom/freeme/camera/FilmstripView$ViewItem;->measure(II)V

    return-void
.end method

.method private onEnterFilmstrip()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mListener:Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->getCurrentId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;->onEnterFilmstrip(I)V

    :cond_0
    return-void
.end method

.method private onEnterFullScreen()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/FilmstripView;->mFullScreenUIHidden:Z

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mListener:Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->getCurrentId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;->onEnterFullScreenUiShown(I)V

    :cond_0
    return-void
.end method

.method private onEnterFullScreenUiHidden()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/FilmstripView;->mFullScreenUIHidden:Z

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mListener:Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->getCurrentId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;->onEnterFullScreenUiHidden(I)V

    :cond_0
    return-void
.end method

.method private onEnterZoomView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mListener:Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->getCurrentId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;->onEnterZoomView(I)V

    :cond_0
    return-void
.end method

.method private onLeaveFilmstrip()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mListener:Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->getCurrentId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;->onLeaveFilmstrip(I)V

    :cond_0
    return-void
.end method

.method private onLeaveFullScreen()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mListener:Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->getCurrentId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;->onLeaveFullScreenUiShown(I)V

    :cond_0
    return-void
.end method

.method private onLeaveFullScreenUiHidden()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/FilmstripView;->mFullScreenUIHidden:Z

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mListener:Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->getCurrentId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;->onLeaveFullScreenUiHidden(I)V

    :cond_0
    return-void
.end method

.method private onLeaveZoomView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mController:Lcom/freeme/camera/FilmstripView$MyController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/freeme/camera/FilmstripView$MyController;->access$1000(Lcom/freeme/camera/FilmstripView$MyController;Z)V

    return-void
.end method

.method private promoteData(II)V
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView;->mListener:Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;->onFocusedDataPromoted(I)V

    :cond_0
    return-void
.end method

.method private recycleView(Landroid/view/View;I)V
    .locals 2

    const p2, 0x7f09011f

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->recycledViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView;->recycledViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private reload()V
    .locals 7

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mController:Lcom/freeme/camera/FilmstripView$MyController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/FilmstripView$MyController;->stopScrolling(Z)Z

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mController:Lcom/freeme/camera/FilmstripView$MyController;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView$MyController;->access$1700(Lcom/freeme/camera/FilmstripView$MyController;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/FilmstripView;->mDataIdOnUserScrolling:I

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v3, v2, v1

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    move v3, v0

    :goto_1
    iget-object v5, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    array-length v6, v5

    if-ge v3, v6, :cond_2

    aget-object v6, v5, v3

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    aget-object v5, v5, v3

    invoke-virtual {v5, v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->removeViewFromHierarchy(Z)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    invoke-static {v5, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView;->mDataAdapter:Lcom/freeme/camera/filmstrip/DataAdapter;

    invoke-interface {v3}, Lcom/freeme/camera/filmstrip/DataAdapter;->getTotalNumber()I

    move-result v3

    if-nez v3, :cond_3

    return-void

    :cond_3
    iget-object v3, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    invoke-direct {p0, v0}, Lcom/freeme/camera/FilmstripView;->buildItemFromData(I)Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v5

    aput-object v5, v3, v1

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v5, v3, v1

    if-nez v5, :cond_4

    return-void

    :cond_4
    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->setLeftPosition(I)V

    const/4 v0, 0x2

    :goto_3
    const/4 v3, 0x3

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    add-int/lit8 v5, v0, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v5

    add-int/2addr v5, v1

    invoke-direct {p0, v5}, Lcom/freeme/camera/FilmstripView;->buildItemFromData(I)Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v5

    aput-object v5, v3, v0

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v3, v3, v0

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    iput v4, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/freeme/camera/FilmstripView;->mScale:F

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->adjustChildZOrder()V

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView;->invalidate()V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mListener:Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;->onDataReloaded()V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mListener:Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;->onDataFocusChanged(II)V

    :cond_7
    return-void
.end method

.method private removeItem(I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    array-length v1, v0

    if-ge p1, v1, :cond_2

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/FilmstripView;->mDataAdapter:Lcom/freeme/camera/filmstrip/DataAdapter;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/freeme/camera/filmstrip/DataAdapter;->getImageData(I)Lcom/freeme/camera/filmstrip/ImageData;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "FilmstripView"

    const-string v0, "trying to remove a null item"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/FilmstripView$ViewItem;->removeViewFromHierarchy(Z)V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private resetZoomView()V
    .locals 3

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->inZoomView()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/freeme/camera/FilmstripView;->mScale:F

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView;->mController:Lcom/freeme/camera/FilmstripView$MyController;

    invoke-static {v2}, Lcom/freeme/camera/FilmstripView$MyController;->access$700(Lcom/freeme/camera/FilmstripView$MyController;)V

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView;->mController:Lcom/freeme/camera/FilmstripView$MyController;

    invoke-static {v2}, Lcom/freeme/camera/FilmstripView$MyController;->access$800(Lcom/freeme/camera/FilmstripView$MyController;)V

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->resetTransform()V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mController:Lcom/freeme/camera/FilmstripView$MyController;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView$MyController;->access$900(Lcom/freeme/camera/FilmstripView$MyController;)V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mZoomView:Lcom/freeme/camera/ui/ZoomView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/freeme/camera/ui/ZoomView;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mController:Lcom/freeme/camera/FilmstripView$MyController;

    invoke-static {v0, v1}, Lcom/freeme/camera/FilmstripView$MyController;->access$1000(Lcom/freeme/camera/FilmstripView$MyController;Z)V

    return-void
.end method

.method private setDataAdapter(Lcom/freeme/camera/filmstrip/DataAdapter;)V
    .locals 2

    iput-object p1, p0, Lcom/freeme/camera/FilmstripView;->mDataAdapter:Lcom/freeme/camera/filmstrip/DataAdapter;

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView;->mDataAdapter:Lcom/freeme/camera/filmstrip/DataAdapter;

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView;->getHeight()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/filmstrip/DataAdapter;->suggestViewSizeBound(II)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView;->mDataAdapter:Lcom/freeme/camera/filmstrip/DataAdapter;

    new-instance v0, Lcom/freeme/camera/FilmstripView$3;

    invoke-direct {v0, p0}, Lcom/freeme/camera/FilmstripView$3;-><init>(Lcom/freeme/camera/FilmstripView;)V

    invoke-interface {p1, v0}, Lcom/freeme/camera/filmstrip/DataAdapter;->setListener(Lcom/freeme/camera/filmstrip/DataAdapter$Listener;)V

    return-void
.end method

.method private setListener(Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/FilmstripView;->mListener:Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;

    return-void
.end method

.method private setMaxElevation(Landroid/view/View;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method private setViewGap(I)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/FilmstripView;->mViewGapInPixel:I

    return-void
.end method

.method private slideViewBack(Lcom/freeme/camera/FilmstripView$ViewItem;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewAnimInterpolator:Landroid/animation/TimeInterpolator;

    const/4 v1, 0x0

    const-wide/16 v2, 0x190

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->animateTranslationX(FJLandroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewAnimInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->animateTranslationY(FJLandroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewAnimInterpolator:Landroid/animation/TimeInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->animateAlpha(FJLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private snapInCenter()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView;->mController:Lcom/freeme/camera/FilmstripView$MyController;

    invoke-virtual {v2}, Lcom/freeme/camera/FilmstripView$MyController;->isScrolling()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/freeme/camera/FilmstripView;->mIsUserScrolling:Z

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->isCurrentItemCentered()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x44160000    # 600.0f

    iget v3, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    float-to-int v2, v3

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView;->mController:Lcom/freeme/camera/FilmstripView$MyController;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Lcom/freeme/camera/FilmstripView$MyController;->scrollToPosition(IIZ)V

    invoke-direct {p0, v0}, Lcom/freeme/camera/FilmstripView;->isViewTypeSticky(Lcom/freeme/camera/FilmstripView$ViewItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mController:Lcom/freeme/camera/FilmstripView$MyController;

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$MyController;->isScaling()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/freeme/camera/FilmstripView;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mController:Lcom/freeme/camera/FilmstripView$MyController;

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$MyController;->goToFullScreen()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private stepIfNeeded()V
    .locals 9

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->inFilmstrip()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->inFullScreen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    invoke-direct {p0, v0}, Lcom/freeme/camera/FilmstripView;->findTheNearestView(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v3, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v4, v3, v2

    if-nez v4, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v3

    :goto_0
    sub-int/2addr v0, v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-lez v0, :cond_7

    const/4 v1, 0x0

    move v6, v1

    :goto_1
    if-ge v6, v0, :cond_3

    invoke-direct {p0, v6}, Lcom/freeme/camera/FilmstripView;->removeItem(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int v6, v1, v0

    const/4 v7, 0x3

    if-ge v6, v7, :cond_4

    iget-object v7, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v6, v7, v6

    aput-object v6, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    rsub-int/lit8 v0, v0, 0x3

    :goto_3
    if-ge v0, v7, :cond_6

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aput-object v4, v1, v0

    add-int/lit8 v6, v0, -0x1

    aget-object v8, v1, v6

    if-eqz v8, :cond_5

    aget-object v6, v1, v6

    invoke-virtual {v6}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v6

    add-int/2addr v6, v2

    invoke-direct {p0, v6}, Lcom/freeme/camera/FilmstripView;->buildItemFromData(I)Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v6

    aput-object v6, v1, v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->adjustChildZOrder()V

    goto :goto_7

    :cond_7
    move v6, v5

    :goto_4
    add-int/lit8 v7, v0, 0x3

    if-lt v6, v7, :cond_8

    invoke-direct {p0, v6}, Lcom/freeme/camera/FilmstripView;->removeItem(I)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_8
    move v6, v5

    :goto_5
    add-int v7, v6, v0

    if-ltz v7, :cond_9

    iget-object v8, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v7, v8, v7

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :cond_9
    sub-int/2addr v1, v0

    :goto_6
    if-ltz v1, :cond_b

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aput-object v4, v0, v1

    add-int/lit8 v6, v1, 0x1

    aget-object v7, v0, v6

    if-eqz v7, :cond_a

    aget-object v6, v0, v6

    invoke-virtual {v6}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-direct {p0, v6}, Lcom/freeme/camera/FilmstripView;->buildItemFromData(I)Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v6

    aput-object v6, v0, v1

    :cond_a
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_b
    :goto_7
    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView;->invalidate()V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mListener:Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;->onDataFocusChanged(II)V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v0

    sub-int/2addr v0, v5

    add-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView;->mDataAdapter:Lcom/freeme/camera/filmstrip/DataAdapter;

    invoke-interface {v2}, Lcom/freeme/camera/filmstrip/DataAdapter;->getTotalNumber()I

    move-result v2

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView;->mListener:Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;

    invoke-interface {v3, v0, v1, v2}, Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;->onScroll(III)V

    :cond_c
    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView;->zoomAtIndexChanged()V

    return-void

    :cond_d
    :goto_8
    return-void
.end method

.method private translateLeftViewItem(IIF)V
    .locals 4

    if-ltz p1, :cond_4

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    aget-object v0, v0, v2

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result p1

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result v0

    sub-int p2, v0, p2

    sub-int/2addr p2, p1

    int-to-float p2, p2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iget-object p3, p0, Lcom/freeme/camera/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    iget v2, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    iget v3, p0, Lcom/freeme/camera/FilmstripView;->mScale:F

    invoke-virtual {v1, p3, v2, v3}, Lcom/freeme/camera/FilmstripView$ViewItem;->layoutWithTranslationX(Landroid/graphics/Rect;IF)V

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {v1, p3}, Lcom/freeme/camera/FilmstripView$ViewItem;->setAlpha(F)V

    const/4 p3, 0x0

    invoke-virtual {v1, p3}, Lcom/freeme/camera/FilmstripView$ViewItem;->setVisibility(I)V

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->inFullScreen()Z

    move-result p3

    if-eqz p3, :cond_2

    iget p3, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    sub-int/2addr p3, p1

    mul-int/2addr p2, p3

    sub-int/2addr v0, p1

    div-int/2addr p2, v0

    int-to-float p1, p2

    invoke-virtual {v1, p1}, Lcom/freeme/camera/FilmstripView$ViewItem;->setTranslationX(F)V

    goto :goto_0

    :cond_2
    int-to-float p1, p2

    invoke-virtual {v1, p1}, Lcom/freeme/camera/FilmstripView$ViewItem;->setTranslationX(F)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p2, "FilmstripView"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid view item (curr or next == null). curr = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_2
    const-string p1, "FilmstripView"

    const-string p2, "currItem id out of bound."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private update(Lcom/freeme/camera/filmstrip/DataAdapter$UpdateReporter;)V
    .locals 8

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->reload()V

    return-void

    :cond_0
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/freeme/camera/filmstrip/DataAdapter$UpdateReporter;->isDataRemoved(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->reload()V

    return-void

    :cond_1
    invoke-interface {p1, v2}, Lcom/freeme/camera/filmstrip/DataAdapter$UpdateReporter;->isDataUpdated(I)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_2

    invoke-direct {p0, v1}, Lcom/freeme/camera/FilmstripView;->updateViewItem(I)V

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView;->mDataAdapter:Lcom/freeme/camera/filmstrip/DataAdapter;

    invoke-interface {v3, v2}, Lcom/freeme/camera/filmstrip/DataAdapter;->getImageData(I)Lcom/freeme/camera/filmstrip/ImageData;

    move-result-object v2

    iget-boolean v3, p0, Lcom/freeme/camera/FilmstripView;->mIsUserScrolling:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView;->mController:Lcom/freeme/camera/FilmstripView$MyController;

    invoke-virtual {v3}, Lcom/freeme/camera/FilmstripView$MyController;->isScrolling()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Lcom/freeme/camera/filmstrip/ImageData;->getWidth()I

    move-result v3

    invoke-interface {v2}, Lcom/freeme/camera/filmstrip/ImageData;->getHeight()I

    move-result v5

    invoke-interface {v2}, Lcom/freeme/camera/filmstrip/ImageData;->getRotation()I

    move-result v2

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView;->getMeasuredHeight()I

    move-result v7

    invoke-static {v3, v5, v2, v6, v7}, Lcom/freeme/camera/common/utils/CameraUtil;->resizeToFill(IIIII)Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v0

    iget v2, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v2, v4

    add-int/2addr v0, v2

    iput v0, p0, Lcom/freeme/camera/FilmstripView;->mCenterX:I

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ltz v0, :cond_6

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v3, v2, v0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/freeme/camera/filmstrip/DataAdapter$UpdateReporter;->isDataRemoved(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {p1, v2}, Lcom/freeme/camera/filmstrip/DataAdapter$UpdateReporter;->isDataUpdated(I)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    invoke-direct {p0, v0}, Lcom/freeme/camera/FilmstripView;->updateViewItem(I)V

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v0, 0x1

    aget-object v3, v2, v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-direct {p0, v3}, Lcom/freeme/camera/FilmstripView;->buildItemFromData(I)Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v3

    aput-object v3, v2, v0

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    :goto_2
    const/4 v0, 0x3

    if-ge v4, v0, :cond_a

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v2, v0, v4

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/filmstrip/DataAdapter$UpdateReporter;->isDataRemoved(I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {p1, v0}, Lcom/freeme/camera/filmstrip/DataAdapter$UpdateReporter;->isDataUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    invoke-direct {p0, v4}, Lcom/freeme/camera/FilmstripView;->updateViewItem(I)V

    goto :goto_3

    :cond_8
    add-int/lit8 v2, v4, -0x1

    aget-object v2, v0, v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/freeme/camera/FilmstripView;->buildItemFromData(I)Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v2

    aput-object v2, v0, v4

    :cond_9
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_a
    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->adjustChildZOrder()V

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView;->requestLayout()V

    return-void
.end method

.method private updateInsertion(I)V
    .locals 9

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripView;->findItemByDataID(I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    iget-object v4, p0, Lcom/freeme/camera/FilmstripView;->mDataAdapter:Lcom/freeme/camera/filmstrip/DataAdapter;

    invoke-interface {v4}, Lcom/freeme/camera/filmstrip/DataAdapter;->getTotalNumber()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne p1, v4, :cond_0

    add-int/lit8 v4, p1, -0x1

    invoke-direct {p0, v4}, Lcom/freeme/camera/FilmstripView;->findItemByDataID(I)I

    move-result v4

    if-ltz v4, :cond_0

    if-ge v4, v1, :cond_0

    add-int/lit8 v0, v4, 0x1

    :cond_0
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x3

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v7, v6, v5

    if-eqz v7, :cond_2

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v6

    if-ge v6, p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v7, v6, v5

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v7, v6}, Lcom/freeme/camera/FilmstripView$ViewItem;->setId(I)V

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_4

    return-void

    :cond_4
    iget-object v2, p0, Lcom/freeme/camera/FilmstripView;->mDataAdapter:Lcom/freeme/camera/filmstrip/DataAdapter;

    invoke-interface {v2, p1}, Lcom/freeme/camera/filmstrip/DataAdapter;->getImageData(I)Lcom/freeme/camera/filmstrip/ImageData;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/filmstrip/ImageData;->getWidth()I

    move-result v5

    invoke-interface {v2}, Lcom/freeme/camera/filmstrip/ImageData;->getHeight()I

    move-result v6

    invoke-interface {v2}, Lcom/freeme/camera/filmstrip/ImageData;->getRotation()I

    move-result v2

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView;->getMeasuredHeight()I

    move-result v8

    invoke-static {v5, v6, v2, v7, v8}, Lcom/freeme/camera/common/utils/CameraUtil;->resizeToFill(IIIII)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/freeme/camera/FilmstripView;->mViewGapInPixel:I

    add-int/2addr v2, v5

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripView;->buildItemFromData(I)Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p1, "FilmstripView"

    const-string v0, "unable to build inserted item from data"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    if-lt v0, v3, :cond_8

    if-ne v0, v3, :cond_6

    iget-object v4, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lcom/freeme/camera/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/freeme/camera/FilmstripView$ViewItem;->setLeftPosition(I)V

    :cond_6
    invoke-direct {p0, v1}, Lcom/freeme/camera/FilmstripView;->removeItem(I)V

    :goto_2
    if-le v1, v0, :cond_b

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    add-int/lit8 v4, v1, -0x1

    aget-object v4, v3, v4

    aput-object v4, v3, v1

    aget-object v4, v3, v1

    if-eqz v4, :cond_7

    aget-object v3, v3, v1

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/freeme/camera/FilmstripView$ViewItem;->setTranslationX(F)V

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/freeme/camera/FilmstripView;->slideViewBack(Lcom/freeme/camera/FilmstripView$ViewItem;)V

    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_9

    return-void

    :cond_9
    invoke-direct {p0, v4}, Lcom/freeme/camera/FilmstripView;->removeItem(I)V

    :goto_3
    if-gt v3, v0, :cond_b

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v4, v1, v3

    if-eqz v4, :cond_a

    aget-object v1, v1, v3

    int-to-float v4, v2

    invoke-virtual {v1, v4}, Lcom/freeme/camera/FilmstripView$ViewItem;->setTranslationX(F)V

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v1, v1, v3

    invoke-direct {p0, v1}, Lcom/freeme/camera/FilmstripView;->slideViewBack(Lcom/freeme/camera/FilmstripView$ViewItem;)V

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    add-int/lit8 v4, v3, -0x1

    aget-object v5, v1, v3

    aput-object v5, v1, v4

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_b
    iget-object v1, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aput-object p1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->setTranslationY(F)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripView;->slideViewBack(Lcom/freeme/camera/FilmstripView$ViewItem;)V

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->adjustChildZOrder()V

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView;->invalidate()V

    return-void
.end method

.method private updateViewItem(I)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const-string p1, "FilmstripView"

    const-string v0, "trying to update an null item"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/FilmstripView$ViewItem;->removeViewFromHierarchy(Z)V

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/freeme/camera/FilmstripView;->buildItemFromData(I)Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p1, "FilmstripView"

    const-string v1, "new item is null"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->addViewToHierarchy()V

    return-void

    :cond_1
    invoke-virtual {v2, v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->copyAttributes(Lcom/freeme/camera/FilmstripView$ViewItem;)V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aput-object v2, v0, p1

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView;->mZoomView:Lcom/freeme/camera/ui/ZoomView;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/ZoomView;->resetDecoder()V

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->clampCenterX()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView;->mController:Lcom/freeme/camera/FilmstripView$MyController;

    invoke-virtual {p1, v1}, Lcom/freeme/camera/FilmstripView$MyController;->stopScrolling(Z)Z

    :cond_2
    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->adjustChildZOrder()V

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView;->invalidate()V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView;->mListener:Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;->onDataUpdated(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getController()Lcom/freeme/camera/filmstrip/FilmstripController;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mController:Lcom/freeme/camera/FilmstripView$MyController;

    return-object v0
.end method

.method public getCurrentItemLeft()I
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getDrawAreaLeft()I

    move-result v0

    return v0
.end method

.method getGestureListener()Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mGestureListener:Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/freeme/camera/FilmstripView;->layoutViewItems(Z)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mController:Lcom/freeme/camera/FilmstripView$MyController;

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$MyController;->isScrolling()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/freeme/camera/FilmstripView;->mCheckToIntercept:Z

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/FilmstripView;->mDown:Landroid/view/MotionEvent;

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    aget-object p1, p1, v1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mDataAdapter:Lcom/freeme/camera/filmstrip/DataAdapter;

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/freeme/camera/filmstrip/DataAdapter;->canSwipeInFullScreen(I)Z

    move-result p1

    if-nez p1, :cond_1

    iput-boolean v2, p0, Lcom/freeme/camera/FilmstripView;->mCheckToIntercept:Z

    :cond_1
    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    iput-boolean v2, p0, Lcom/freeme/camera/FilmstripView;->mCheckToIntercept:Z

    return v2

    :cond_3
    iget-boolean v0, p0, Lcom/freeme/camera/FilmstripView;->mCheckToIntercept:Z

    if-nez v0, :cond_4

    return v2

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1f4

    cmp-long v0, v3, v5

    if-lez v0, :cond_5

    return v2

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/freeme/camera/FilmstripView;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v4, 0x2

    if-ne p1, v4, :cond_6

    iget p1, p0, Lcom/freeme/camera/FilmstripView;->mSlop:I

    mul-int/lit8 p1, p1, -0x1

    if-ge v0, p1, :cond_6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/2addr v0, v4

    if-lt p1, v0, :cond_6

    return v1

    :cond_6
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p4, p2

    iput p4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p3

    iput p5, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView;->mZoomView:Lcom/freeme/camera/ui/ZoomView;

    iget p3, v0, Landroid/graphics/Rect;->left:I

    iget-object p4, p0, Lcom/freeme/camera/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->top:I

    iget-object p5, p0, Lcom/freeme/camera/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mDrawArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, p3, p4, p5, v0}, Lcom/freeme/camera/ui/ZoomView;->layout(IIII)V

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->inZoomView()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->resetZoomView()V

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripView;->layoutViewItems(Z)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    invoke-direct {p0, v5, v0, v1}, Lcom/freeme/camera/FilmstripView;->measureViewItem(Lcom/freeme/camera/FilmstripView$ViewItem;II)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView;->clampCenterX()Z

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mZoomView:Lcom/freeme/camera/ui/ZoomView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/freeme/camera/ui/ZoomView;->measure(II)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mGestureRecognizer:Lcom/freeme/camera/ui/FilmstripGestureRecognizer;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public zoomAtIndexChanged()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView;->mViewItem:[Lcom/freeme/camera/FilmstripView$ViewItem;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    return-void

    :cond_0
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView;->mListener:Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;

    iget v2, p0, Lcom/freeme/camera/FilmstripView;->mScale:F

    invoke-interface {v1, v0, v2}, Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;->onZoomAtIndexChanged(IF)V

    return-void
.end method
