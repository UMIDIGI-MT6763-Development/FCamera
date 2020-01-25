.class Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$1;
.super Ljava/lang/Object;
.source "VideoDeviceController.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$1;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 1

    invoke-static {}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p2

    const-string v0, "[onPictureTaken]"

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$1;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->access$400(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;)Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$JpegCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$JpegCallback;->onDataReceived([B)V

    return-void
.end method
