.class Lcom/freeme/camera/common/device/v2/Camera2Handler;
.super Lcom/freeme/camera/common/device/HistoryHandler;
.source "Camera2Handler.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/device/v2/Camera2Handler$HandlerExecutor;,
        Lcom/freeme/camera/common/device/v2/Camera2Handler$IDeviceInfoListener;
    }
.end annotation


# instance fields
.field private mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

.field private volatile mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private final mCameraId:Ljava/lang/String;

.field private mCaptureSessionProxyHandler:Landroid/os/Handler;

.field private final mIDeviceInfoListener:Lcom/freeme/camera/common/device/v2/Camera2Handler$IDeviceInfoListener;

.field private final mRespondHandler:Landroid/os/Handler;

.field private volatile mSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private mSessionStateProxyCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

.field private final mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;Landroid/hardware/camera2/CameraDevice;Lcom/freeme/camera/common/device/v2/Camera2Handler$IDeviceInfoListener;)V
    .locals 2
    .param p2    # Landroid/os/Looper;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Landroid/hardware/camera2/CameraDevice;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Lcom/freeme/camera/common/device/v2/Camera2Handler$IDeviceInfoListener;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lcom/freeme/camera/common/device/HistoryHandler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mSessionMap:Ljava/util/Map;

    new-instance v0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;-><init>(Lcom/freeme/camera/common/device/v2/Camera2Handler;)V

    iput-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    const-string v0, "Construct Camera2Handler,the looper must not null"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Construct Camera2Handler,the respondHandler must not null"

    invoke-static {p3, p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Construct Camera2Handler,the device must not null"

    invoke-static {p4, p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "API2-Handler-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraId:Ljava/lang/String;

    iput-object p3, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mRespondHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iput-object p5, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mIDeviceInfoListener:Lcom/freeme/camera/common/device/v2/Camera2Handler$IDeviceInfoListener;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mSessionMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mSessionStateProxyCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static synthetic access$302(Lcom/freeme/camera/common/device/v2/Camera2Handler;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$400(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCaptureSessionProxyHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mRespondHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private createCaptureSession(Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_0
    iget-object v0, p1, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mSurfaces:Ljava/util/List;

    iget-object v1, p1, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

    iput-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mSessionStateProxyCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

    iget-object v1, p1, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCaptureSessionProxyHandler:Landroid/os/Handler;

    iget-object v1, p1, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[createCaptureSession] mBuilder is null"

    invoke-static {p1, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mRespondHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    return-void

    :cond_1
    iget-object v1, p1, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mOutputConfigs:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    new-instance v0, Landroid/hardware/camera2/params/SessionConfiguration;

    iget-object v1, p1, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mOutputConfigs:Ljava/util/List;

    new-instance v3, Lcom/freeme/camera/common/device/v2/Camera2Handler$HandlerExecutor;

    iget-object v4, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mRespondHandler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Lcom/freeme/camera/common/device/v2/Camera2Handler$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v4, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[createCaptureSession] with mOutputConfigs"

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V

    return-void

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    new-instance v4, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v4, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/hardware/camera2/params/SessionConfiguration;

    new-instance v3, Lcom/freeme/camera/common/device/v2/Camera2Handler$HandlerExecutor;

    iget-object v4, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mRespondHandler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Lcom/freeme/camera/common/device/v2/Camera2Handler$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v4, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[createCaptureSession] with parameters"

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V

    return-void
.end method

.method private createHighSpeedRequest(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object p1, p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mCaptureRequest:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CaptureRequest;

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    check-cast v0, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private createHighSpeedSession(Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_0
    iget-object v0, p1, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mSurfaces:Ljava/util/List;

    iget-object v1, p1, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

    iput-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mSessionStateProxyCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

    iget-object p1, p1, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCaptureSessionProxyHandler:Landroid/os/Handler;

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mRespondHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraDevice;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private createReprocessingSession(Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_0
    iget-object v0, p1, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    iget-object v1, p1, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mSurfaces:Ljava/util/List;

    iget-object v2, p1, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

    iput-object v2, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mSessionStateProxyCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

    iget-object p1, p1, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCaptureSessionProxyHandler:Landroid/os/Handler;

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v3, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mRespondHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private dealException()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mIDeviceInfoListener:Lcom/freeme/camera/common/device/v2/Camera2Handler$IDeviceInfoListener;

    invoke-interface {v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler$IDeviceInfoListener;->onError()V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->generateHistoryString(I)Ljava/lang/String;

    return-void
.end method

.method private finalizeOutputConfigurations(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCaptureSession;->finalizeOutputConfigurations(Ljava/util/List;)V

    return-void
.end method

.method private handleRequestMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2Actions;->stringify(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->isCameraClosed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2Actions;->stringify(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->isSessionClosed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->finalizeOutputConfigurations(Ljava/util/List;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->createHighSpeedRequest(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mResultRequest:Ljava/util/List;

    goto/16 :goto_1

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Z

    check-cast p1, [Z

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->isReprocessable()Z

    move-result v0

    aput-boolean v0, p1, v1

    goto/16 :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    goto/16 :goto_1

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Landroid/view/Surface;

    check-cast p1, [Landroid/view/Surface;

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    aput-object v0, p1, v1

    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    goto :goto_1

    :pswitch_6
    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    goto :goto_1

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;

    iget-object v0, p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mSessionNum:[I

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->setRepeatingBurst(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;)I

    move-result p1

    aput p1, v0, v1

    goto :goto_1

    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;

    iget-object v0, p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mSessionNum:[I

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->setRepeatingRequest(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;)I

    move-result p1

    aput p1, v0, v1

    goto :goto_1

    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;

    iget-object v0, p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mSessionNum:[I

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->startBurstCapture(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;)I

    move-result p1

    aput p1, v0, v1

    goto :goto_1

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;

    iget-object v0, p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mSessionNum:[I

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->startCapture(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;)I

    move-result p1

    aput p1, v0, v1

    goto :goto_1

    :pswitch_b
    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCaptureSession;->prepare(Landroid/view/Surface;)V

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleRequestMessage] Unimplemented msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->dealException()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleSessionMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2Actions;->stringify(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->isCameraClosed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    goto :goto_0

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/freeme/camera/common/device/v2/Camera2Proxy$RequestCreatorInfo;

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v1, p1, Lcom/freeme/camera/common/device/v2/Camera2Proxy$RequestCreatorInfo;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/v2/Camera2Proxy$RequestCreatorInfo;->setReprocessRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$RequestCreatorInfo;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy$RequestCreatorInfo;->setCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->createHighSpeedSession(Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->createReprocessingSession(Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;)V

    goto :goto_1

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->createCaptureSession(Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;)V

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleSessionMessage] Unimplemented msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->dealException()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isCameraClosed(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "camera is closed,can not call : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method private isSessionClosed(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "session is closed,can not call : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method private setRepeatingBurst(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mCaptureRequest:Ljava/util/List;

    iget-object v1, p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object p1, p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2, v0, v1, p1}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p1

    return p1
.end method

.method private setRepeatingRequest(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mCaptureRequest:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    iget-object v1, p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object p1, p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2, v0, v1, p1}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p1

    return p1
.end method

.method private startBurstCapture(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mCaptureRequest:Ljava/util/List;

    iget-object v1, p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object p1, p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2, v0, v1, p1}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p1

    return p1
.end method

.method private startCapture(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mCaptureRequest:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    iget-object v1, p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object p1, p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2, v0, v1, p1}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public closeCamera()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iput-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method protected doHandleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2Actions;->isSessionMessageType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->handleSessionMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->handleRequestMessage(Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/freeme/camera/common/device/HistoryHandler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mMsgStartTime:J

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    invoke-virtual {v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2Actions;->stringify(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mMsgStartTime:J

    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->printStartMsg(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->doHandleMessage(Landroid/os/Message;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mMsgStopTime:J

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    invoke-virtual {p1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2Actions;->stringify(I)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mMsgStopTime:J

    iget-wide v3, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mMsgStartTime:J

    sub-long/2addr v1, v3

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->printStopMsg(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method updateCamera2Proxy(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V
    .locals 1
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2Proxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const-string v0, "updateCamera2Proxy,the proxy must not null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    return-void
.end method
