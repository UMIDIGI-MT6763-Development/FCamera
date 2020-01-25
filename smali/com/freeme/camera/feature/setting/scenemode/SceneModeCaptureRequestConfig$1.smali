.class Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SceneModeCaptureRequestConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->getRepeatingCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->access$000(Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;

    const/4 p3, 0x0

    aget p1, p1, p3

    invoke-static {p2, p1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->access$200(Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->access$102(Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->access$300(Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->access$300(Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;

    invoke-static {p2}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;->access$100(Lcom/freeme/camera/feature/setting/scenemode/SceneModeCaptureRequestConfig;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
