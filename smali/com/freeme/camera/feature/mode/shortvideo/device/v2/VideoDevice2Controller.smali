.class public Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;
.super Lcom/freeme/camera/common/mode/Device2Controller;
.source "VideoDevice2Controller.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;
.implements Lcom/freeme/camera/feature/mode/shortvideo/device/v2/CaptureSurface$ImageCallback;
.implements Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$MyStatusChangeListener;,
        Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$VideoDeviceHandler;,
        Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;
    }
.end annotation


# static fields
.field private static final ASPECT_TOLERANCE:D = 0.001

.field private static final AVAILABLE_RECORD_STATES:Ljava/lang/String; = "com.mediatek.streamingfeature.availableRecordStates"

.field private static final CAPTURE_FORMAT:I = 0x100

.field private static final CAPTURE_MAX_NUMBER:I = 0x2

.field private static final HANDLER_UPDATE_PREVIEW_SURFACE:I = 0x1

.field private static final KEY_DEFAULT_VIDEO_QUALITY:Ljava/lang/String; = "key_default_video_quality"

.field private static final KEY_MATRIX_DISPLAY:Ljava/lang/String; = "key_matrix_display_show"

.field private static final KEY_SCENE_MODE:Ljava/lang/String; = "key_scene_mode"

.field private static final KEY_VIDEO_QUALITY:Ljava/lang/String; = "key_video_quality"

.field private static final QUICK_PREVIEW_KEY:Ljava/lang/String; = "com.mediatek.configure.setting.initrequest"

