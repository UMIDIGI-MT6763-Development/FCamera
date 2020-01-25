.class Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$2;
.super Ljava/lang/Object;
.source "CameraDeviceManagerImpl.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


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

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 2

    iget-object p2, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;

    iget-object p2, p2, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-static {p2}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$1800(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onError] error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;

    invoke-static {p2}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->access$1900(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;)Lcom/freeme/camera/common/device/v1/CameraHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->notifyDeviceError(I)V

    iget-object p2, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;

    invoke-static {p2}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->access$2100(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;)Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;

    move-result-object p2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->access$2000(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;->onError(Lcom/freeme/camera/common/device/v1/CameraProxy;I)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->access$2002(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;Lcom/freeme/camera/common/device/v1/CameraProxy;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$2;->this$2:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;

    invoke-static {p1, p2}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->access$2202(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    return-void
.end method
