.class Lcom/freeme/camera/ui/CameraAppUI$21;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/CameraAppUI;->refreshSettingView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/CameraAppUI;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$21;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$21;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$2400(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/SettingFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/ui/SettingFragment;->refreshSettingView()V

    const-string v0, "Beauty Face"

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI$21;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/CameraAppUI;->access$1900(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Video Beauty Face"

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI$21;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/CameraAppUI;->access$1900(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Face cute"

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI$21;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v1}, Lcom/freeme/camera/ui/CameraAppUI;->access$1900(Lcom/freeme/camera/ui/CameraAppUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$21;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getIModeListener()Lcom/freeme/camera/common/mode/IModeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/mode/IModeListener;->getCurrentMode()Lcom/freeme/camera/common/mode/ICameraMode;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/mode/CameraModeBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/mode/CameraModeBase;->restoreDefaultsForBeautyFace(Z)V

    :cond_1
    return-void
.end method
