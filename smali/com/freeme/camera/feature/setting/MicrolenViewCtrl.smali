.class public Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;
.super Ljava/lang/Object;
.source "MicrolenViewCtrl.java"


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mMicrolenView:Lcom/freeme/camera/common/widget/RotateLayout;

.field private mRootViewGroup:Landroid/view/ViewGroup;

.field private mTextView:Landroid/widget/TextView;

.field private toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cancelToast()V
    .locals 0

    invoke-static {}, Lcom/freeme/camera/common/OnScreenToast;->cancelToast()V

    return-void
.end method


# virtual methods
.method public hideView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->mMicrolenView:Lcom/freeme/camera/common/widget/RotateLayout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->cancelToast()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->mRootViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->mMicrolenView:Lcom/freeme/camera/common/widget/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->mMicrolenView:Lcom/freeme/camera/common/widget/RotateLayout;

    :cond_0
    return-void
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[init]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-void
.end method

.method public showToast()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f00fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/freeme/camera/common/OnScreenToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    invoke-static {}, Lcom/freeme/camera/common/OnScreenToast;->getToast()Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->toast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    const/16 v1, 0x11

    const/4 v2, 0x0

    const/16 v3, -0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public showView()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->mMicrolenView:Lcom/freeme/camera/common/widget/RotateLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getModeRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->mRootViewGroup:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b006c

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->mRootViewGroup:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/widget/RotateLayout;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->mMicrolenView:Lcom/freeme/camera/common/widget/RotateLayout;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->mMicrolenView:Lcom/freeme/camera/common/widget/RotateLayout;

    const v1, 0x7f090124

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0f00fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->mRootViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->mMicrolenView:Lcom/freeme/camera/common/widget/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
