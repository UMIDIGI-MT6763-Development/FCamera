.class public Lcom/freeme/camera/common/thermal/WarningDialog;
.super Ljava/lang/Object;
.source "WarningDialog.java"


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mDialogButton:Landroid/widget/Button;

.field private mOnOrientationChangeListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

.field private mRoot:Lcom/freeme/camera/common/widget/RotateLayout;

.field private mWarningDialogTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/thermal/WarningDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/thermal/WarningDialog;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/freeme/camera/common/thermal/WarningDialog$4;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/thermal/WarningDialog$4;-><init>(Lcom/freeme/camera/common/thermal/WarningDialog;)V

    iput-object v0, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mOnOrientationChangeListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

    iput-object p1, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/common/thermal/WarningDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/thermal/WarningDialog;->initView()V

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/common/thermal/WarningDialog;)Lcom/freeme/camera/common/widget/RotateLayout;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mRoot:Lcom/freeme/camera/common/widget/RotateLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/common/thermal/WarningDialog;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private initView()V
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mRoot:Lcom/freeme/camera/common/widget/RotateLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "warning_dialog"

    const-string v2, "layout"

    iget-object v3, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "alert_dialog_time"

    const-string v3, "id"

    iget-object v4, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "alert_dialog_button"

    const-string v4, "id"

    iget-object v5, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/widget/RotateLayout;

    iput-object v0, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mRoot:Lcom/freeme/camera/common/widget/RotateLayout;

    iget-object v0, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getModeRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v3, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mRoot:Lcom/freeme/camera/common/widget/RotateLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mRoot:Lcom/freeme/camera/common/widget/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mWarningDialogTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mWarningDialogTime:Landroid/widget/TextView;

    const-string v1, "30"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mRoot:Lcom/freeme/camera/common/widget/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/freeme/camera/common/widget/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mDialogButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mDialogButton:Landroid/widget/Button;

    new-instance v1, Lcom/freeme/camera/common/thermal/WarningDialog$3;

    invoke-direct {v1, p0}, Lcom/freeme/camera/common/thermal/WarningDialog$3;-><init>(Lcom/freeme/camera/common/thermal/WarningDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v1, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mOnOrientationChangeListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/app/IApp;->registerOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/common/thermal/WarningDialog$2;

    invoke-direct {v1, p0}, Lcom/freeme/camera/common/thermal/WarningDialog$2;-><init>(Lcom/freeme/camera/common/thermal/WarningDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isShowing()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mRoot:Lcom/freeme/camera/common/widget/RotateLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/freeme/camera/common/widget/RotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public setCountDownTime(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mWarningDialogTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/common/thermal/WarningDialog$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/common/thermal/WarningDialog$1;-><init>(Lcom/freeme/camera/common/thermal/WarningDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public uninitView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mRoot:Lcom/freeme/camera/common/widget/RotateLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v1, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mOnOrientationChangeListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/app/IApp;->unregisterOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getModeRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/thermal/WarningDialog;->mRoot:Lcom/freeme/camera/common/widget/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
