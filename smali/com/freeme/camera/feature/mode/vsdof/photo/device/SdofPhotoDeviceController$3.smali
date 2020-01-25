.class Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$3;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SdofPhotoDeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$3;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;

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

    invoke-static {}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PreviewCallback.onCaptureCompleted] mModeDeviceCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$3;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->access$700(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;)Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$DeviceCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mFirstFrameArrived = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$3;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->access$1400(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$3;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->access$1500(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;)Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->getRepeatingCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$3;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->access$700(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;)Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$DeviceCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$3;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->access$1400(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$3;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->access$1402(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;Z)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$3;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->access$700(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;)Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$DeviceCallback;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$DeviceCallback;->onPreviewCallback([BI)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$3;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->access$1100(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$3;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;

    invoke-static {p1, p3}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->access$1700(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2
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

    invoke-static {}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[PreviewCallback.onCaptureFailed]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$3;->this$0:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->access$1500(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;)Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->getRepeatingCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method
