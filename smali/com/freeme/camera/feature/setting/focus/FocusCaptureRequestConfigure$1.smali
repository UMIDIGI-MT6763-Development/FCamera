.class Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "FocusCaptureRequestConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    if-eqz p3, :cond_0

    sget-object p1, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->access$002(Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;

    invoke-static {p1, p2, p3}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->access$100(Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;

    invoke-static {p1, p3}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->access$200(Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;Landroid/hardware/camera2/CaptureResult;)V

    invoke-static {p3}, Lcom/freeme/camera/common/utils/CameraUtil;->isStillCaptureTemplate(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->access$300(Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->access$400()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p2

    const-string v0, "[onCaptureCompleted] picture done"

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;

    invoke-static {p2}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->access$300(Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "cancelAutoFocus"

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->access$300(Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->access$400()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onCaptureCompleted] mFocusQueue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->access$300(Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " do cancelAutoFocus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;

    invoke-static {p2}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->access$300(Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;

    invoke-virtual {p2}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->cancelAutoFocus()V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;

    invoke-static {p2}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->access$500(Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;)Lcom/freeme/camera/feature/setting/focus/Focus;

    move-result-object p2

    invoke-virtual {p2}, Lcom/freeme/camera/feature/setting/focus/Focus;->resetTouchFocusWhenCaptureDone()V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;

    invoke-static {p2}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->access$600(Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;

    invoke-static {p2, p3}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->access$700(Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;Landroid/hardware/camera2/TotalCaptureResult;)V

    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
