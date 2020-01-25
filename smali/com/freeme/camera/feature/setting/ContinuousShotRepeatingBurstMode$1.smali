.class Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode$1;
.super Ljava/lang/Object;
.source "ContinuousShotRepeatingBurstMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->startContinuousShot()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode$1;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[startContinuousShot]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode$1;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->access$100(Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode$1;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->access$202(Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;I)I

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode$1;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;

    invoke-static {v1, v2}, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->access$302(Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;I)I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode$1;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->access$400(Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;)Lcom/freeme/camera/feature/setting/CsState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_CAPTURE_STARTED:Lcom/freeme/camera/feature/setting/CsState$State;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/CsState;->updateState(Lcom/freeme/camera/feature/setting/CsState$State;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode$1;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->onContinuousShotStarted()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode$1;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->access$500(Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode$1;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->playSound()V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode$1;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->access$400(Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;)Lcom/freeme/camera/feature/setting/CsState;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_ERROR:Lcom/freeme/camera/feature/setting/CsState$State;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/CsState;->updateState(Lcom/freeme/camera/feature/setting/CsState$State;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode$1;->this$0:Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->access$400(Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;)Lcom/freeme/camera/feature/setting/CsState;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_ERROR:Lcom/freeme/camera/feature/setting/CsState$State;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/CsState;->updateState(Lcom/freeme/camera/feature/setting/CsState$State;)V

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method
