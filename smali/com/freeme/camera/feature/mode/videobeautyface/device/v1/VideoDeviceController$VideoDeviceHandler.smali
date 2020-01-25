.class Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$VideoDeviceHandler;
.super Landroid/os/Handler;
.source "VideoDeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoDeviceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$VideoDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleMessage] what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$VideoDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->access$300(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
