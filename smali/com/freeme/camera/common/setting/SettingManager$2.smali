.class Lcom/freeme/camera/common/setting/SettingManager$2;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/common/setting/SettingManager;->getRepeatingCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/setting/SettingManager;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/setting/SettingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager$2;->this$0:Lcom/freeme/camera/common/setting/SettingManager;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager$2;->this$0:Lcom/freeme/camera/common/setting/SettingManager;

    invoke-static {v0}, Lcom/freeme/camera/common/setting/SettingManager;->access$000(Lcom/freeme/camera/common/setting/SettingManager;)Lcom/freeme/camera/common/setting/SettingAccessManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureCompleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/freeme/camera/common/setting/SettingAccessManager$Access;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager$2;->this$0:Lcom/freeme/camera/common/setting/SettingManager;

    invoke-static {v1}, Lcom/freeme/camera/common/setting/SettingManager;->access$000(Lcom/freeme/camera/common/setting/SettingManager;)Lcom/freeme/camera/common/setting/SettingAccessManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/freeme/camera/common/setting/SettingAccessManager;->activeAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager$2;->this$0:Lcom/freeme/camera/common/setting/SettingManager;

    invoke-static {v1}, Lcom/freeme/camera/common/setting/SettingManager;->access$300(Lcom/freeme/camera/common/setting/SettingManager;)Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/freeme/camera/common/setting/SettingManager;->access$400(Lcom/freeme/camera/common/setting/SettingManager;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/freeme/camera/common/setting/SettingManager$2;->this$0:Lcom/freeme/camera/common/setting/SettingManager;

    invoke-static {v3}, Lcom/freeme/camera/common/setting/SettingManager;->access$500(Lcom/freeme/camera/common/setting/SettingManager;)Lcom/freeme/camera/common/setting/SettingTable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/freeme/camera/common/setting/SettingTable;->getAllCaptureRequestSettings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lcom/freeme/camera/common/setting/ICameraSetting;->getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;

    move-result-object v3

    invoke-interface {v3}, Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;->getRepeatingCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;->getRepeatingCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager$2;->this$0:Lcom/freeme/camera/common/setting/SettingManager;

    invoke-static {p1}, Lcom/freeme/camera/common/setting/SettingManager;->access$000(Lcom/freeme/camera/common/setting/SettingManager;)Lcom/freeme/camera/common/setting/SettingAccessManager;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lcom/freeme/camera/common/setting/SettingAccessManager;->recycleAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;Z)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager$2;->this$0:Lcom/freeme/camera/common/setting/SettingManager;

    invoke-static {v0}, Lcom/freeme/camera/common/setting/SettingManager;->access$000(Lcom/freeme/camera/common/setting/SettingManager;)Lcom/freeme/camera/common/setting/SettingAccessManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureFailed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/freeme/camera/common/setting/SettingAccessManager$Access;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager$2;->this$0:Lcom/freeme/camera/common/setting/SettingManager;

    invoke-static {v1}, Lcom/freeme/camera/common/setting/SettingManager;->access$000(Lcom/freeme/camera/common/setting/SettingManager;)Lcom/freeme/camera/common/setting/SettingAccessManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/freeme/camera/common/setting/SettingAccessManager;->activeAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager$2;->this$0:Lcom/freeme/camera/common/setting/SettingManager;

    invoke-static {v1}, Lcom/freeme/camera/common/setting/SettingManager;->access$300(Lcom/freeme/camera/common/setting/SettingManager;)Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/freeme/camera/common/setting/SettingManager;->access$400(Lcom/freeme/camera/common/setting/SettingManager;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/freeme/camera/common/setting/SettingManager$2;->this$0:Lcom/freeme/camera/common/setting/SettingManager;

    invoke-static {v3}, Lcom/freeme/camera/common/setting/SettingManager;->access$500(Lcom/freeme/camera/common/setting/SettingManager;)Lcom/freeme/camera/common/setting/SettingTable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/freeme/camera/common/setting/SettingTable;->getAllCaptureRequestSettings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lcom/freeme/camera/common/setting/ICameraSetting;->getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;

    move-result-object v3

    invoke-interface {v3}, Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;->getRepeatingCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;->getRepeatingCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager$2;->this$0:Lcom/freeme/camera/common/setting/SettingManager;

    invoke-static {p1}, Lcom/freeme/camera/common/setting/SettingManager;->access$000(Lcom/freeme/camera/common/setting/SettingManager;)Lcom/freeme/camera/common/setting/SettingAccessManager;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lcom/freeme/camera/common/setting/SettingAccessManager;->recycleAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;Z)V

    return-void
.end method
