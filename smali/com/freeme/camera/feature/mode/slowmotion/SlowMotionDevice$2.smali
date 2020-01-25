.class Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$2;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SlowMotionDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$2;->this$0:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$2;->this$0:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->access$1400(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;)Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->getRepeatingCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$2;->this$0:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->access$1500(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;)Lcom/freeme/camera/common/mode/video/device/IDeviceController$PreviewCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$2;->this$0:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->access$1600(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$2;->this$0:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->access$1700(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$2;->this$0:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->access$1602(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;Z)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$2;->this$0:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->access$1500(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;)Lcom/freeme/camera/common/mode/video/device/IDeviceController$PreviewCallback;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$2;->this$0:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->access$1700(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, p3, v0}, Lcom/freeme/camera/common/mode/video/device/IDeviceController$PreviewCallback;->onPreviewCallback([BILjava/lang/String;)V

    :cond_0
    return-void
.end method
