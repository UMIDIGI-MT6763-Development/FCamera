.class public Lcom/freeme/camera/feature/setting/WideAngleViewCtrl;
.super Ljava/lang/Object;
.source "WideAngleViewCtrl.java"


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mRootViewGroup:Landroid/view/ViewGroup;

.field private mTextView:Landroid/widget/TextView;

.field private mWideAngleView:Lcom/freeme/camera/common/widget/RotateLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/WideAngleViewCtrl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/WideAngleViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/WideAngleViewCtrl;->mWideAngleView:Lcom/freeme/camera/common/widget/RotateLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/WideAngleViewCtrl;->mRootViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/WideAngleViewCtrl;->mWideAngleView:Lcom/freeme/camera/common/widget/RotateLayout;

    :cond_0
    return-void
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/WideAngleViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[init]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/WideAngleViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-void
.end method

.method public showView()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/WideAngleViewCtrl;->mWideAngleView:Lcom/freeme/camera/common/widget/RotateLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/WideAngleViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getModeRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/WideAngleViewCtrl;->mRootViewGroup:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/WideAngleViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00a0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/WideAngleViewCtrl;->mRootViewGroup:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/widget/RotateLayout;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/WideAngleViewCtrl;->mWideAngleView:Lcom/freeme/camera/common/widget/RotateLayout;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/WideAngleViewCtrl;->mWideAngleView:Lcom/freeme/camera/common/widget/RotateLayout;

    const v1, 0x7f090204

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/WideAngleViewCtrl;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/WideAngleViewCtrl;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0f01c9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/WideAngleViewCtrl;->mRootViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/WideAngleViewCtrl;->mWideAngleView:Lcom/freeme/camera/common/widget/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
