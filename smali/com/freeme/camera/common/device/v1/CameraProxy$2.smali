.class Lcom/freeme/camera/common/device/v1/CameraProxy$2;
.super Ljava/lang/Object;
.source "CameraProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/device/v1/CameraProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/device/v1/CameraProxy;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy$2;->this$0:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy$2;->this$0:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->access$000(Lcom/freeme/camera/common/device/v1/CameraProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy$2;->this$0:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-static {v1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->access$000(Lcom/freeme/camera/common/device/v1/CameraProxy;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    invoke-static {}, Lcom/freeme/camera/common/device/v1/CameraProxy;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v1

    const-string v2, "[resumeLockRunnable] notifyAll "

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
