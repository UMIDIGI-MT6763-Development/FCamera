.class Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$2;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "VideoDevice2Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$2;->this$0:Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    sget-object v0, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$CameraState;

    iget-object v1, p0, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$2;->this$0:Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;

    invoke-static {v1}, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;->access$300(Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;)Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$CameraState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$2;->this$0:Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;->access$1300(Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$2;->this$0:Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;

    invoke-static {v1}, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;->access$1300(Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$2;->this$0:Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;->access$1400(Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;)Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->getRepeatingCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$2;->this$0:Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;->access$1500(Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;)Lcom/freeme/camera/common/mode/video/device/IDeviceController$PreviewCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$2;->this$0:Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;->access$1600(Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$2;->this$0:Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;->access$1700(Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string p2, "[mPreviewCapProgressCallback] mFirstFrameArrived"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$2;->this$0:Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;->access$1602(Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;Z)Z

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$2;->this$0:Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;->access$1500(Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;)Lcom/freeme/camera/common/mode/video/device/IDeviceController$PreviewCallback;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$2;->this$0:Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;->access$1700(Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, p3, v0}, Lcom/freeme/camera/common/mode/video/device/IDeviceController$PreviewCallback;->onPreviewCallback([BILjava/lang/String;)V

    :cond_0
    return-void
.end method
