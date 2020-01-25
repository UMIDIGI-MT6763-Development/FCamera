.class Lcom/freeme/camera/feature/setting/ContinuousShot2$4;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "ContinuousShot2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/ContinuousShot2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/ContinuousShot2;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/ContinuousShot2;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot2$4;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    invoke-static {}, Lcom/freeme/camera/feature/setting/ContinuousShot2;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string p2, "[onCaptureBufferLost]"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    invoke-static {p2}, Lcom/freeme/camera/common/utils/CameraUtil;->isStillCaptureTemplate(Landroid/hardware/camera2/CaptureRequest;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot2$4;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot2;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/ContinuousShot2;->access$500(Lcom/freeme/camera/feature/setting/ContinuousShot2;)Lcom/freeme/camera/feature/setting/CsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/CsState;->getCShotState()Lcom/freeme/camera/feature/setting/CsState$State;

    move-result-object p1

    sget-object p2, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_CAPTURE_STARTED:Lcom/freeme/camera/feature/setting/CsState$State;

    if-ne p1, p2, :cond_0

    invoke-static {}, Lcom/freeme/camera/feature/setting/ContinuousShot2;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onCaptureFailed] fail: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "frameNumber: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot2$4;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot2;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/ContinuousShot2;->stopContinuousShot()Z

    :cond_0
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    invoke-static {}, Lcom/freeme/camera/feature/setting/ContinuousShot2;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onCaptureProgressed] mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot2$4;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot2;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/ContinuousShot2;->access$500(Lcom/freeme/camera/feature/setting/ContinuousShot2;)Lcom/freeme/camera/feature/setting/CsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/CsState;->getCShotState()Lcom/freeme/camera/feature/setting/CsState$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot2$4;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot2;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/ContinuousShot2;->access$900(Lcom/freeme/camera/feature/setting/ContinuousShot2;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/freeme/camera/common/utils/CameraUtil;->isStillCaptureTemplate(Landroid/hardware/camera2/CaptureRequest;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot2$4;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot2;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/ContinuousShot2;->access$500(Lcom/freeme/camera/feature/setting/ContinuousShot2;)Lcom/freeme/camera/feature/setting/CsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/CsState;->getCShotState()Lcom/freeme/camera/feature/setting/CsState$State;

    move-result-object p1

    sget-object p2, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_CAPTURE_STARTED:Lcom/freeme/camera/feature/setting/CsState$State;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot2$4;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot2;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/ContinuousShot2;->access$1000(Lcom/freeme/camera/feature/setting/ContinuousShot2;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    aget p1, p1, p2

    invoke-static {}, Lcom/freeme/camera/feature/setting/ContinuousShot2;->access$1100()[I

    move-result-object v0

    aget v0, v0, p2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShot2$4;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot2;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/ContinuousShot2;->access$100(Lcom/freeme/camera/feature/setting/ContinuousShot2;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShot2$4;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot2;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/ContinuousShot2;->access$208(Lcom/freeme/camera/feature/setting/ContinuousShot2;)I

    invoke-static {}, Lcom/freeme/camera/feature/setting/ContinuousShot2;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCaptureProgressed] p2 done callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/ContinuousShot2$4;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot2;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/ContinuousShot2;->access$200(Lcom/freeme/camera/feature/setting/ContinuousShot2;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "frameNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/ContinuousShot2$4;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot2;

    invoke-static {p3, p2}, Lcom/freeme/camera/feature/setting/ContinuousShot2;->access$600(Lcom/freeme/camera/feature/setting/ContinuousShot2;Z)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    iget-object p3, p0, Lcom/freeme/camera/feature/setting/ContinuousShot2$4;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot2;

    invoke-static {p3}, Lcom/freeme/camera/feature/setting/ContinuousShot2;->access$500(Lcom/freeme/camera/feature/setting/ContinuousShot2;)Lcom/freeme/camera/feature/setting/CsState;

    move-result-object p3

    sget-object v0, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_ERROR:Lcom/freeme/camera/feature/setting/CsState$State;

    invoke-virtual {p3, v0}, Lcom/freeme/camera/feature/setting/CsState;->updateState(Lcom/freeme/camera/feature/setting/CsState$State;)V

    invoke-virtual {p2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p2

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/ContinuousShot2$4;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot2;

    invoke-static {p3}, Lcom/freeme/camera/feature/setting/ContinuousShot2;->access$500(Lcom/freeme/camera/feature/setting/ContinuousShot2;)Lcom/freeme/camera/feature/setting/CsState;

    move-result-object p3

    sget-object v0, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_ERROR:Lcom/freeme/camera/feature/setting/CsState$State;

    invoke-virtual {p3, v0}, Lcom/freeme/camera/feature/setting/CsState;->updateState(Lcom/freeme/camera/feature/setting/CsState$State;)V

    invoke-virtual {p2}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_0
    :goto_2
    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    invoke-static {}, Lcom/freeme/camera/feature/setting/ContinuousShot2;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string p2, "[onCaptureSequenceAborted]"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    invoke-static {}, Lcom/freeme/camera/feature/setting/ContinuousShot2;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string p2, "[onCaptureSequenceCompleted]"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    invoke-static {}, Lcom/freeme/camera/feature/setting/ContinuousShot2;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[onCaptureStarted] mState: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/ContinuousShot2$4;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShot2;

    invoke-static {p3}, Lcom/freeme/camera/feature/setting/ContinuousShot2;->access$500(Lcom/freeme/camera/feature/setting/ContinuousShot2;)Lcom/freeme/camera/feature/setting/CsState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/freeme/camera/feature/setting/CsState;->getCShotState()Lcom/freeme/camera/feature/setting/CsState$State;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "frameNumber: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
