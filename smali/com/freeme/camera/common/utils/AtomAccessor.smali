.class public final Lcom/freeme/camera/common/utils/AtomAccessor;
.super Ljava/lang/Object;
.source "AtomAccessor.java"


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mResourceAccessLock:Ljava/lang/Object;

.field private final mSingleResource:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/utils/AtomAccessor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/utils/AtomAccessor;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/utils/AtomAccessor;->mResourceAccessLock:Ljava/lang/Object;

    sget-object v0, Lcom/freeme/camera/common/utils/AtomAccessor;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[AtomAccessor]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lcom/freeme/camera/common/utils/AtomAccessor;->mSingleResource:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public acquireResource()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/utils/AtomAccessor;->mResourceAccessLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/common/utils/AtomAccessor;->mSingleResource:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public releaseResource()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/utils/AtomAccessor;->mSingleResource:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public sendAtomMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/camera/common/utils/AtomAccessor;->acquireResource()V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p0}, Lcom/freeme/camera/common/utils/AtomAccessor;->releaseResource()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/camera/common/utils/AtomAccessor;->acquireResource()V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/freeme/camera/common/utils/AtomAccessor;->waitDoneAndReleaseResource(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;Ljava/lang/Runnable;)Z
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/camera/common/utils/AtomAccessor;->acquireResource()V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p0, p1, p3}, Lcom/freeme/camera/common/utils/AtomAccessor;->waitDoneAndReleaseResource(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public sendAtomMessageAtFrontOfQueue(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/camera/common/utils/AtomAccessor;->acquireResource()V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    invoke-virtual {p0}, Lcom/freeme/camera/common/utils/AtomAccessor;->releaseResource()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public sendAtomMessageAtFrontOfQueueAndWait(Landroid/os/Handler;Landroid/os/Message;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/freeme/camera/common/utils/AtomAccessor;->acquireResource()V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/freeme/camera/common/utils/AtomAccessor;->waitDoneAndReleaseResource(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public waitDone(Landroid/os/Handler;)Z
    .locals 3
    .param p1    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/freeme/camera/common/utils/AtomAccessor$2;

    invoke-direct {v2, p0, v1}, Lcom/freeme/camera/common/utils/AtomAccessor$2;-><init>(Lcom/freeme/camera/common/utils/AtomAccessor;Ljava/lang/Object;)V

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    monitor-exit v1

    return v0

    :cond_1
    :goto_0
    monitor-exit v1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public waitDoneAndReleaseResource(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .locals 3
    .param p1    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/freeme/camera/common/utils/AtomAccessor$1;

    invoke-direct {v2, p0, v1}, Lcom/freeme/camera/common/utils/AtomAccessor$1;-><init>(Lcom/freeme/camera/common/utils/AtomAccessor;Ljava/lang/Object;)V

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/common/utils/AtomAccessor;->mSingleResource:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    monitor-exit v1

    return v0

    :cond_2
    :goto_0
    monitor-exit v1

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
