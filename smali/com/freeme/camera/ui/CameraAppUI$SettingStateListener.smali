.class Lcom/freeme/camera/ui/CameraAppUI$SettingStateListener;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/freeme/camera/ui/SettingFragment$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/CameraAppUI;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$SettingStateListener;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/ui/CameraAppUI$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/CameraAppUI$SettingStateListener;-><init>(Lcom/freeme/camera/ui/CameraAppUI;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$SettingStateListener;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0901ac

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$SettingStateListener;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0901ac

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$SettingStateListener;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/freeme/camera/ui/CameraAppUI;->applyAllUIVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$SettingStateListener;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$SettingStateListener;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$SettingStateListener;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/freeme/camera/ui/CameraAppUI;->setUIVisibility(II)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$SettingStateListener;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/ui/CameraAppUI;->setUIEnabled(IZ)V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$SettingStateListener;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-virtual {v0, v2}, Lcom/freeme/camera/ui/CameraAppUI;->setPluginVisibility(Z)V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$SettingStateListener;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$3800(Lcom/freeme/camera/ui/CameraAppUI;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$SettingStateListener;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/CameraAppUI;->applyAllUIVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$SettingStateListener;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/freeme/camera/ui/CameraAppUI;->setUIEnabled(IZ)V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$SettingStateListener;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/CameraAppUI;->setPluginVisibility(Z)V

    return-void
.end method