.field private static final QUICK_PREVIEW_KEY_VALUE:[I

.field private static final RECORD_STATE_REQUEST:Ljava/lang/String; = "com.mediatek.streamingfeature.recordState"

.field private static final STREAMING_FEATURE_STATE_PREVIEW:I = 0x0

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final WAIT_TIME:I = 0x5

.field private static final WIDE_CAMERA_ID:Ljava/lang/String; = "3"

.field private static final XAPI_CAP_FEATURE_KEY:Ljava/lang/String; = "com.mediatek.control.capture.xapiCapFeature"

.field private static final XAPI_CAP_FEATURE_LDC:I = 0x4

.field private static XAPI_CAP_FEATURE_VALUE:[I = null

.field private static final XAPI_PRV_FEATURE_KEY:Ljava/lang/String; = "com.mediatek.control.capture.xapiPrvFeature"

.field private static final XAPI_PRV_FEATURE_LDC:I = 0x10

.field private static XAPI_PRV_FEATURE_VALUE:[I


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAvailableRecordStates:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

.field private mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

.field private mCameraId:Ljava/lang/String;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraState:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

.field private final mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureSurface:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/CaptureSurface;

.field private mDataStore:Lcom/freeme/camera/common/relation/DataStore;

.field private mDeviceCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

.field private mDeviceLock:Ljava/util/concurrent/locks/Lock;

.field private mFirstFrameArrived:Z

.field private mICameraContext:Lcom/freeme/camera/common/ICameraContext;

.field private mIsMatrixDisplayShow:Z

.field private mIsRecorderSurfaceConfigured:Z

.field private mIsRecording:Z

.field private mJpegCallback:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$JpegCallback;

.field private mJpegRotation:I

.field private mLockState:Ljava/util/concurrent/locks/Lock;

.field private mModeDeviceCallback:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$DeviceCallback;

.field private mNeedRConfigSession:Z

.field private mPreviewCallback:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$PreviewCallback;

.field private mPreviewCapProgressCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mPreviewSurfaceSync:Ljava/lang/Object;

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mQuickPreviewKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRecordStateKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRecordSurface:Landroid/view/Surface;

.field private mRestrictionProvider:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$RestrictionProvider;

.field private mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

.field private final mSessionCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

.field private mSettingConfig:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$SettingConfigCallback;

.field private mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

.field private mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

.field private mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

.field private final mVideoHandler:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$VideoDeviceHandler;

.field private mXapiCapFeatureKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mXapiPrvFeatureKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    sput-object v1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->QUICK_PREVIEW_KEY_VALUE:[I

    new-array v1, v0, [I

    const/16 v3, 0x10

    aput v3, v1, v2

    sput-object v1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->XAPI_PRV_FEATURE_VALUE:[I

    new-array v0, v0, [I

    const/4 v1, 0x4

    aput v1, v0, v2

    sput-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->XAPI_CAP_FEATURE_VALUE:[I

    return-void
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

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mQuickPreviewKey:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mIsRecorderSurfaceConfigured:Z

    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mIsMatrixDisplayShow:Z

    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mNeedRConfigSession:Z

    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mFirstFrameArrived:Z

    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mIsRecording:Z

    new-instance v1, Lcom/freeme/camera/common/mode/Device2Controller$DeviceStateCallback;

    invoke-direct {v1, p0}, Lcom/freeme/camera/common/mode/Device2Controller$DeviceStateCallback;-><init>(Lcom/freeme/camera/common/mode/Device2Controller;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mDeviceCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

    sget-object v1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraState:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mPreviewSurfaceSync:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mLockState:Ljava/util/concurrent/locks/Lock;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    new-instance v1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$MyStatusChangeListener;

    invoke-direct {v1, p0, v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$MyStatusChangeListener;-><init>(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$1;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mXapiPrvFeatureKey:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mXapiCapFeatureKey:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$1;-><init>(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSessionCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

    new-instance v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$2;-><init>(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mPreviewCapProgressCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$3;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$3;-><init>(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[VideoDevice2Controller] Construct"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    new-instance p1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/CaptureSurface;

    invoke-direct {p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/CaptureSurface;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCaptureSurface:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/CaptureSurface;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCaptureSurface:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/CaptureSurface;

    invoke-virtual {p1, p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/CaptureSurface;->setCaptureCallback(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/CaptureSurface$ImageCallback;)V

    new-instance p1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$VideoDeviceHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$VideoDeviceHandler;-><init>(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mVideoHandler:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$VideoDeviceHandler;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    sget-object v0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/ICameraContext;->getDeviceManager(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/device/CameraDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    invoke-interface {p2}, Lcom/freeme/camera/common/ICameraContext;->getDataStore()Lcom/freeme/camera/common/relation/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-void
.end method

.method private abortOldSession()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[abortOldSession] + "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    if-eqz v0, :cond_1

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {v1}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->abortCaptures()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

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
    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[abortOldSession] - "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->repeatingPreview(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mIsMatrixDisplayShow:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mIsMatrixDisplayShow:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;)Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$DeviceCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$DeviceCallback;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;)Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;)Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$PreviewCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mPreviewCallback:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$PreviewCallback;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mFirstFrameArrived:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mFirstFrameArrived:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->initProfile()V

    return-void
.end method

.method static synthetic access$1900(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;)Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$JpegCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mJpegCallback:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$JpegCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->doUpdatePreviewSurface()V

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;)Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraState:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;)Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->getCameraState()Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;)Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    return-object p0
.end method

.method static synthetic access$602(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;)Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    return-object p1
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mPreviewSurfaceSync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mIsRecording:Z

    return p0
.end method

.method private configAeFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/media/CamcorderProfile;)V
    .locals 5

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[configAeFpsRange] + "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    iget v1, p2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    iget v4, p2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, v1, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p2, p2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[configAeFpsRange] - "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private configureQuickPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureQuickPreview mQuickPreviewKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mQuickPreviewKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mQuickPreviewKey:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->QUICK_PREVIEW_KEY_VALUE:[I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private configureSession()V
    .locals 5

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[configureSession] + "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->abortOldSession()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mPreviewSurface:Landroid/view/Surface;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCaptureSurface:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/CaptureSurface;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/CaptureSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mRecordSurface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->configSessionSurface(Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->doCreateAndConfigRequest(Z)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[configureSession] builder is null, return"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSessionCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mModeHandler:Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->createCaptureSession(Ljava/util/List;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[configureSession] - "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doCloseCamera(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/CameraDeviceManager;->closeSync(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/CameraDeviceManager;->close(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    return-void
.end method

.method private doCreateAndConfigRequest(Z)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[doCreateAndConfigRequest] builder is null, return null"

    invoke-static {p1, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->setPiSpecialVendorTag(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mProfile:Landroid/media/CamcorderProfile;

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->configAeFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/media/CamcorderProfile;)V

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->configureQuickPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

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

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mDeviceCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

    invoke-virtual {p1, v1, v2, v0}, Lcom/freeme/camera/common/device/CameraDeviceManager;->openCameraSync(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraStateCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mDeviceCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

    invoke-virtual {p1, v1, v2, v0}, Lcom/freeme/camera/common/device/CameraDeviceManager;->openCamera(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraStateCallback;Landroid/os/Handler;)V

    :goto_0
    return-void
.end method

.method private doUpdatePreviewSurface()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doUpdatePreviewSurface] mPreviewSurface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraState:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mNeedRConfigSession = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mNeedRConfigSession:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mRecordSurface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mPreviewSurfaceSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->getCameraState()Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mNeedRConfigSession:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mIsRecorderSurfaceConfigured:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->configureSession()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mNeedRConfigSession:Z

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

.method private getCameraState()Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraState:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private static getOptimalVideoSnapshotPictureSize([Lcom/freeme/camera/common/utils/Size;D)Lcom/freeme/camera/common/utils/Size;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v3}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    sub-double/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_3

    :cond_2
    move-object v0, v3

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private getSupportedPreviewSizes(D)Lcom/freeme/camera/common/utils/Size;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const-class v0, Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->getSupportedSizeForClass(Ljava/lang/Class;)[Lcom/freeme/camera/common/utils/Size;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraId:Ljava/lang/String;

    move-wide v3, p1

    invoke-static/range {v1 .. v8}, Lcom/freeme/camera/common/utils/CameraUtil;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;DZZZLjava/lang/String;)Lcom/freeme/camera/common/utils/Size;

    move-result-object p1

    sget-object p2, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSupportedPreviewSizes] values = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method private getSupportedRecordStates()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.mediatek.streamingfeature.availableRecordStates"

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mAvailableRecordStates:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mAvailableRecordStates:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-nez v0, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->getValueFromKey(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AVAILABLE_RECORD_STATES support value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method private getSupportedSizeForClass(Ljava/lang/Class;)[Lcom/freeme/camera/common/utils/Size;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [Lcom/freeme/camera/common/utils/Size;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/freeme/camera/common/utils/Size;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    aget-object v4, p1, v1

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getValueFromKey(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "was null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was not supported by this device"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private initDeviceInfo()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mActivity:Landroid/app/Activity;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v1, "com.mediatek.configure.setting.initrequest"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/utils/CameraUtil;->getAvailableSessionKeys(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mQuickPreviewKey:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v1, "com.mediatek.control.capture.xapiPrvFeature"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/utils/CameraUtil;->getAvailableSessionKeys(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mXapiPrvFeatureKey:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v1, "com.mediatek.control.capture.xapiCapFeature"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/utils/CameraUtil;->getAvailableSessionKeys(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mXapiCapFeatureKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->initRecordStateKey()V
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
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->parseIntent()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v2, "key_default_video_quality"

    const/4 v3, 0x0

    invoke-virtual {v1, v0}, Lcom/freeme/camera/common/relation/DataStore;->getCameraScope(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v3, "key_video_quality"

    invoke-virtual {v2, v0}, Lcom/freeme/camera/common/relation/DataStore;->getCameraScope(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[initProfile] + cameraId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " quality = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/mediatek/camera/portability/CamcorderProfileEx;->getProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mProfile:Landroid/media/CamcorderProfile;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->reviseVideoCapability()V

    :cond_1
    return-void
.end method

.method private initRecordStateKey()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v2, "com.mediatek.streamingfeature.recordState"

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mRecordStateKey:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_1
    return-void
.end method

.method private initSettingManager(Lcom/freeme/camera/common/setting/ISettingManager;)V
    .locals 2

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0, p0}, Lcom/freeme/camera/common/setting/ISettingManager;->updateModeDevice2Requester(Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingDevice2Configurator()Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/ICameraContext;->getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string v0, "key_scene_mode"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string v0, "key_matrix_display_show"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private initSettings()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->createAllSettings()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mRestrictionProvider:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$RestrictionProvider;

    invoke-interface {v1}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$RestrictionProvider;->getRestriction()Lcom/freeme/camera/common/relation/Relation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->addViewEntry()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->refreshViewEntry()V

    return-void
.end method

.method private isRecordStateSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mRecordStateKey:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mAvailableRecordStates:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->getSupportedRecordStates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
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
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

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

.method private parseIntent()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.extra.videoQuality"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private recycleVariables()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    if-eqz v0, :cond_0

    const-string v1, "key_scene_mode"

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string v1, "key_matrix_display_show"

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mIsMatrixDisplayShow:Z

    return-void
.end method

.method private releaseVariables()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mIsRecorderSurfaceConfigured:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraId:Ljava/lang/String;

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mRecordSurface:Landroid/view/Surface;

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mPreviewSurface:Landroid/view/Surface;

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mIsRecorderSurfaceConfigured:Z

    return-void
.end method

.method private repeatingPreview(Z)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[repeatingPreview] + with needConfigBuiler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mFirstFrameArrived:Z

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->doCreateAndConfigRequest(Z)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[repeatingPreview] - "

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private reviseVideoCapability()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[reviseVideoCapability] + videoFrameRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_scene_mode"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "night"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[reviseVideoCapability] - videoFrameRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private setPiSpecialVendorTag(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    const-string v0, "3"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setPiSpecialVendorTag] curId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WIDE_CAMERA_ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mXapiPrvFeatureKey:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->XAPI_PRV_FEATURE_VALUE:[I

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setPiSpecialVendorTag] prvfeature="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->XAPI_PRV_FEATURE_VALUE:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[setPiSpecialVendorTag] mXapiPrvFeatureKey is NULL"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mXapiCapFeatureKey:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->XAPI_CAP_FEATURE_VALUE:[I

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setPiSpecialVendorTag] capfeature="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->XAPI_CAP_FEATURE_VALUE:[I

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[setPiSpecialVendorTag] mXapiCapFeatureKey is NULL"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->setPiSpecialVendorTag(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mPreviewCapProgressCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    sget-object v1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[setRepeatingBurst] fail"

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

.method private setStopRecordingToCamera()V
    .locals 4

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->getSupportedRecordStates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->isRecordStateSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[setStopRecordingToCamera] mBuilder is null, return"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v1, v2, v1

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mRecordStateKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_1
    return-void
.end method

.method private updateCameraState(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateCameraState] new state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " old ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraState:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraState:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private updatePictureSize()V
    .locals 5

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->initProfile()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCaptureSurface:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/CaptureSurface;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v3, 0x100

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/CaptureSurface;->updatePictureInfo(IIII)V

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updatePictureSize] pictureSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updatePreviewSize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->getSupportedPreviewSizes(D)Lcom/freeme/camera/common/utils/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSettingConfig:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$SettingConfigCallback;

    new-instance v2, Lcom/freeme/camera/common/utils/Size;

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    invoke-interface {v1, v2}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$SettingConfigCallback;->onConfig(Lcom/freeme/camera/common/utils/Size;)V

    return-void
.end method


# virtual methods
.method public closeCamera(Z)V
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[closeCamera] + sync = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " current state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraState:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraState:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    if-eq v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-super {p0, v0}, Lcom/freeme/camera/common/mode/Device2Controller;->doCameraClosed(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;->CAMERA_CLOSING:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->updateCameraState(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->abortOldSession()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$DeviceCallback;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$DeviceCallback;->beforeCloseCamera()V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->doCloseCamera(Z)V

    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->updateCameraState(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->recycleVariables()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCaptureSurface:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/CaptureSurface;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/CaptureSurface;->releaseCaptureSurface()V
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
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/Device2Controller;->doCameraClosed(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->releaseVariables()V

    goto :goto_2

    :goto_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-super {p0, v0}, Lcom/freeme/camera/common/mode/Device2Controller;->doCameraClosed(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_0
    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraId:Ljava/lang/String;

    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[closeCamera] - "

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public configCamera(Landroid/view/Surface;Z)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[configCamera] + "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mNeedRConfigSession:Z

    :cond_0
    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mRecordSurface:Landroid/view/Surface;

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mIsRecorderSurfaceConfigured:Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mVideoHandler:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$VideoDeviceHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$VideoDeviceHandler;->sendEmptyMessageDelayed(IJ)Z

    if-eqz p2, :cond_1

    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mNeedRConfigSession:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mPreviewSurfaceSync:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[configCamera] wait config session + "

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mPreviewSurfaceSync:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V

    sget-object p2, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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
    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[configCamera] - "

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public createAndChangeRepeatingRequest()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    monitor-enter v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mIsRecording:Z

    invoke-direct {p0, v1}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->doCreateAndConfigRequest(Z)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public createAndConfigRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    :try_start_0
    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mIsRecording:Z

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->doCreateAndConfigRequest(Z)Landroid/hardware/camera2/CaptureRequest$Builder;

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

.method public doCameraDisconnected(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2Proxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDisconnected] camera2proxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->updateCameraState(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mActivity:Landroid/app/Activity;

    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcom/freeme/camera/common/utils/CameraUtil;->showErrorInfoAndFinish(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method

.method public doCameraError(Lcom/freeme/camera/common/device/v2/Camera2Proxy;I)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2Proxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_1

    :cond_0
    const/16 p1, 0x41a

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    :cond_1
    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->updateCameraState(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$DeviceCallback;

    invoke-interface {p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$DeviceCallback;->onError()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mActivity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/freeme/camera/common/utils/CameraUtil;->showErrorInfoAndFinish(Landroid/app/Activity;I)V

    :cond_2
    return-void
.end method

.method public doCameraOpened(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2Proxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;->CAMERA_OPENING:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->getCameraState()Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$DeviceCallback;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$DeviceCallback;->onCameraOpened(Ljava/lang/String;)V

    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->updateCameraState(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->updatePictureSize()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mNeedRConfigSession:Z

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->updatePreviewSize()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

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
    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[onOpened] -"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public getCamcorderProfile()Landroid/media/CamcorderProfile;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mProfile:Landroid/media/CamcorderProfile;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->initProfile()V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mProfile:Landroid/media/CamcorderProfile;

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

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

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

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->getCameraState()Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method public lockCamera()V
    .locals 0

    return-void
.end method

.method public onPictureCallback([B)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onPictureCallback]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mJpegCallback:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$JpegCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$JpegCallback;->onDataReceived([B)V

    :cond_0
    return-void
.end method

.method public openCamera(Lcom/freeme/camera/common/setting/ISettingManager;Ljava/lang/String;ZLcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$RestrictionProvider;)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/setting/ISettingManager;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[openCamera] + cameraId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sync = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mRestrictionProvider:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$RestrictionProvider;

    sget-object p4, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->getCameraState()Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    move-result-object v0

    if-ne p4, v0, :cond_1

    iget-object p4, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraId:Ljava/lang/String;

    if-eqz p4, :cond_0

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_3

    :cond_0
    sget-object p4, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;->CAMERA_OPENING:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    invoke-direct {p0, p4}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->updateCameraState(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->initSettingManager(Lcom/freeme/camera/common/setting/ISettingManager;)V

    :try_start_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v0, 0x5

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, p2}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->initDeviceInfo()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->initSettings()V

    invoke-direct {p0, p3}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->doOpenCamera(Z)V
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
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[openCamera] - "

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :goto_2
    iget-object p2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_1
    :goto_3
    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[openCamera] mCameraState = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraState:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public postRecordingRestriction(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/relation/Relation;",
            ">;Z)V"
        }
    .end annotation

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->getCameraState()Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    move-result-object v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/relation/Relation;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->repeatingPreview(Z)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[postRecordingRestriction] state is not right"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public preventChangeSettings()V
    .locals 0

    return-void
.end method

.method public queryCameraDeviceManager()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    sget-object v1, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/ICameraContext;->getDeviceManager(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/device/CameraDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    return-void
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    if-eqz v0, :cond_0

    const-string v1, "key_scene_mode"

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string v1, "key_matrix_display_show"

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCaptureSurface:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/CaptureSurface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/CaptureSurface;->release()V

    :cond_1
    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->updateCameraState(Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$CameraState;)V

    return-void
.end method

.method public requestRestartSession()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->abortOldSession()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->updatePictureSize()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mNeedRConfigSession:Z

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->updatePreviewSize()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setPreviewCallback(Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$PreviewCallback;Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$DeviceCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mPreviewCallback:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$PreviewCallback;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$DeviceCallback;

    return-void
.end method

.method public setSettingConfigCallback(Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$SettingConfigCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSettingConfig:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$SettingConfigCallback;

    return-void
.end method

.method public startPreview()V
    .locals 0

    return-void
.end method

.method public startRecording()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[startRecording] + "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mIsRecording:Z

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->isSupportShutterSound()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v1}, Lcom/freeme/camera/common/ICameraContext;->getSoundPlayback()Lcom/freeme/camera/common/sound/ISoundPlayback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/sound/ISoundPlayback;->play(I)V

    :cond_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->doCreateAndConfigRequest(Z)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[startRecording] - "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public stopPreview()V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->abortOldSession()V

    return-void
.end method

.method public stopRecording()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[stopRecording] +"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->isSupportShutterSound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getSoundPlayback()Lcom/freeme/camera/common/sound/ISoundPlayback;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/sound/ISoundPlayback;->play(I)V

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->setStopRecordingToCamera()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mIsRecording:Z

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[stopRecording] -"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public takePicture(Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$JpegCallback;)V
    .locals 3
    .param p1    # Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$JpegCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[takePicture] +"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mJpegCallback:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$JpegCallback;

    :try_start_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[takePicture] builder is null, return"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->configureQuickPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCaptureSurface:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/CaptureSurface;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/CaptureSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCameraId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mJpegRotation:I

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getJpegRotation(IILandroid/content/Context;)I

    move-result v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->setPiSpecialVendorTag(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mModeHandler:Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;

    invoke-virtual {v0, p1, v1, v2}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[takePicture] -"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public unLockCamera()V
    .locals 0

    return-void
.end method

.method public updateGSensorOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mJpegRotation:I

    return-void
.end method

.method public updatePreviewSurface(Ljava/lang/Object;)V
    .locals 2

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
    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mPreviewSurface:Landroid/view/Surface;

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
    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mPreviewSurface:Landroid/view/Surface;

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mVideoHandler:Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$VideoDeviceHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller$VideoDeviceHandler;->sendEmptyMessage(I)Z

    goto :goto_3

    :cond_4
    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/device/v2/VideoDevice2Controller;->mPreviewSurface:Landroid/view/Surface;

    :goto_3
    return-void
.end method
