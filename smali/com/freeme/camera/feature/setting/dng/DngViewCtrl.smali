.class public Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;
.super Ljava/lang/Object;
.source "DngViewCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/dng/DngViewCtrl$MainHandler;,
        Lcom/freeme/camera/feature/setting/dng/DngViewCtrl$OnDngSettingViewListener;
    }
.end annotation


# static fields
.field private static final INDICATOR_VIEW_INIT:I = 0x0

.field private static final INDICATOR_VIEW_UNINIT:I = 0x1

.field private static final INDICATOR_VIEW_UPDATE:I = 0x2

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final VIEW_PRIORITY:I = 0x5


# instance fields
.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mAppUi:Lcom/freeme/camera/common/IAppUi;

.field private mDngIndicatorView:Landroid/view/View;

.field private mDngSettingView:Lcom/freeme/camera/feature/setting/dng/DngSettingView;

.field private mMainHandler:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl$MainHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/freeme/camera/feature/setting/dng/DngSettingView;

    invoke-direct {v0}, Lcom/freeme/camera/feature/setting/dng/DngSettingView;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->mDngSettingView:Lcom/freeme/camera/feature/setting/dng/DngSettingView;

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->initDngIndicatorView()V

    return-void
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->unInitDngIndicatorView()V

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->updateDngSettingView()V

    return-void
.end method

.method private initDngIndicatorView()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->mDngIndicatorView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/widget/RotateImageView;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->mDngIndicatorView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->mDngIndicatorView:Landroid/view/View;

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/IAppUi;->addToIndicatorView(Landroid/view/View;I)V

    return-void
.end method

.method private unInitDngIndicatorView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->mDngIndicatorView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/IAppUi;->removeFromIndicatorView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private updateDngSettingView()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->mDngSettingView:Lcom/freeme/camera/feature/setting/dng/DngSettingView;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/dng/DngSettingView;->refreshView()V

    return-void
.end method


# virtual methods
.method public getDngSettingView()Lcom/freeme/camera/feature/setting/dng/DngSettingView;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->mDngSettingView:Lcom/freeme/camera/feature/setting/dng/DngSettingView;

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;)V
    .locals 1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    new-instance v0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl$MainHandler;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl$MainHandler;-><init>(Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl$MainHandler;

    return-void
.end method

.method public setDngSettingViewListener(Lcom/freeme/camera/feature/setting/dng/DngViewCtrl$OnDngSettingViewListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->mDngSettingView:Lcom/freeme/camera/feature/setting/dng/DngSettingView;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/dng/DngSettingView;->setDngViewListener(Lcom/freeme/camera/feature/setting/dng/DngViewCtrl$OnDngSettingViewListener;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->mDngSettingView:Lcom/freeme/camera/feature/setting/dng/DngSettingView;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/dng/DngSettingView;->setEnabled(Z)V

    return-void
.end method

.method public setEntryValue(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->mDngSettingView:Lcom/freeme/camera/feature/setting/dng/DngSettingView;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/dng/DngSettingView;->setEntryValue(Ljava/util/List;)V

    return-void
.end method

.method public setSettingDeviceRequest(Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->mDngSettingView:Lcom/freeme/camera/feature/setting/dng/DngSettingView;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/dng/DngSettingView;->setSettingRequester(Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V

    return-void
.end method

.method public showDngIndicatorView(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl$MainHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl$MainHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl$MainHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public updateDngView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->mMainHandler:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl$MainHandler;->sendEmptyMessage(I)Z

    return-void
.end method
