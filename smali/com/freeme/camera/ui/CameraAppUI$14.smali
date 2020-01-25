.class Lcom/freeme/camera/ui/CameraAppUI$14;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/CameraAppUI;->applyAllUIEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/CameraAppUI;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;Z)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$14;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    iput-boolean p2, p0, Lcom/freeme/camera/ui/CameraAppUI$14;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$14;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1500(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/16 v1, 0x6a

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$14;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$2200(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/common/CaptureState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/CaptureState;->START:Lcom/freeme/camera/common/CaptureState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$14;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1100(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->getShutterButton()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$14;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1100(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->getShutterButton()Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/freeme/camera/ui/CameraAppUI$14;->val$enabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$14;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1100(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/shutter/ShutterButtonManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/ui/shutter/ShutterButtonManager;->getShutterButton()Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/freeme/camera/ui/CameraAppUI$14;->val$enabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-void
.end method
