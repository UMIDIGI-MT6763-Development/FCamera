.class Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "PanoramaDeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3
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

    invoke-static {}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CaptureCallback.onCaptureCompleted] mModeDeviceCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$1000(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$DeviceCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mFirstFrameArrived = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$1200(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$900(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$1000(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$DeviceCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$900(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$1300(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->getRepeatingCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide p1

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {p3}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$700(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$700(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_1

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$1202(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;Z)Z

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    invoke-static {p3, v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$1100(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;)V

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {p3}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$1000(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$DeviceCallback;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$DeviceCallback;->onPreviewCallback([BI)V

    :cond_1
    iget-object p3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {p3}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$700(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    :goto_0
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

    invoke-static {}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CaptureCallback.onCaptureFailed], framenumber: "

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

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$900(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$1000(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$DeviceCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$900(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$1300(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->getRepeatingCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$700(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    sget-object p2, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    invoke-static {p1, p2}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$1100(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$1000(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$DeviceCallback;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$DeviceCallback;->onPreviewCallback([BI)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$1400(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;Z)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$900(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$1000(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$DeviceCallback;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$900(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object p2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/freeme/camera/common/mode/photo/P2DoneInfo;->checkP2DoneResult(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide p1

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {p3}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$700(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {p3}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$700(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CaptureCallback.onCaptureProgressed] P2done comes, frame: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    sget-object p2, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    invoke-static {p1, p2}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$1100(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$1000(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$DeviceCallback;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$DeviceCallback;->onPreviewCallback([BI)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    invoke-static {}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[CaptureCallback.onCaptureStarted]capture started, frame: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$700(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$800(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Lcom/freeme/camera/common/ICameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/ICameraContext;->getSoundPlayback()Lcom/freeme/camera/common/sound/ISoundPlayback;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lcom/freeme/camera/common/sound/ISoundPlayback;->play(I)V

    return-void
.end method
