.class Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;
.super Landroid/os/Handler;
.source "CameraDeviceManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RespondCameraHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$DummyCameraStateCallback;
    }
.end annotation


# static fields
.field static final MSG_NOTIFY_ON_CLOSED:I = 0x1

.field static final MSG_OPEN_CAMERA:I


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

.field private mDeviceInfoListener:Lcom/freeme/camera/common/device/v1/CameraHandler$IDeviceInfoListener;

.field private mDummyCameraStateCallback:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$DummyCameraStateCallback;

.field private mOpenStateCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;

.field private mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

.field final synthetic this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$DummyCameraStateCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$DummyCameraStateCallback;-><init>(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$1;)V

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mDummyCameraStateCallback:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$DummyCameraStateCallback;

    new-instance p1, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$2;

    invoke-direct {p1, p0}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$2;-><init>(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;)V

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mCameraErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    new-instance p1, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$3;

    invoke-direct {p1, p0}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$3;-><init>(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;)V

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mDeviceInfoListener:Lcom/freeme/camera/common/device/v1/CameraHandler$IDeviceInfoListener;

    return-void
.end method

.method static synthetic access$1900(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;)Lcom/freeme/camera/common/device/v1/CameraHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;)Lcom/freeme/camera/common/device/v1/CameraProxy;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;Lcom/freeme/camera/common/device/v1/CameraProxy;)Lcom/freeme/camera/common/device/v1/CameraProxy;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;)Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mOpenStateCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method private isNeedRetryOpen()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$2700(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$2808(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private retryOpenCamera()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$2400(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/mediatek/camera/portability/CameraEx;->openLegacy(II)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-static {v1}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$400(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[retryOpenCamera] error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->isNeedRetryOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mOpenStateCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;

    invoke-virtual {v0}, Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;->onRetry()V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$400(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[retryOpenCamera] retry time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-static {v2}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$2500(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->retryOpenCamera()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mOpenStateCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;

    new-instance v1, Lcom/freeme/camera/common/device/v1/CameraProxy;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-static {v2}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$2600(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    iget-object v4, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-direct {v1, v2, v3, v4}, Lcom/freeme/camera/common/device/v1/CameraProxy;-><init>(Ljava/lang/String;Lcom/freeme/camera/common/device/v1/CameraHandler;Landroid/hardware/Camera;)V

    const/16 v2, 0x41a

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;->onError(Lcom/freeme/camera/common/device/v1/CameraProxy;I)V

    :goto_0
    return-void
.end method

.method private waitDone()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$1;

    invoke-direct {v1, p0, v0}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$1;-><init>(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;Ljava/lang/Object;)V

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v2, v1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v1

    const-string v2, "waitDone interrupted"

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-static {}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "onClose"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mOpenStateCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;->onClosed(Lcom/freeme/camera/common/device/v1/CameraProxy;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mCamera:Landroid/hardware/Camera;

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    goto/16 :goto_2

    :pswitch_1
    invoke-static {}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "handle open camera msg."

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mDummyCameraStateCallback:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$DummyCameraStateCallback;

    :cond_0
    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mOpenStateCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    const/16 v0, 0x41a

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-static {p1}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$400(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v1, "[openCamera]+"

    invoke-static {p1, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    iget-object p1, p1, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->this$0:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;

    invoke-static {p1}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->access$500(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;)Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-static {v3}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$600(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API1:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-static {p1, v3, v4}, Lcom/freeme/camera/common/loader/FeatureLoader;->notifySettingBeforeOpenCamera(Landroid/content/Context;Ljava/lang/String;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V

    invoke-direct {p0}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->retryOpenCamera()V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-static {p1}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$400(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[openCamera]-, executing time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mCamera:Landroid/hardware/Camera;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-static {p1}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$400(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "[openCamera] result with exception!"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-static {p1}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$700(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-static {p1}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$800(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/freeme/camera/common/device/v1/CameraHandler;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    iget-object v1, v1, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->this$0:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;

    invoke-static {v1}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->access$500(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-static {v1}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$900(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-static {v1}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$1000(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v6, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mDeviceInfoListener:Lcom/freeme/camera/common/device/v1/CameraHandler$IDeviceInfoListener;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/freeme/camera/common/device/v1/CameraHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/hardware/Camera;Lcom/freeme/camera/common/device/v1/CameraHandler$IDeviceInfoListener;)V

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-static {p1}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$1500(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mCameraErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->waitDone()V

    new-instance p1, Lcom/freeme/camera/common/device/v1/CameraProxy;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-static {v1}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$1600(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    iget-object v3, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-direct {p1, v1, v2, v3}, Lcom/freeme/camera/common/device/v1/CameraProxy;-><init>(Ljava/lang/String;Lcom/freeme/camera/common/device/v1/CameraHandler;Landroid/hardware/Camera;)V

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-static {p1}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$400(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[openCamera] mRequestThread.getLooper() is null, mRequestThread.isAlive() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-static {v2}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$1100(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCameraProxyCreatorList.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    iget-object v2, v2, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->this$0:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;

    invoke-static {v2}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->access$1200(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mOpenStateCallback.onError, return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mOpenStateCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;

    new-instance v1, Lcom/freeme/camera/common/device/v1/CameraProxy;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-static {v2}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$1300(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    iget-object v4, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-direct {v1, v2, v3, v4}, Lcom/freeme/camera/common/device/v1/CameraProxy;-><init>(Ljava/lang/String;Lcom/freeme/camera/common/device/v1/CameraHandler;Landroid/hardware/Camera;)V

    invoke-virtual {p1, v1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;->onError(Lcom/freeme/camera/common/device/v1/CameraProxy;I)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-static {p1}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$1400(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->getOriginalParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_1
    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mOpenStateCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mDummyCameraStateCallback:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler$DummyCameraStateCallback;

    if-eq p1, v2, :cond_5

    invoke-static {}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v1, "get parameters fail after open camera so return"

    invoke-static {p1, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mOpenStateCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {p1, v1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;->onError(Lcom/freeme/camera/common/device/v1/CameraProxy;I)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mOpenStateCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;->onOpened(Lcom/freeme/camera/common/device/v1/CameraProxy;)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl$RespondCameraHandler;->this$1:Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-static {p1, v1}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$1702(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;I)I

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
