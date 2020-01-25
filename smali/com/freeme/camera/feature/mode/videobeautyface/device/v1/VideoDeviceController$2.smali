.class Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$2;
.super Ljava/lang/Object;
.source "VideoDeviceController.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->access$2000(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;)Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$PreviewCallback;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->access$2000(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;)Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$PreviewCallback;

    move-result-object p2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->access$1400(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->access$2100(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p1, v0, v1}, Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$PreviewCallback;->onPreviewCallback([BILjava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$2;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->access$1900(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;)Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$DeviceCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$DeviceCallback;->onPreviewStart()V

    :cond_0
    return-void
.end method
