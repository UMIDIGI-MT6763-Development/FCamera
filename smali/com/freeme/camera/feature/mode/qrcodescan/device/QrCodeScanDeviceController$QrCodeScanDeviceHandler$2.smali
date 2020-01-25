.class Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler$2;
.super Ljava/lang/Object;
.source "QrCodeScanDeviceController.java"

# interfaces
.implements Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler$2;->this$1:Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataCallback(I[BII)V
    .locals 0

    invoke-static {}, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[UncompressedImageCallback] onDataCallback "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler$2;->this$1:Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;->access$1000(Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;)Lcom/freeme/camera/feature/mode/qrcodescan/device/IDeviceController$CaptureDataCallback;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/freeme/camera/feature/mode/qrcodescan/device/IDeviceController$DataCallbackInfo;

    invoke-direct {p1}, Lcom/freeme/camera/feature/mode/qrcodescan/device/IDeviceController$DataCallbackInfo;-><init>()V

    iput-object p2, p1, Lcom/freeme/camera/feature/mode/qrcodescan/device/IDeviceController$DataCallbackInfo;->data:[B

    iput-boolean p3, p1, Lcom/freeme/camera/feature/mode/qrcodescan/device/IDeviceController$DataCallbackInfo;->needUpdateThumbnail:Z

    iput-boolean p3, p1, Lcom/freeme/camera/feature/mode/qrcodescan/device/IDeviceController$DataCallbackInfo;->needRestartPreview:Z

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler$2;->this$1:Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;->access$1000(Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;)Lcom/freeme/camera/feature/mode/qrcodescan/device/IDeviceController$CaptureDataCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/freeme/camera/feature/mode/qrcodescan/device/IDeviceController$CaptureDataCallback;->onDataReceived(Lcom/freeme/camera/feature/mode/qrcodescan/device/IDeviceController$DataCallbackInfo;)V

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler$2;->this$1:Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;->access$1100(Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->startPreview()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler$2;->this$1:Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;->access$1200(Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler$2;->this$1:Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;->access$1200(Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2, p2}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler$2;->this$1:Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;

    invoke-static {p1, p3}, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;->access$1302(Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;Z)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler$2;->this$1:Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;->access$1400(Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public onDataTaken(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDataTaken] message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
