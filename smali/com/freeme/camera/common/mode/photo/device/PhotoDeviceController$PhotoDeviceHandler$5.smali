.class Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler$5;
.super Ljava/lang/Object;
.source "PhotoDeviceController.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler$5;->this$1:Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p2, p0, Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler$5;->this$1:Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;

    invoke-static {p2}, Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;->access$1500(Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mPostViewCallback],spend time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms,data : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",mPostViewCallbackNumber = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler$5;->this$1:Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;->access$1600(Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler$5;->this$1:Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;

    invoke-static {p2}, Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;->access$1600(Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object p2, p0, Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler$5;->this$1:Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;

    invoke-static {p2}, Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;->access$1000(Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;)Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler$5;->this$1:Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;

    invoke-static {p2}, Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;->access$1000(Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;)Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;->onPostViewCallback([B)V

    :cond_0
    return-void
.end method
