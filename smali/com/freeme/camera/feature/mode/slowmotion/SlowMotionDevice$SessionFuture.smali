.class Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$SessionFuture;
.super Ljava/lang/Object;
.source "SlowMotionDevice.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;",
        ">;"
    }
.end annotation


# instance fields
.field mCondVar:Landroid/os/ConditionVariable;

.field private volatile mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$SessionFuture;->mCondVar:Landroid/os/ConditionVariable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$SessionFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public get()Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$SessionFuture;->mCondVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$SessionFuture;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, p1, p2, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$SessionFuture;->mCondVar:Landroid/os/ConditionVariable;

    invoke-virtual {v2, v0, v1}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$SessionFuture;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$SessionFuture;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to receive session after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$SessionFuture;->get()Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$SessionFuture;->get(JLjava/util/concurrent/TimeUnit;)Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$SessionFuture;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setSession(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$SessionFuture;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$SessionFuture;->mCondVar:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
