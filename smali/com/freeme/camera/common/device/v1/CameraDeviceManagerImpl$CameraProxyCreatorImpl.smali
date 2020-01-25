.class Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;
.super Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;
.source "CameraDeviceManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraProxyCreatorImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;
    }
.end annotation


# instance fields
.field private final mHandlerTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private final mRespondHandler:Landroid/os/Handler;

.field private final mRespondTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field final synthetic this$0:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->this$0:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;

    sget-object v0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API1:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-direct {p0, p1, v0, p2}, Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;-><init>(Lcom/freeme/camera/common/device/CameraDeviceManager;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mThreadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    new-instance p1, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mRespondThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;-><init>(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mRespondHandler:Landroid/os/Handler;

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mThreadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance p1, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "API1-Handler-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mHandlerTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p1, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "API1-Respond-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mRespondTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;Lcom/freeme/camera/common/device/CameraStateCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freeme/camera/common/device/CameraOpenException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->doOpenCameraSync(Lcom/freeme/camera/common/device/CameraStateCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;Lcom/freeme/camera/common/device/CameraStateCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->doOpenCamera(Lcom/freeme/camera/common/device/CameraStateCallback;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mRequestThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mRequestThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mThreadLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mThreadLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mRetryCount:I

    return p1
.end method

.method static synthetic access$1800(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mRespondTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mRespondHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mRetryCount:I

    return p0
.end method

.method static synthetic access$2600(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mRetryCount:I

    return p0
.end method

.method static synthetic access$2808(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)I
    .locals 2

    iget v0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mRetryCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mHandlerTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mThreadLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mRequestThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$900(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method private doOpenCamera(Lcom/freeme/camera/common/device/CameraStateCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mRespondHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private doOpenCameraSync(Lcom/freeme/camera/common/device/CameraStateCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freeme/camera/common/device/CameraOpenException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mRespondHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->waitDone()Z

    return-void
.end method

.method private waitDone()Z
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$1;

    invoke-direct {v1, p0, v0}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$1;-><init>(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;Ljava/lang/Object;)V

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mRespondHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catch_0
    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->mHandlerTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "waitDone interrupted"

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
