.class public Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionViewCtrl;
.super Ljava/lang/Object;
.source "SupDefinitionViewCtrl.java"


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mRootViewGroup:Landroid/view/ViewGroup;

.field private mSupDefinitionView:Lcom/freeme/camera/common/widget/RotateLayout;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionViewCtrl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionViewCtrl;->mRootViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionViewCtrl;->mSupDefinitionView:Lcom/freeme/camera/common/widget/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionViewCtrl;->mSupDefinitionView:Lcom/freeme/camera/common/widget/RotateLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateLayout;->setVisibility(I)V

    return-void
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionViewCtrl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[init]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-void
.end method

.method public showView()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getModeRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionViewCtrl;->mRootViewGroup:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionViewCtrl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionViewCtrl;->mRootViewGroup:Landroid/view/ViewGroup;

    const v2, 0x7f0b0095

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/widget/RotateLayout;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionViewCtrl;->mSupDefinitionView:Lcom/freeme/camera/common/widget/RotateLayout;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionViewCtrl;->mSupDefinitionView:Lcom/freeme/camera/common/widget/RotateLayout;

    const v1, 0x7f0901cb

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionViewCtrl;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionViewCtrl;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0f01ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionViewCtrl;->mRootViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/SupDefinitionViewCtrl;->mSupDefinitionView:Lcom/freeme/camera/common/widget/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
