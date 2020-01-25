.class Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "Camera2DeviceManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onClosed(Landroid/hardware/camera2/CameraDevice;)V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->access$1500(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->access$1500(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    iget-object v0, v0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->access$1400(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onClosed] camera = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    invoke-static {p1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->access$2100(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;)Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->access$2000(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;->onClosed(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->access$1502(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    invoke-static {p1, v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->access$2002(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;Lcom/freeme/camera/common/device/v2/Camera2Proxy;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    :cond_0
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    iget-object v0, v0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->access$1400(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDisconnected] camera = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->access$1500(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->access$1500(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    invoke-static {p1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->access$2100(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;)Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->access$2000(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;->onDisconnected(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->access$1502(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    :cond_0
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    iget-object v0, v0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->access$1400(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onError] camera = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " error = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    invoke-static {p1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->access$1900(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    invoke-static {p1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->access$2100(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;)Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->access$2000(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;->onError(Lcom/freeme/camera/common/device/v2/Camera2Proxy;I)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->access$1502(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    invoke-static {p1, p2}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->access$2002(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;Lcom/freeme/camera/common/device/v2/Camera2Proxy;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    iget-object v0, v0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->access$1400(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onOpened] camera = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    iget-object v0, v0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->access$1702(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;I)I

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    invoke-static {v0, p1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->access$1800(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;Landroid/hardware/camera2/CameraDevice;)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    invoke-static {p1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->access$1900(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;)V

    return-void
.end method
