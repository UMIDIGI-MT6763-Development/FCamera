.class Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$14;
.super Ljava/lang/Object;
.source "VideoBeautyFaceMode.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$DeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$14;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterStopPreview()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$14;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    const-string v1, "opened"

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$2100(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;Ljava/lang/String;)V

    return-void
.end method

.method public beforeCloseCamera()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$14;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    const-string v1, "closed"

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$2200(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;Ljava/lang/String;)V

    return-void
.end method

.method public onCameraOpened(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$14;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$1900(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->setCameraId(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$14;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    const-string v0, "opened"

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$2000(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;Ljava/lang/String;)V

    return-void
.end method

.method public onError()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$14;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->getVideoState()Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$VideoState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$VideoState;->STATE_PAUSED:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$VideoState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$14;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->getVideoState()Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$VideoState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$VideoState;->STATE_RECORDING:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$VideoState;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$14;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    iget-object v0, v0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->mVideoHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public onPreviewStart()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$14;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$2300(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;)Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$ModeState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$ModeState;->STATE_PAUSED:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$ModeState;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$500()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[onPreviewStart] error mode state is paused"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$14;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$2400(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->setPauseed(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$14;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    sget-object v1, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$VideoState;->STATE_PREVIEW:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$VideoState;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->updateVideoState(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$VideoState;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$14;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    iget-object v0, v0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$14;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    const-string v1, "previewing"

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$2500(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;Ljava/lang/String;)V

    invoke-static {}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$500()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[onPreviewStart]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
