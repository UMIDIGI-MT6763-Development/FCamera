.class Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$MyStatusChangeListener;
.super Ljava/lang/Object;
.source "VideoDevice2Controller.java"

# interfaces
.implements Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyStatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$MyStatusChangeListener;->this$0:Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$MyStatusChangeListener;-><init>(Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;)V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged] key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mCameraState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$MyStatusChangeListener;->this$0:Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;

    invoke-static {v2}, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;->access$500(Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;)Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$CameraState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v0, "key_scene_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$CameraState;

    iget-object v1, p0, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$MyStatusChangeListener;->this$0:Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;

    invoke-static {v1}, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;->access$500(Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;)Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$CameraState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$MyStatusChangeListener;->this$0:Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;->access$1800(Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;)V

    goto :goto_0

    :cond_0
    const-string v0, "key_matrix_display_show"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller$MyStatusChangeListener;->this$0:Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;

    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;->access$1102(Lcom/freeme/camera/common/mode/video/device/v2/VideoDevice2Controller;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
