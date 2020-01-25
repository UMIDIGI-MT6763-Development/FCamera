.class public Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;
.super Ljava/lang/Object;
.source "ZoomViewCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl$MainHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final ZOOM_TEXT_MARGION_HORIZON:I = 0x2

.field private static final ZOOM_TEXT_MARGION_VERTICAL:I = 0x28

.field private static final ZOOM_TEXT_MARGION_VERTICAL_REVERSE:I = 0x78

.field private static final ZOOM_TEXT_MARGION_VERTICAL_TABLET:I = 0x64

.field private static final ZOOM_VIEW_HIDE:I = 0x5

.field private static final ZOOM_VIEW_HIDE_DELAY_TIME:I = 0xbb8

.field private static final ZOOM_VIEW_INIT:I = 0x2

.field private static final ZOOM_VIEW_ORIENTATION_CHANGED:I = 0x4

.field private static final ZOOM_VIEW_RESET:I = 0x1

.field private static final ZOOM_VIEW_SHOW:I = 0x0

.field private static final ZOOM_VIEW_UNINIT:I = 0x3


# instance fields
.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mMainHandler:Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl$MainHandler;

.field private mRootViewGroup:Landroid/view/ViewGroup;

.field private mTextView:Landroid/widget/TextView;

.field private mZoomIndicatorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

.field private mZoomView:Lcom/freeme/camera/common/widget/RotateLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->show(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->hide()V

    return-void
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->reset()V

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->initView()V

    return-void
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->unInitView()V

    return-void
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->updateOrientation(I)V

    return-void
.end method

.method private dpToPixel(I)I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private hide()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mZoomView:Lcom/freeme/camera/common/widget/RotateLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mZoomIndicatorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->hideScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V

    return-void
.end method

.method private initView()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getModeRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mRootViewGroup:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mRootViewGroup:Landroid/view/ViewGroup;

    const v2, 0x7f0b00a1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09020a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/widget/RotateLayout;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mZoomView:Lcom/freeme/camera/common/widget/RotateLayout;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mZoomView:Lcom/freeme/camera/common/widget/RotateLayout;

    const v1, 0x7f090209

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mRootViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mZoomView:Lcom/freeme/camera/common/widget/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-direct {v0}, Lcom/freeme/camera/common/IAppUi$HintInfo;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mZoomIndicatorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mZoomIndicatorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    sget-object v1, Lcom/freeme/camera/common/IAppUi$HintType;->TYPE_ALWAYS_BOTTOM:Lcom/freeme/camera/common/IAppUi$HintType;

    iput-object v1, v0, Lcom/freeme/camera/common/IAppUi$HintInfo;->mType:Lcom/freeme/camera/common/IAppUi$HintType;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mZoomIndicatorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    const/16 v1, 0xbb8

    iput v1, v0, Lcom/freeme/camera/common/IAppUi$HintInfo;->mDelayTime:I

    return-void
.end method

.method private reset()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mZoomView:Lcom/freeme/camera/common/widget/RotateLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mZoomIndicatorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->hideScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    return-void
.end method

.method private show(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mZoomView:Lcom/freeme/camera/common/widget/RotateLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mZoomIndicatorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iput-object p1, v0, Lcom/freeme/camera/common/IAppUi$HintInfo;->mHintText:Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mZoomIndicatorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->showScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V

    return-void
.end method

.method private unInitView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mRootViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mZoomView:Lcom/freeme/camera/common/widget/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mZoomView:Lcom/freeme/camera/common/widget/RotateLayout;

    return-void
.end method

.method private updateOrientation(I)V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_2

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v2, 0x78

    invoke-direct {p0, v2}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->dpToPixel(I)I

    move-result v2

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->dpToPixel(I)I

    move-result v2

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->dpToPixel(I)I

    move-result v2

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_3
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v2, 0x28

    invoke-direct {p0, v2}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->dpToPixel(I)I

    move-result v2

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mZoomView:Lcom/freeme/camera/common/widget/RotateLayout;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->rotateRotateLayoutChildView(Landroid/app/Activity;Landroid/view/View;IZ)V

    return-void
.end method


# virtual methods
.method public clearInvalidView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl$MainHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl$MainHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl$MainHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1, v1}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    return-void
.end method

.method public hideView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl$MainHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl$MainHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[init]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    new-instance v0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl$MainHandler;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl$MainHandler;-><init>(Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl$MainHandler;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl$MainHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl$MainHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl$MainHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public resetView()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl$MainHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public showView(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl$MainHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unInit()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl$MainHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl$MainHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl$MainHandler;->sendEmptyMessage(I)Z

    return-void
.end method
