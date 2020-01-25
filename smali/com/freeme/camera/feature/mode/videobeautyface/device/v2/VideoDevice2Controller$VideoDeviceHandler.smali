.class Lcom/freeme/camera/feature/mode/videobeautyface/device/v2/VideoDevice2Controller$VideoDeviceHandler;
.super Landroid/os/Handler;
.source "VideoDevice2Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/videobeautyface/device/v2/VideoDevice2Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoDeviceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/videobeautyface/device/v2/VideoDevice2Controller;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/videobeautyface/device/v2/VideoDevice2Controller;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v2/VideoDevice2Controller$VideoDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/device/v2/VideoDevice2Controller;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v2/VideoDevice2Controller;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v2/VideoDevice2Controller$VideoDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/device/v2/VideoDevice2Controller;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v2/VideoDevice2Controller;->access$200(Lcom/freeme/camera/feature/mode/videobeautyface/device/v2/VideoDevice2Controller;)V

    :goto_0
    return-void
.end method
