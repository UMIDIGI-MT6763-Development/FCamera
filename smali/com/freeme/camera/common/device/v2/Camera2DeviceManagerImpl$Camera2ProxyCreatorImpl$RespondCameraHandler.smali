.class Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;
.super Landroid/os/Handler;
.source "Camera2DeviceManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RespondCameraHandler"
.end annotation


# static fields
.field static final MSG_CLOSE_CAMERA:I = 0x1

.field static final MSG_OPEN_CAMERA:I


# instance fields
.field private mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mDeviceInfoListener:Lcom/freeme/camera/common/device/v2/Camera2Handler$IDeviceInfoListener;

.field private mIsOnOpenCallback:Z

.field private mOpenLock:Ljava/lang/Object;

.field private volatile mOpenStateCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

.field private mOpenStateCallbackSync:Ljava/lang/Object;

.field private mRequestHandler:Lcom/freeme/camera/common/device/v2/Camera2Handler;

.field private final mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field final synthetic this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mOpenStateCallbackSync:Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mOpenLock:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mIsOnOpenCallback:Z

    new-instance p1, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$1;

    invoke-direct {p1, p0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$1;-><init>(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;)V

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mDeviceInfoListener:Lcom/freeme/camera/common/device/v2/Camera2Handler$IDeviceInfoListener;

    new-instance p1, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;

    invoke-direct {p1, p0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler$2;-><init>(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;)V

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-void
.end method

.method static synthetic access$1500(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;)Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->createHandlerAndProxy(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->notifyStateCallback()V

    return-void
.end method

.method static synthetic access$2000(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;Lcom/freeme/camera/common/device/v2/Camera2Proxy;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;)Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mOpenStateCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

    return-object p0
.end method

.method private createHandlerAndProxy(Landroid/hardware/camera2/CameraDevice;)V
    .locals 7

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->access$2200(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    new-instance v0, Lcom/freeme/camera/common/device/v2/Camera2Handler;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    invoke-static {v1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->access$2300(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    invoke-static {v1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->access$2400(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    invoke-static {v1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->access$700(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Landroid/os/Handler;

    move-result-object v4

    iget-object v6, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mDeviceInfoListener:Lcom/freeme/camera/common/device/v2/Camera2Handler$IDeviceInfoListener;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/freeme/camera/common/device/v2/Camera2Handler;-><init>(Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;Landroid/hardware/camera2/CameraDevice;Lcom/freeme/camera/common/device/v2/Camera2Handler$IDeviceInfoListener;)V

    iput-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mRequestHandler:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->access$2500(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance v0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    invoke-static {v1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->access$2600(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mRequestHandler:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    iget-object v3, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    invoke-static {v3}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->access$700(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice;Lcom/freeme/camera/common/device/v2/Camera2Handler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mRequestHandler:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->updateCamera2Proxy(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V

    :cond_0
    return-void
.end method

.method private doOpenException()V
    .locals 6

    invoke-direct {p0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->isNeedRetryOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->access$900(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doOpenException] retry time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    invoke-static {v2}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->access$1000(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->openCamera()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->access$900(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[doOpenException] result with exception!"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mOpenStateCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

    new-instance v1, Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    invoke-static {v2}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->access$1100(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v4, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mRequestHandler:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    iget-object v5, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    invoke-static {v5}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->access$700(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice;Lcom/freeme/camera/common/device/v2/Camera2Handler;Landroid/os/Handler;)V

    const/16 v2, 0x41a

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;->onError(Lcom/freeme/camera/common/device/v2/Camera2Proxy;I)V

    return-void
.end method

.method private isNeedRetryOpen()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->access$1200(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->access$1308(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private notifyStateCallback()V
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mIsOnOpenCallback:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mOpenLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mIsOnOpenCallback:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mIsOnOpenCallback:Z

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mOpenLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private openCamera()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mIsOnOpenCallback:Z

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    iget-object v0, v0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->this$0:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl;->access$800(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl;)Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    invoke-static {v1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->access$600(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v3, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    invoke-static {v3}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->access$700(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->waitStateCallback()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    invoke-static {v1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;->access$900(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[openCamera] error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->doOpenException()V

    :goto_0
    return-void
.end method

.method private waitStateCallback()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mIsOnOpenCallback:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mOpenLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mIsOnOpenCallback:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mOpenLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clearOpenOperation()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mOpenStateCallbackSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mOpenStateCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$DummyCameraStateCallback;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$DummyCameraStateCallback;-><init>(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$1;)V

    iput-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mOpenStateCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->removeMessages(I)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl;->access$400()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "handle close camera msg +"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mRequestHandler:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->closeCamera()V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    iput-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iput-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    :cond_0
    invoke-static {}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl;->access$400()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "handle close camera msg -"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl;->access$400()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v2, "handle open camera msg +"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

    if-nez p1, :cond_1

    new-instance p1, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$DummyCameraStateCallback;

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;

    invoke-direct {p1, v0, v1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$DummyCameraStateCallback;-><init>(Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl;Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$1;)V

    :cond_1
    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mOpenStateCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->openCamera()V

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mOpenStateCallbackSync:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mOpenStateCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mOpenStateCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl$Camera2ProxyCreatorImpl$RespondCameraHandler;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;->onOpened(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V

    :cond_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl;->access$400()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "handle open camera msg -"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
