.class Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode$2;
.super Ljava/lang/Object;
.source "ContinuousShotBurstMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;->stopContinuousShot()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode$2;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode$2;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;->access$300(Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;)Lcom/freeme/camera/feature/setting/CsState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_STOPPED:Lcom/freeme/camera/feature/setting/CsState$State;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/CsState;->updateState(Lcom/freeme/camera/feature/setting/CsState$State;)V

    invoke-static {}, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[stopContinuousShot]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode$2;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;->access$600(Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;)Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->getCurrentCaptureSession()Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->abortCaptures()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode$2;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;->onContinuousShotStopped()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode$2;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;->access$200(Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;->onContinuousShotDone(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode$2;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;->stopSound()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode$2;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;->access$300(Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;)Lcom/freeme/camera/feature/setting/CsState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_INIT:Lcom/freeme/camera/feature/setting/CsState$State;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/CsState;->updateState(Lcom/freeme/camera/feature/setting/CsState$State;)V

    return-void
.end method
