.class Lcom/freeme/camera/common/mode/video/VideoMode$10;
.super Ljava/lang/Object;
.source "VideoMode.java"

# interfaces
.implements Lcom/freeme/camera/common/mode/video/device/IDeviceController$DeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/video/VideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/mode/video/VideoMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/mode/video/VideoMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/video/VideoMode$10;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterStopPreview()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/VideoMode$10;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    const-string v1, "opened"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/mode/video/VideoMode;->access$1000(Lcom/freeme/camera/common/mode/video/VideoMode;Ljava/lang/String;)V

    return-void
.end method

.method public beforeCloseCamera()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/VideoMode$10;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    const-string v1, "closed"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/mode/video/VideoMode;->access$1100(Lcom/freeme/camera/common/mode/video/VideoMode;Ljava/lang/String;)V

    return-void
.end method

.method public onCameraOpened(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/VideoMode$10;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    const-string v0, "opened"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/mode/video/VideoMode;->access$900(Lcom/freeme/camera/common/mode/video/VideoMode;Ljava/lang/String;)V

    return-void
.end method

.method public onError()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/VideoMode$10;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    invoke-virtual {v0}, Lcom/freeme/camera/common/mode/video/VideoMode;->getVideoState()Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_PAUSED:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/VideoMode$10;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    invoke-virtual {v0}, Lcom/freeme/camera/common/mode/video/VideoMode;->getVideoState()Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_RECORDING:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/VideoMode$10;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    iget-object v0, v0, Lcom/freeme/camera/common/mode/video/VideoMode;->mVideoHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public onPreviewStart()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/VideoMode$10;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/VideoMode;->access$1200(Lcom/freeme/camera/common/mode/video/VideoMode;)Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;->STATE_PAUSED:Lcom/freeme/camera/common/mode/video/VideoMode$ModeState;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/freeme/camera/common/mode/video/VideoMode;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[onPreviewStart] error mode state is paused"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/VideoMode$10;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    sget-object v1, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_PREVIEW:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/mode/video/VideoMode;->updateVideoState(Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/VideoMode$10;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    iget-object v0, v0, Lcom/freeme/camera/common/mode/video/VideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/VideoMode$10;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    const-string v1, "previewing"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/mode/video/VideoMode;->access$1300(Lcom/freeme/camera/common/mode/video/VideoMode;Ljava/lang/String;)V

    invoke-static {}, Lcom/freeme/camera/common/mode/video/VideoMode;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[onPreviewStart]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
