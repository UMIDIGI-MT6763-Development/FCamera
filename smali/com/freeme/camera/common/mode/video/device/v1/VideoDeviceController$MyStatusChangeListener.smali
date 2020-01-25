.class Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$MyStatusChangeListener;
.super Ljava/lang/Object;
.source "VideoDeviceController.java"

# interfaces
.implements Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyStatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$MyStatusChangeListener;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$MyStatusChangeListener;-><init>(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged] key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " CameraState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$MyStatusChangeListener;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v2}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$600(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mRememberSceneModeValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$MyStatusChangeListener;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v2}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$2200(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v0, "key_scene_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraState;

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$MyStatusChangeListener;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-virtual {v0}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->getCameraState()Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$CameraState;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const-string p1, "night"

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$MyStatusChangeListener;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$2200(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "night"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController$MyStatusChangeListener;->this$0:Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;->access$2300(Lcom/freeme/camera/common/mode/video/device/v1/VideoDeviceController;)V

    :cond_1
    return-void
.end method
