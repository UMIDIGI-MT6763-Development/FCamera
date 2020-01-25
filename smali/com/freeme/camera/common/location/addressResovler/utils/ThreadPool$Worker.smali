.class Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/freeme/camera/common/location/addressResovler/utils/Future;
.implements Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$JobContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/freeme/camera/common/location/addressResovler/utils/Future<",
        "TT;>;",
        "Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$JobContext;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Worker"


# instance fields
.field private mCancelListener:Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$CancelListener;

.field private volatile mIsCancelled:Z

.field private mIsDone:Z

.field private mJob:Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Job<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/freeme/camera/common/location/addressResovler/utils/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/freeme/camera/common/location/addressResovler/utils/FutureListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mWaitOnResource:Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$ResourceCounter;

.field final synthetic this$0:Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool;Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Job;Lcom/freeme/camera/common/location/addressResovler/utils/FutureListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Job<",
            "TT;>;",
            "Lcom/freeme/camera/common/location/addressResovler/utils/FutureListener<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->this$0:Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mJob:Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Job;

    iput-object p3, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mListener:Lcom/freeme/camera/common/location/addressResovler/utils/FutureListener;

    return-void
.end method

.method private acquireResource(Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$ResourceCounter;)Z
    .locals 3

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mIsCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mWaitOnResource:Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$ResourceCounter;

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_0
    iput-object p1, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mWaitOnResource:Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$ResourceCounter;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-enter p1

    :try_start_1
    iget v0, p1, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$ResourceCounter;->value:I

    if-lez v0, :cond_1

    iget v0, p1, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$ResourceCounter;->value:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p1, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$ResourceCounter;->value:I

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-enter p0

    :try_start_2
    iput-object v1, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mWaitOnResource:Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$ResourceCounter;

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    :try_start_4
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method private modeToCounter(I)Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$ResourceCounter;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->this$0:Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool;

    iget-object p1, p1, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool;->mCpuCounter:Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$ResourceCounter;

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->this$0:Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool;

    iget-object p1, p1, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool;->mNetworkCounter:Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$ResourceCounter;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private releaseResource(Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$ResourceCounter;)V
    .locals 1

    monitor-enter p1

    :try_start_0
    iget v0, p1, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$ResourceCounter;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$ResourceCounter;->value:I

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mIsCancelled:Z

    iget-object v0, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mWaitOnResource:Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$ResourceCounter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mWaitOnResource:Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$ResourceCounter;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mWaitOnResource:Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$ResourceCounter;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mCancelListener:Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$CancelListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mCancelListener:Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$CancelListener;

    invoke-interface {v0}, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$CancelListener;->onCancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mIsDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Worker"

    const-string v2, "ingore exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mResult:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mIsCancelled:Z

    return v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mIsDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->setMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mJob:Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Job;

    invoke-interface {v1, p0}, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Job;->run(Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Worker"

    const-string v3, "Exception in running a job"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->setMode(I)Z

    iput-object v1, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mResult:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mIsDone:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mListener:Lcom/freeme/camera/common/location/addressResovler/utils/FutureListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/freeme/camera/common/location/addressResovler/utils/FutureListener;->onFutureDone(Lcom/freeme/camera/common/location/addressResovler/utils/Future;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized setCancelListener(Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$CancelListener;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mCancelListener:Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$CancelListener;

    iget-boolean p1, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mIsCancelled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mCancelListener:Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$CancelListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mCancelListener:Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$CancelListener;

    invoke-interface {p1}, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$CancelListener;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMode(I)Z
    .locals 2

    iget v0, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mMode:I

    invoke-direct {p0, v0}, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->modeToCounter(I)Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$ResourceCounter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->releaseResource(Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$ResourceCounter;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mMode:I

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->modeToCounter(I)Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$ResourceCounter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->acquireResource(Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$ResourceCounter;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iput p1, p0, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->mMode:I

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public waitDone()V
    .locals 0

    invoke-virtual {p0}, Lcom/freeme/camera/common/location/addressResovler/utils/ThreadPool$Worker;->get()Ljava/lang/Object;

    return-void
.end method
