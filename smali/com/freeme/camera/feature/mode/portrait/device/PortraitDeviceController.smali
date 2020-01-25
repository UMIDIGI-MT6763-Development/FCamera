.class public Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;
.super Ljava/lang/Object;
.source "PortraitDeviceController.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/portrait/device/IDeviceController;
.implements Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController$PortraitDeviceHandler;,
        Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController$CameraState;
    }
.end annotation


# static fields
.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_IMAGE_UNCOMPRESSED:I = 0x17

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

.field private volatile mCameraState:Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController$CameraState;

.field private mICameraContext:Lcom/freeme/camera/common/ICameraContext;

.field private mRequestHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/freeme/camera/common/ICameraContext;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/ICameraContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController$CameraState;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController$CameraState;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DeviceController"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController$PortraitDeviceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0, p0}, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController$PortraitDeviceHandler;-><init>(Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;Landroid/os/Looper;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mRequestHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mActivity:Landroid/app/Activity;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    sget-object p2, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API1:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-interface {p1, p2}, Lcom/freeme/camera/common/ICameraContext;->getDeviceManager(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/device/CameraDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    return-void
.end method

.method static synthetic access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;)Lcom/freeme/camera/common/ICameraContext;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;)Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController$CameraState;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController$CameraState;

    return-object p0
.end method

.method static synthetic access$202(Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController$CameraState;)Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController$CameraState;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController$CameraState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;)Lcom/freeme/camera/common/device/CameraDeviceManager;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mRequestHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private waitDone()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController$1;

    invoke-direct {v1, p0, v0}, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController$1;-><init>(Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;Ljava/lang/Object;)V

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
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
    sget-object v1, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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
.method public closeCamera(Z)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mRequestHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->waitDone()V

    return-void
.end method

.method public destroyDeviceController()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mRequestHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getPreviewSize(D)Lcom/freeme/camera/common/utils/Size;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mRequestHandler:Landroid/os/Handler;

    const/16 p2, 0x9

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->waitDone()V

    new-instance p1, Lcom/freeme/camera/common/utils/Size;

    const/4 p2, 0x1

    aget-wide v1, v0, p2

    double-to-int p2, v1

    const/4 v1, 0x2

    aget-wide v1, v0, v1

    double-to-int v0, v1

    invoke-direct {p1, p2, v0}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    return-object p1
.end method

.method public isReadyForCapture()Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mRequestHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->waitDone()V

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public openCamera(Lcom/freeme/camera/feature/mode/portrait/DeviceInfo;)V
    .locals 3

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/portrait/DeviceInfo;->getNeedOpenCameraSync()Z

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mRequestHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->waitDone()V

    :cond_0
    return-void
.end method

.method public queryCameraDeviceManager()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    sget-object v1, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API1:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/ICameraContext;->getDeviceManager(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/device/CameraDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    return-void
.end method

.method public requestChangeCommand(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mRequestHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public requestChangeCommandImmediately(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mRequestHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public requestChangeSettingValue(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mRequestHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public requestChangeSettingValueJustSelf(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mRequestHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setDeviceCallback(Lcom/freeme/camera/feature/mode/portrait/device/IDeviceController$DeviceCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mRequestHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPictureSize(Lcom/freeme/camera/common/utils/Size;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mRequestHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setPreviewSizeReadyCallback(Lcom/freeme/camera/feature/mode/portrait/device/IDeviceController$PreviewSizeCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mRequestHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setZSDStatus(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startPreview()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mRequestHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stopPreview()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mRequestHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->waitDone()V

    return-void
.end method

.method public takePicture(Lcom/freeme/camera/feature/mode/portrait/device/IDeviceController$CaptureDataCallback;)V
    .locals 2
    .param p1    # Lcom/freeme/camera/feature/mode/portrait/device/IDeviceController$CaptureDataCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mRequestHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateGSensorOrientation(I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mRequestHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updatePreviewSurface(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/PortraitDeviceController;->mRequestHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
