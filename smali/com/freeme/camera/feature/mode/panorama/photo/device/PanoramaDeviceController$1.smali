.class Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$1;
.super Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;
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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-direct {p0}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;->onClosed(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;)V

    invoke-static {}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onClosed],session = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$200(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$202(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;)Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    :cond_0
    return-void
.end method

.method public onConfigureFailed(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-static {}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onConfigureFailed],session = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$200(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$202(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;)Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    :cond_0
    return-void
.end method

.method public onConfigured(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-static {}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onConfigured],session = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$100(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$202(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;)Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    :try_start_0
    sget-object p1, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$300(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$400(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$500(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$600(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)V

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$100(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->access$100(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
