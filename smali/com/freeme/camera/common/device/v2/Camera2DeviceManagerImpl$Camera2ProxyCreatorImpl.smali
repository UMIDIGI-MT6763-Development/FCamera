.class Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;
.super Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;
.source "Camera2DeviceManagerImpl.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Camera2ProxyCreatorImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$DummyCameraStateCallback;,
        Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;
    }
.end annotation


# instance fields
.field private final mHandlerTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private final mOpenHandler:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

.field private final mRespondHandler:Landroid/os/Handler;

.field private final mRespondTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field final synthetic this$0:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->this$0:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl;

    sget-object v0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-direct {p0, p1, v0, p2}, Lcom/freeme/camera/common/device/CameraDeviceManager$CameraProxyCreator;-><init>(Lcom/freeme/camera/common/device/CameraDeviceManager;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mThreadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    new-instance p1, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mRespondThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;-><init>(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mRespondHandler:Landroid/os/Handler;

    new-instance p1, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;-><init>(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mOpenHandler:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mThreadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance p1, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "API2-De-Handler-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mHandlerTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p1, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "API2-De-Respond-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mRespondTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->doCloseCamera()V

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->doCloseCameraSync()V

    return-void
.end method

.method static synthetic access$1000(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mRetryCount:I

    return p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mRetryCount:I

    return p0
.end method

.method static synthetic access$1308(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)I
    .locals 2

    iget v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mRetryCount:I

    return v0
.end method

.method static synthetic access$1400(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mRespondTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mRetryCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;Lcom/freeme/camera/common/device/CameraStateCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->doOpenCameraSync(Lcom/freeme/camera/common/device/CameraStateCallback;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mThreadLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mRequestThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mThreadLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;Lcom/freeme/camera/common/device/CameraStateCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->doOpenCamera(Lcom/freeme/camera/common/device/CameraStateCallback;)V

    return-void
.end method

.method static synthetic access$600(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mRespondHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mHandlerTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object p0
.end method

.method private doCloseCamera()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mOpenHandler:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    invoke-virtual {v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->clearOpenOperation()V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mOpenHandler:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private doCloseCameraSync()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mOpenHandler:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    invoke-virtual {v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->clearOpenOperation()V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mOpenHandler:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->waitDone()Z

    return-void
.end method

.method private doOpenCamera(Lcom/freeme/camera/common/device/CameraStateCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mOpenHandler:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mOpenHandler:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private doOpenCameraSync(Lcom/freeme/camera/common/device/CameraStateCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mOpenHandler:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mOpenHandler:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->waitDone()Z

    return-void
.end method

.method private waitDone()Z
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$1;

    invoke-direct {v1, p0, v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$1;-><init>(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;Ljava/lang/Object;)V

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mOpenHandler:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;

    invoke-virtual {v2, v1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->post(Ljava/lang/Runnable;)Z
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
    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->mHandlerTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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
