.class Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$1;
.super Ljava/lang/Object;
.source "Camera2DeviceManagerImpl.java"

# interfaces
.implements Lcom/freeme/camera/common/device/v2/Camera2Handler$IDeviceInfoListener;


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

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$1;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 0

    return-void
.end method

.method public onError()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$1;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    iget-object v0, v0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->access$1400(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[onError]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$1;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->access$1600(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$1;->this$2:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    invoke-static {v1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->access$1500(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    return-void
.end method
