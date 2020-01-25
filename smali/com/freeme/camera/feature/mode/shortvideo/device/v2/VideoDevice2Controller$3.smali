.class Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$3;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "VideoDevice2Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$3;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
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

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0
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

    invoke-static {}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "vss take picture fail:  mJpegCallback = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$3;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;

    invoke-static {p3}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->access$1900(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;)Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$JpegCallback;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$3;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->access$1900(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;)Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$JpegCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$3;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->access$1900(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;)Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$JpegCallback;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$JpegCallback;->onDataReceived([B)V

    :cond_0
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    return-void
.end method
