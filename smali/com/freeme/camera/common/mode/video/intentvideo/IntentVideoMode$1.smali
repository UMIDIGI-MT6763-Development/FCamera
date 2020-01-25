.class Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$1;
.super Ljava/lang/Object;
.source "IntentVideoMode.java"

# interfaces
.implements Lcom/freeme/camera/common/mode/video/device/IDeviceController$DeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$1;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterStopPreview()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$1;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    const-string v1, "opened"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$100(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Ljava/lang/String;)V

    return-void
.end method

.method public beforeCloseCamera()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$1;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    const-string v1, "closed"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$200(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Ljava/lang/String;)V

    return-void
.end method

.method public onCameraOpened(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$1;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    const-string v0, "opened"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$000(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Ljava/lang/String;)V

    return-void
.end method

.method public onError()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$1;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$900(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_PAUSED:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$1;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$1000(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_RECORDING:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$1;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-virtual {v0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->onShutterButtonClick()Z

    :cond_1
    return-void
.end method

.method public onPreviewStart()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$1;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$300(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$1;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    sget-object v1, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_REVIEW_UI:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    invoke-static {v0, v1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$400(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$1;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    sget-object v1, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_PREVIEW:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    invoke-static {v0, v1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$500(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;)V

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$1;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$600(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$1;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    const-string v1, "previewing"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$700(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Ljava/lang/String;)V

    invoke-static {}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$800()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[onPreviewStart]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
