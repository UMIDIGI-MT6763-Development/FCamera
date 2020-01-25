.class public Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;
.super Lcom/freeme/camera/common/mode/Device2Controller;
.source "SlowMotionDevice.java"

# interfaces
.implements Lcom/freeme/camera/common/mode/video/device/IDeviceController;
.implements Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$SessionFuture;,
        Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$VideoDeviceHandler;,
        Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;
    }
.end annotation


# static fields
.field private static final HANDLER_UPDATE_PREVIEW_SURFACE:I = 0x1

.field private static final PREPARE_TIMEOUT_MS:I = 0x2710

.field private static final SLOW_MOTION_QUALITY_HIGH:I = 0x8ae

.field private static final SLOW_MOTION_QUALITY_LOW:I = 0x8ac

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final WAIT_TIME:I = 0x5

.field private static final sMtkSlowQualities:[I

.field private static final sSlowQualities:[I


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

.field private mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

.field private mCameraId:Ljava/lang/String;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraState:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;

.field private mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mDataStore:Lcom/freeme/camera/common/relation/DataStore;

.field private mDeviceCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

.field private mDeviceLock:Ljava/util/concurrent/locks/Lock;

.field private mFirstFrameArrived:Z

.field private mICameraContext:Lcom/freeme/camera/common/ICameraContext;

.field private mIsRecorderSurfaceConfigured:Z

.field private mIsRecording:Z

.field private mLockState:Ljava/util/concurrent/locks/Lock;

.field private mModeDeviceCallback:Lcom/freeme/camera/common/mode/video/device/IDeviceController$DeviceCallback;

.field private mNeedRConfigSession:Z

.field private final mPreparedSurfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreviewCallback:Lcom/freeme/camera/common/mode/video/device/IDeviceController$PreviewCallback;

.field private mPreviewCapProgressCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mPreviewSurfaceSync:Ljava/lang/Object;

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mRecordSurface:Landroid/view/Surface;

.field private mRestrictionProvider:Lcom/freeme/camera/common/mode/video/device/IDeviceController$RestrictionProvider;

.field private mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

.field private final mSessionCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

.field private final mSessionFuture:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$SessionFuture;

.field private mSettingConfig:Lcom/freeme/camera/common/mode/video/device/IDeviceController$SettingConfigCallback;

.field private mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

.field private mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

.field private mVideoHandler:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$VideoDeviceHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->sMtkSlowQualities:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->sSlowQualities:[I

    return-void

    :array_0
    .array-data 4
        0x8ac
        0x8ae
    .end array-data

    :array_1
    .array-data 4
        0x7d2
        0x7d3
        0x7d4
        0x7d5
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/freeme/camera/common/ICameraContext;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/ICameraContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/Device2Controller;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mPreparedSurfaces:Ljava/util/HashMap;

    new-instance v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$SessionFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$SessionFuture;-><init>(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$1;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSessionFuture:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$SessionFuture;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mIsRecorderSurfaceConfigured:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mNeedRConfigSession:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mFirstFrameArrived:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mIsRecording:Z

    new-instance v0, Lcom/freeme/camera/common/mode/Device2Controller$DeviceStateCallback;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/mode/Device2Controller$DeviceStateCallback;-><init>(Lcom/freeme/camera/common/mode/Device2Controller;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mDeviceCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraState:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mPreviewSurfaceSync:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mLockState:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$1;-><init>(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSessionCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

    new-instance v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$2;-><init>(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mPreviewCapProgressCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[SlowMotionDevice] Construct"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    new-instance p1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$VideoDeviceHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$VideoDeviceHandler;-><init>(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mVideoHandler:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$VideoDeviceHandler;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    sget-object v0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/ICameraContext;->getDeviceManager(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/device/CameraDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    invoke-interface {p2}, Lcom/freeme/camera/common/ICameraContext;->getDataStore()Lcom/freeme/camera/common/relation/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-void
.end method

.method private abortOldSession()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    if-eqz v0, :cond_1

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {v1}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->abortCaptures()V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {v1}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v2, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v3, "[abortOldSession] exception"

    invoke-static {v2, v3, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->repeatingPreview()V

    return-void
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;)Lcom/freeme/camera/common/mode/video/device/IDeviceController$DeviceCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mModeDeviceCallback:Lcom/freeme/camera/common/mode/video/device/IDeviceController$DeviceCallback;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;)Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$SessionFuture;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSessionFuture:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$SessionFuture;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mPreparedSurfaces:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;)Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;)Lcom/freeme/camera/common/mode/video/device/IDeviceController$PreviewCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mPreviewCallback:Lcom/freeme/camera/common/mode/video/device/IDeviceController$PreviewCallback;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mFirstFrameArrived:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mFirstFrameArrived:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->doUpdatePreviewSurface()V

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;)Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraState:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;)Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->getCameraState()Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;)Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    return-object p0
.end method

.method static synthetic access$602(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;)Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    return-object p1
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mPreviewSurfaceSync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mIsRecording:Z

    return p0
.end method

.method private checkerProfile()Landroid/media/CamcorderProfile;
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->sMtkSlowQualities:[I

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->findProfileForRange([I)Landroid/media/CamcorderProfile;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->sSlowQualities:[I

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->findProfileForRange([I)Landroid/media/CamcorderProfile;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[checkerProfile] profile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private configAeFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/media/CamcorderProfile;Z)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/util/Size;

    iget v1, p2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget p2, p2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v0, v1, p2}, Landroid/util/Size;-><init>(II)V

    invoke-direct {p0, v0, p3}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->getHighSpeedFixedFpsRangeForSize(Landroid/util/Size;Z)Landroid/util/Range;

    move-result-object p2

    if-eqz p2, :cond_0

    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p3, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[configAeFpsRange] = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[configAeFpsRange] error fps range not found"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private configureSession()V
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[configureSession] + "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->abortOldSession()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mPreviewSurface:Landroid/view/Surface;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mRecordSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->configSessionSurface(Ljava/util/List;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSessionCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mModeHandler:Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;

    invoke-virtual {v1, v0, v2, v3}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[configureSession] - "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doCloseCamera(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/CameraDeviceManager;->closeSync(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/CameraDeviceManager;->close(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    return-void
.end method

.method private doCreateAndConfigRequest(Z)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doCreateAndConfigRequest] isRecording = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[doCreateAndConfigRequest] builder is null, return null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mProfile:Landroid/media/CamcorderProfile;

    invoke-direct {p0, v0, v1, p1}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->configAeFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/media/CamcorderProfile;Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private doOpenCamera(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freeme/camera/common/device/CameraOpenException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mDeviceCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

    invoke-virtual {p1, v1, v2, v0}, Lcom/freeme/camera/common/device/CameraDeviceManager;->openCameraSync(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraStateCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mDeviceCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

    invoke-virtual {p1, v1, v2, v0}, Lcom/freeme/camera/common/device/CameraDeviceManager;->openCamera(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraStateCallback;Landroid/os/Handler;)V

    :goto_0
    return-void
.end method

.method private doUpdatePreviewSurface()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doUpdatePreviewSurface] mPreviewSurface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraState:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mNeedRConfigSession = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mNeedRConfigSession:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mRecordSurface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mIsRecorderSurfaceConfigured = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mIsRecorderSurfaceConfigured:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mPreviewSurfaceSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraState:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mNeedRConfigSession:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mIsRecorderSurfaceConfigured:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->configureSession()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mNeedRConfigSession:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private findProfileForRange([I)Landroid/media/CamcorderProfile;
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget v2, p1, v0

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget v2, p1, v0

    invoke-static {v1, v2}, Lcom/mediatek/camera/portability/CamcorderProfileEx;->getProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    new-instance v2, Landroid/util/Size;

    iget v3, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->getHighSpeedFixedFpsRangeForSize(Landroid/util/Size;Z)Landroid/util/Range;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    if-ne v2, v3, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find slow motion FrameRate is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Camera id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCameraState()Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraState:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private getHighSpeedFixedFpsRangeForSize(Landroid/util/Size;Z)Landroid/util/Range;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "Z)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object p1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[getHighSpeedFpsRange] range = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object p1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[getHighSpeedFpsRangeForSize] range = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private initDeviceInfo()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mActivity:Landroid/app/Activity;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initProfile()V
    .locals 3

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->checkerProfile()Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mProfile:Landroid/media/CamcorderProfile;

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "profile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " * "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private initSettingManager(Lcom/freeme/camera/common/setting/ISettingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {p1, p0}, Lcom/freeme/camera/common/setting/ISettingManager;->updateModeDevice2Requester(Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingDevice2Configurator()Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    return-void
.end method

.method private initSettings()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->createAllSettings()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mRestrictionProvider:Lcom/freeme/camera/common/mode/video/device/IDeviceController$RestrictionProvider;

    invoke-interface {v1}, Lcom/freeme/camera/common/mode/video/device/IDeviceController$RestrictionProvider;->getRestriction()Lcom/freeme/camera/common/relation/Relation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->addViewEntry()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->refreshViewEntry()V

    return-void
.end method

.method private isSupportShutterSound()Z
    .locals 4

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    const-string v1, "CAMERA_SHUTTER_SOUND_SUPPORT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    const-string v1, "CAMERA_SHUTTER_SOUND_SUPPORT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "off"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraPhotoShutterSoundDefault:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraPhotoShutterSoundDefault:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "off"

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v2, "key_shutter_sound"

    invoke-virtual {v1}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private prepareRecorderSurface()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mPreparedSurfaces:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mRecordSurface:Landroid/view/Surface;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "waitForSurfacePrepared prepare and wait"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->prepare(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mRecordSurface:Landroid/view/Surface;

    const-wide/16 v2, 0x2710

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->waitForSurfacePrepared(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;Landroid/view/Surface;J)V

    :cond_2
    return-void
.end method

.method private releaseVariables()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mPreparedSurfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraId:Ljava/lang/String;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mPreviewSurface:Landroid/view/Surface;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mRecordSurface:Landroid/view/Surface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mIsRecorderSurfaceConfigured:Z

    return-void
.end method

.method private repeatingPreview()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[repeatingPreview] + "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mFirstFrameArrived:Z

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->doCreateAndConfigRequest(Z)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->setRepeatingBurst(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[repeatingPreview] - "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private setRepeatingBurst(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mPreviewCapProgressCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    sget-object v1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[setRepeatingBurst] fail"

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[setRepeatingBurst] mSession is null"

    invoke-static {p1, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method private updateCameraState(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateCameraState] new state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " old ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraState:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraState:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private updatePreviewSize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->initProfile()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSettingConfig:Lcom/freeme/camera/common/mode/video/device/IDeviceController$SettingConfigCallback;

    new-instance v1, Lcom/freeme/camera/common/utils/Size;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/mode/video/device/IDeviceController$SettingConfigCallback;->onConfig(Lcom/freeme/camera/common/utils/Size;)V

    return-void
.end method

.method private waitForSurfacePrepared(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;Landroid/view/Surface;J)V
    .locals 9

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mPreparedSurfaces:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mPreparedSurfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "waitForSurfacePrepared no need to wait"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    move-wide v1, p3

    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mPreparedSurfaces:Ljava/util/HashMap;

    invoke-virtual {v7, p3, p4}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    sub-long/2addr v1, v7

    iget-object v5, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mPreparedSurfaces:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    if-eqz v5, :cond_1

    invoke-interface {v5, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object p1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "waitForSurfacePrepared wait done"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_2
    :try_start_3
    sget-object p1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "waitForSurfacePrepared wait time"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method


# virtual methods
.method public closeCamera(Z)V
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[closeCamera] sync = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mCameraState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraState:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->getCameraState()Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-super {p0, v0}, Lcom/freeme/camera/common/mode/Device2Controller;->doCameraClosed(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;->CAMERA_CLOSING:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->updateCameraState(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mModeDeviceCallback:Lcom/freeme/camera/common/mode/video/device/IDeviceController$DeviceCallback;

    invoke-interface {v0}, Lcom/freeme/camera/common/mode/video/device/IDeviceController$DeviceCallback;->beforeCloseCamera()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->abortOldSession()V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->doCloseCamera(Z)V

    sget-object p1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->updateCameraState(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/Device2Controller;->doCameraClosed(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->releaseVariables()V

    goto :goto_2

    :goto_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-super {p0, v0}, Lcom/freeme/camera/common/mode/Device2Controller;->doCameraClosed(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_0
    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraId:Ljava/lang/String;

    sget-object p1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[closeCamera] - "

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public configCamera(Landroid/view/Surface;Z)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[configCamera] + "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mNeedRConfigSession:Z

    :cond_0
    iput-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mRecordSurface:Landroid/view/Surface;

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mIsRecorderSurfaceConfigured:Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mVideoHandler:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$VideoDeviceHandler;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$VideoDeviceHandler;->sendEmptyMessage(I)Z

    if-eqz p2, :cond_1

    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mNeedRConfigSession:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mPreviewSurfaceSync:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[configCamera] wait config session + "

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mPreviewSurfaceSync:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V

    sget-object p2, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[configCamera] wait config session - "

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_1
    :goto_2
    sget-object p1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[configCamera] - "

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public createAndChangeRepeatingRequest()V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mIsRecording:Z

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->doCreateAndConfigRequest(Z)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->setRepeatingBurst(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public createAndConfigRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    :try_start_0
    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mIsRecording:Z

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->doCreateAndConfigRequest(Z)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected doCameraDisconnected(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDisconnected] camera2proxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object p1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->updateCameraState(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mActivity:Landroid/app/Activity;

    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcom/freeme/camera/common/utils/CameraUtil;->showErrorInfoAndFinish(Landroid/app/Activity;I)V

    return-void
.end method

.method protected doCameraError(Lcom/freeme/camera/common/device/v2/Camera2Proxy;I)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onError] camera2proxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_1

    :cond_0
    const/16 p1, 0x41a

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    :cond_1
    sget-object p1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->updateCameraState(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mModeDeviceCallback:Lcom/freeme/camera/common/mode/video/device/IDeviceController$DeviceCallback;

    invoke-interface {p1}, Lcom/freeme/camera/common/mode/video/device/IDeviceController$DeviceCallback;->onError()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mActivity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/freeme/camera/common/utils/CameraUtil;->showErrorInfoAndFinish(Landroid/app/Activity;I)V

    :cond_2
    return-void
.end method

.method protected doCameraOpened(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onOpened] + camera2proxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "camera2Proxy id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mCameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;->CAMERA_OPENING:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->getCameraState()Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    sget-object p1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->updateCameraState(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mModeDeviceCallback:Lcom/freeme/camera/common/mode/video/device/IDeviceController$DeviceCallback;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/mode/video/device/IDeviceController$DeviceCallback;->onCameraOpened(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mNeedRConfigSession:Z

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->updatePreviewSize()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    sget-object p1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[onOpened] -"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public getCamcorderProfile()Landroid/media/CamcorderProfile;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mProfile:Landroid/media/CamcorderProfile;

    return-object v0
.end method

.method public getCamera()Lcom/freeme/camera/common/device/v1/CameraProxy;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentCaptureSession()Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    return-object v0
.end method

.method public getModeSharedCaptureSurface()Lcom/freeme/camera/common/mode/photo/device/CaptureSurface;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "get invalid capture surface!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getModeSharedPreviewSurface()Landroid/view/Surface;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "get invalid capture surface!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getModeSharedThumbnailSurface()Landroid/view/Surface;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "get invalid capture surface!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRepeatingTemplateType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public isReadyForCapture()Z
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->getCameraState()Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isReadyForCapture] canCapture = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public isVssSupported(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public lockCamera()V
    .locals 0

    return-void
.end method

.method public openCamera(Lcom/freeme/camera/common/setting/ISettingManager;Ljava/lang/String;ZLcom/freeme/camera/common/mode/video/device/IDeviceController$RestrictionProvider;)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/setting/ISettingManager;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[openCamera] + cameraId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",sync = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->getCameraState()Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;->CAMERA_OPENING:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->updateCameraState(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraId:Ljava/lang/String;

    iput-object p4, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mRestrictionProvider:Lcom/freeme/camera/common/mode/video/device/IDeviceController$RestrictionProvider;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->initSettingManager(Lcom/freeme/camera/common/setting/ISettingManager;)V

    :try_start_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v0, 0x5

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, p2}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->initDeviceInfo()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->initSettings()V

    invoke-direct {p0, p3}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->doOpenCamera(Z)V
    :try_end_0
    .catch Lcom/freeme/camera/common/device/CameraOpenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object p1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[openCamera] -"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :goto_2
    iget-object p2, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_1
    :goto_3
    sget-object p1, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[openCamera] mCameraState = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraState:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public postRecordingRestriction(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/relation/Relation;",
            ">;Z)V"
        }
    .end annotation

    return-void
.end method

.method public preventChangeSettings()V
    .locals 0

    return-void
.end method

.method public queryCameraDeviceManager()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    sget-object v1, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/ICameraContext;->getDeviceManager(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/device/CameraDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    return-void
.end method

.method public release()V
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->updateCameraState(Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$CameraState;)V

    return-void
.end method

.method public requestRestartSession()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->abortOldSession()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mNeedRConfigSession:Z

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->updatePreviewSize()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setPreviewCallback(Lcom/freeme/camera/common/mode/video/device/IDeviceController$PreviewCallback;Lcom/freeme/camera/common/mode/video/device/IDeviceController$DeviceCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mPreviewCallback:Lcom/freeme/camera/common/mode/video/device/IDeviceController$PreviewCallback;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mModeDeviceCallback:Lcom/freeme/camera/common/mode/video/device/IDeviceController$DeviceCallback;

    return-void
.end method

.method public setSettingConfigCallback(Lcom/freeme/camera/common/mode/video/device/IDeviceController$SettingConfigCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mSettingConfig:Lcom/freeme/camera/common/mode/video/device/IDeviceController$SettingConfigCallback;

    return-void
.end method

.method public startPreview()V
    .locals 0

    return-void
.end method

.method public startRecording()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[startRecording] + "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->prepareRecorderSurface()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mIsRecording:Z

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->doCreateAndConfigRequest(Z)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->setRepeatingBurst(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->isSupportShutterSound()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v1}, Lcom/freeme/camera/common/ICameraContext;->getSoundPlayback()Lcom/freeme/camera/common/sound/ISoundPlayback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/sound/ISoundPlayback;->play(I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[startRecording] - "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :catch_0
    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[startRecording] fail"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public stopPreview()V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->abortOldSession()V

    return-void
.end method

.method public stopRecording()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[stopRecording] + "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->isSupportShutterSound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getSoundPlayback()Lcom/freeme/camera/common/sound/ISoundPlayback;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/sound/ISoundPlayback;->play(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mIsRecording:Z

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->repeatingPreview()V

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[stopRecording] - "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public takePicture(Lcom/freeme/camera/common/mode/video/device/IDeviceController$JpegCallback;)V
    .locals 0
    .param p1    # Lcom/freeme/camera/common/mode/video/device/IDeviceController$JpegCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    return-void
.end method

.method public unLockCamera()V
    .locals 0

    return-void
.end method

.method public updateGSensorOrientation(I)V
    .locals 0

    return-void
.end method

.method public updatePreviewSurface(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updatePreviewSurface] surfaceHolder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mPreviewSurface:Landroid/view/Surface;

    goto :goto_2

    :cond_1
    instance-of v1, p1, Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/view/Surface;

    check-cast p1, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    :goto_1
    iput-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mPreviewSurface:Landroid/view/Surface;

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mVideoHandler:Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$VideoDeviceHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice$VideoDeviceHandler;->sendEmptyMessage(I)Z

    goto :goto_3

    :cond_4
    iput-object v0, p0, Lcom/freeme/camera/feature/mode/slowmotion/SlowMotionDevice;->mPreviewSurface:Landroid/view/Surface;

    :goto_3
    return-void
.end method
