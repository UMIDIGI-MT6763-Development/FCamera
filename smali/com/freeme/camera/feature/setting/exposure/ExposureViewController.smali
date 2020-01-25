.class public Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;
.super Ljava/lang/Object;
.source "ExposureViewController.java"


# static fields
.field private static final INVALID_SIZE:I = 0x1

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mExpandView:Landroid/widget/RelativeLayout;

.field private mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

.field private mExposureView:Lcom/freeme/camera/feature/setting/exposure/ExposureView;

.field private mFeatureRootView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/feature/setting/exposure/Exposure;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$1;-><init>(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;Lcom/freeme/camera/feature/setting/exposure/Exposure;Lcom/freeme/camera/common/app/IApp;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)Lcom/freeme/camera/feature/setting/exposure/Exposure;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    return-object p0
.end method

.method static synthetic access$002(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/feature/setting/exposure/Exposure;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    return-object p1
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->mFeatureRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$102(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->mFeatureRootView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->mExpandView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$202(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->mExpandView:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)Lcom/freeme/camera/feature/setting/exposure/ExposureView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->mExposureView:Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;Lcom/freeme/camera/feature/setting/exposure/ExposureView;)Lcom/freeme/camera/feature/setting/exposure/ExposureView;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->mExposureView:Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    return-object p1
.end method


# virtual methods
.method protected initExposureValues([I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$3;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$3;-><init>(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;[I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected needUpdateExposureView()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->mExposureView:Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->mExpandView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->mExposureView:Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onTrackingTouch(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->mExposureView:Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->onTrackingTouch(Z)V

    return-void
.end method

.method protected onVerticalScroll(Landroid/view/MotionEvent;F)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->mExposureView:Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    invoke-virtual {v0, p1, p2}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->onVerticalScroll(Landroid/view/MotionEvent;F)V

    return-void
.end method

.method protected resetExposureView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$2;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$2;-><init>(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setOrientation(I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$4;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$4;-><init>(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setViewEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$5;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController$5;-><init>(Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
