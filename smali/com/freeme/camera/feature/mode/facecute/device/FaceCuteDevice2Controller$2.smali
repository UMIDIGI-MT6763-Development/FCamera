.class Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "FaceCuteDevice2Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/TotalCaptureResult;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1000(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1500(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController$DeviceCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1000(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1600(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->getRepeatingCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-static {p3}, Lcom/freeme/camera/common/utils/CameraUtil;->isStillCaptureTemplate(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v2

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1100(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {p3}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1100(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p3

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {p1, v1}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1702(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;Z)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    sget-object p3, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$CameraState;

    invoke-static {p1, p3}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1400(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$CameraState;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1500(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController$DeviceCallback;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController$DeviceCallback;->onPreviewCallback([BI)V

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1100(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {p3}, Lcom/freeme/camera/common/utils/CameraUtil;->isStillCaptureTemplate(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1700(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {p1, v1}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1702(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;Z)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    sget-object p3, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$CameraState;

    invoke-static {p1, p3}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1400(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$CameraState;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1500(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController$DeviceCallback;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController$DeviceCallback;->onPreviewCallback([BI)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 4
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/CaptureFailure;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    invoke-static {}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCaptureFailed], framenumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sequenceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isCaptured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->wasImageCaptured()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1000(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1000(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1600(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->getRepeatingCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1500(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController$DeviceCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/freeme/camera/common/utils/CameraUtil;->isStillCaptureTemplate(Landroid/hardware/camera2/CaptureRequest;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1100(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    sget-object p2, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$CameraState;

    invoke-static {p1, p2}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1400(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$CameraState;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1500(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController$DeviceCallback;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController$DeviceCallback;->onPreviewCallback([BI)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1000(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1000(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/freeme/camera/common/utils/CameraUtil;->isStillCaptureTemplate(Landroid/hardware/camera2/CaptureRequest;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p3}, Lcom/freeme/camera/feature/mode/facecute/P2DoneInfo;->checkP2DoneResult(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide p1

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {p3}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1100(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {p3}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1100(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onCaptureProgressed] P2done comes, frame: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    sget-object p2, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$CameraState;

    invoke-static {p1, p2}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1400(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$CameraState;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1500(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController$DeviceCallback;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController$DeviceCallback;->onPreviewCallback([BI)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {p3}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1000(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {p3}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1000(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    move-result-object p3

    invoke-virtual {p3}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object p3

    if-eq p1, p3, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p2}, Lcom/freeme/camera/common/utils/CameraUtil;->isStillCaptureTemplate(Landroid/hardware/camera2/CaptureRequest;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[onCaptureStarted] capture started, frame: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1100(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    const-string p2, "CAMERA_SHUTTER_SOUND_SUPPORT"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    const-string p2, "CAMERA_SHUTTER_SOUND_SUPPORT"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "false"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "off"

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraPhotoShutterSoundDefault:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraPhotoShutterSoundDefault:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "off"

    :goto_0
    iget-object p2, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1200(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object p2

    const-string p3, "key_shutter_sound"

    iget-object p4, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {p4}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1200(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object p4

    invoke-virtual {p4}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p1, p4}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller$2;->this$0:Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;->access$1300(Lcom/freeme/camera/feature/mode/facecute/device/FaceCuteDevice2Controller;)Lcom/freeme/camera/common/ICameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/ICameraContext;->getSoundPlayback()Lcom/freeme/camera/common/sound/ISoundPlayback;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lcom/freeme/camera/common/sound/ISoundPlayback;->play(I)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method
