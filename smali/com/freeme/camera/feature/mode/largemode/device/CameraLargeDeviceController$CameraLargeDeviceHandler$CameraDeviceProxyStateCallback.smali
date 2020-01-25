.class Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;
.super Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;
.source "CameraLargeDeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraDeviceProxyStateCallback"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    invoke-direct {p0}, Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;-><init>(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;)V

    return-void
.end method


# virtual methods
.method public onClosed(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/device/v1/CameraProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-static {}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onClosed] current proxy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->access$1100(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " closed proxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->access$1100(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->access$1100(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->access$2000(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->access$2000(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public onDisconnected(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/device/v1/CameraProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-static {}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDisconnected] current proxy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->access$1100(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " closed  proxy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->access$1700(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->access$2100(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->access$1100(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->access$1100(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->access$2000(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    iget-object v1, v1, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController;

    sget-object v2, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraState;

    invoke-static {v1, v2}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController;->access$202(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController;Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraState;)Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraState;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->access$2000(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    iget-object v1, v1, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController;->access$500(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xcb

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public onError(Lcom/freeme/camera/common/device/v1/CameraProxy;I)V
    .locals 4
    .param p1    # Lcom/freeme/camera/common/device/v1/CameraProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-static {}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onError] current proxy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->access$1100(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " proxy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->access$1700(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->access$2100(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->access$1100(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->access$1100(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :cond_0
    const/16 v0, 0x41a

    if-ne p2, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->access$2000(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    iget-object v2, v2, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController;

    sget-object v3, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraState;

    invoke-static {v2, v3}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController;->access$202(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController;Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraState;)Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraState;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->access$2000(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    iget-object v2, v2, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController;->access$500(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xcc

    invoke-virtual {v2, v3, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public onOpened(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/device/v1/CameraProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-static {}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onOpened]proxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    iget-object v2, v2, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController;->access$200(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController;)Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->access$2000(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    invoke-static {v1, p1}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->access$1102(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;Lcom/freeme/camera/common/device/v1/CameraProxy;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->access$2000(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler$CameraDeviceProxyStateCallback;->this$1:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;

    iget-object v1, v1, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController$CameraLargeDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController;->access$500(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDeviceController;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc9

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
