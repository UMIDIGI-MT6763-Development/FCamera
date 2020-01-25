.class Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;
.super Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;
.source "VideoDeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraDeviceProxyStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-direct {p0}, Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;-><init>(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)V

    return-void
.end method


# virtual methods
.method public onClosed(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/device/v1/CameraProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-static {}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onClosed] proxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$500(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$500(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    sget-object v0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraState;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->updateCameraState(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraState;)V

    :cond_0
    return-void
.end method

.method public onDisconnected(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/device/v1/CameraProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-static {}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDisconnected] proxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$500(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$500(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    sget-object v0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraState;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->updateCameraState(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraState;)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$700(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$700(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$1800(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Landroid/app/Activity;

    move-result-object p1

    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcom/freeme/camera/common/utils/CameraUtil;->showErrorInfoAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public onError(Lcom/freeme/camera/common/device/v1/CameraProxy;I)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/device/v1/CameraProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-static {}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onError] proxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$500(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$500(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :cond_0
    const/16 p1, 0x41a

    if-ne p2, p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    sget-object v0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraState;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->updateCameraState(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraState;)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$1900(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Lcom/freeme/camera/common/mode/video/device/IDeviceController$DeviceCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/mode/video/device/IDeviceController$DeviceCallback;->onError()V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$700(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$700(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$1800(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/freeme/camera/common/utils/CameraUtil;->showErrorInfoAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_2
    :goto_0
    return-void
.end method

.method public onOpened(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/device/v1/CameraProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-static {}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onOpened] + cameraProxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v0, p1}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$502(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;Lcom/freeme/camera/common/device/v1/CameraProxy;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    sget-object v0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraState;->CAMERA_OPENING:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraState;

    iget-object v1, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-virtual {v1}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->getCameraState()Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraState;

    move-result-object v1

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v0, p1}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$800(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;Lcom/freeme/camera/common/device/v1/CameraProxy;)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$500(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    iget-object v1, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    sget-object v2, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraState;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->updateCameraState(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraState;)V

    iget-object v1, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v1}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$900(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Landroid/hardware/Camera$Parameters;)Z

    iget-object v1, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v1, p1}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$1000(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;Landroid/hardware/Camera$Parameters;)V

    iget-object v1, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v1, p1}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$1100(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;Landroid/hardware/Camera$Parameters;)V

    iget-object v1, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v1, v0}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$1202(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;Z)Z

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$1300(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$1402(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;I)I

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$500(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v1}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$1500(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$500(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$1700(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Lcom/freeme/camera/common/mode/video/device/IDeviceController$SettingConfigCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$1600(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Lcom/freeme/camera/common/utils/Size;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/mode/video/device/IDeviceController$SettingConfigCallback;->onConfig(Lcom/freeme/camera/common/utils/Size;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$700(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$700(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$700(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$700(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    invoke-static {}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "[onOpened] - "

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :goto_1
    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$700(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v1}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$700(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1

    :catchall_3
    move-exception p1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p1

    :cond_1
    :goto_2
    invoke-static {}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onOpened] state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v1}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$600(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$700(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$700(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_4
    move-exception v0

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0
.end method
