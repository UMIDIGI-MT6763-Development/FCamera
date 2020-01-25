.class public abstract Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;
.super Ljava/lang/Object;
.source "CameraDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/device/CameraDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "CameraProxyCreator"
.end annotation


# static fields
.field protected static final OPEN_RETRY_COUNT:I = 0x2

.field protected static final RETRY_OPEN_SLEEP_TIME_MS:I = 0x3e8

.field private static final SDK_VERSION_FOR_LOOPER_QUIT:I = 0x12


# instance fields
.field protected mApiVersion:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

.field protected mCameraId:Ljava/lang/String;

.field protected mRequestThread:Landroid/os/HandlerThread;

.field protected mRespondThread:Landroid/os/HandlerThread;

.field protected mRetryCount:I

.field protected mThreadLock:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic this$0:Lcom/freeme/camera/common/device/CameraDeviceManager;


# direct methods
.method protected constructor <init>(Lcom/freeme/camera/common/device/CameraDeviceManager;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;->this$0:Lcom/freeme/camera/common/device/CameraDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object p1, p0, Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;->mThreadLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;->mRetryCount:I

    iput-object p2, p0, Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;->mApiVersion:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    iput-object p3, p0, Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;->createHandlerThreads()V

    return-void
.end method


# virtual methods
.method protected createHandlerThreads()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;->mThreadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;->mApiVersion:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-Request-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;->mRequestThread:Landroid/os/HandlerThread;

    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;->mApiVersion:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-Response-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;->mRespondThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;->mRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;->mRespondThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;->mThreadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public destroyHandlerThreads()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;->mThreadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;->mRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    const/16 v1, 0x12

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;->mRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;->mRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;->mRespondThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;->mRespondThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;->mRespondThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;->mThreadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
