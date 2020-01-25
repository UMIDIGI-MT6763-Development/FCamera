.class Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler$6;
.super Ljava/lang/Object;
.source "QrCodeScanDeviceController.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler$6;->this$1:Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler$6;->this$1:Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;->access$1500(Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mJpegCallback],spend time :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms,mPostViewCallbackNumber = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler$6;->this$1:Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;->access$1600(Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mP2DoneCallBackCount = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler$6;->this$1:Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;->access$1400(Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mIsNeedStartPreviewAfterCapture = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler$6;->this$1:Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;->access$1300(Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;)Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mCaptureCount = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler$6;->this$1:Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;->access$1700(Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler$6;->this$1:Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;->access$1700(Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler$6;->this$1:Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;->access$1300(Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler$6;->this$1:Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;->access$1400(Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iget-object v2, p0, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler$6;->this$1:Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;->access$1400(Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler$6;->this$1:Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;->access$1400(Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_1
    iget-object v2, p0, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler$6;->this$1:Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;->access$1600(Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-static {v2, p1, v0, p2}, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;->access$1800(Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;[BZZ)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler$6;->this$1:Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;->access$1600(Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler$6;->this$1:Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;->access$1600(Lcom/freeme/camera/feature/mode/qrcodescan/device/QrCodeScanDeviceController$QrCodeScanDeviceHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_3
    return-void
.end method
