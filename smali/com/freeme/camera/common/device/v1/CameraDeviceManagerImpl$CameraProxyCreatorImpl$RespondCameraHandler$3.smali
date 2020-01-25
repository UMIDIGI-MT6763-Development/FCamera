.class Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$3;
.super Ljava/lang/Object;
.source "CameraDeviceManagerImpl.java"

# interfaces
.implements Lcom/freeme/camera/common/device/v1/CameraHandler$IDeviceInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$3;->this$2:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$3;->this$2:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;

    iget-object v0, v0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$1800(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[onClosed]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$3;->this$2:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;

    iget-object v0, v0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$2300(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onError()V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[onError]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$3;->this$2:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->access$2100(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;)Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$3;->this$2:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;

    invoke-static {v1}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->access$2000(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;->onClosed(Lcom/freeme/camera/common/device/v1/CameraProxy;)V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$3;->this$2:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->access$2100(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;)Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$3;->this$2:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;

    invoke-static {v1}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->access$2000(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;->onError(Lcom/freeme/camera/common/device/v1/CameraProxy;I)V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$3;->this$2:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->access$2002(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;Lcom/freeme/camera/common/device/v1/CameraProxy;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$3;->this$2:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;

    invoke-static {v0, v1}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->access$2202(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    return-void
.end method
