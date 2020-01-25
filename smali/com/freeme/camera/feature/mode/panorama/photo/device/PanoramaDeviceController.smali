.class public Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;
.super Lcom/freeme/camera/common/mode/Device2Controller;
.source "PanoramaDeviceController.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;
.implements Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface$ImageCallback;
.implements Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;
    }
.end annotation


# static fields
.field private static final CAPTURE_FORMAT:I = 0x100

.field private static final CAPTURE_MAX_NUMBER:I = 0x2

.field private static final CAPTURE_MAX_NUMBER_THUMBNAIL:I = 0x5

.field private static final INTERRUPT_TIME_OUT:I = 0x1b58

.field private static final KEY_PICTURE_SIZE:Ljava/lang/String; = "key_picture_size"

.field public static final PANORAMA_ACTION_HIDE_VIEW:I = 0x3

.field private static final PANORAMA_ACTION_KEY:Ljava/lang/String; = "com.mediatek.streamingfeature.xapiPanoramaAction"

.field public static final PANORAMA_ACTION_NORMAL_PREVIEW:I = 0x0

.field private static PANORAMA_ACTION_REQ_VALUE:[I = null

.field public static final PANORAMA_ACTION_STITCH_CAPTURE:I = 0x2

.field public static final PANORAMA_ACTION_STITCH_PREVIEW:I = 0x1

.field private static final PANORAMA_DIRECTION_KEY:Ljava/lang/String; = "com.mediatek.streamingfeature.xapiPanoramaDirection"

.field private static PANORAMA_HAL_INFO_VALUE:[I = null

.field private static final PANORAMA_MOVING_KEY:Ljava/lang/String; = "com.mediatek.streamingfeature.xapiPanoramaMoveInfo"

.field private static final PANORAMA_TAKE_PHOTO_KEY:Ljava/lang/String; = "com.mediatek.streamingfeature.xapiPanoramaTakePhoto"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final WAIT_TIME:I = 0x5

.field private static final XAPI_CAP_FEATURE_KEY:Ljava/lang/String; = "com.mediatek.control.capture.xapiCapFeature"

.field private static XAPI_CAP_FEATURE_VALUE:[I = null

.field private static final XAPI_PREVIEW_FEATURE_KEY:Ljava/lang/String; = "com.mediatek.control.capture.xapiPrvFeature"

.field private static final XAPI_PREVIEW_FEATURE_PANORAMA:I = 0x4

.field private static XAPI_PREVIEW_FEATURE_VALUE:[I = null

.field private static final mXapiCapFeature_Panorama:I = 0x1

.field private static sRelation:Lcom/freeme/camera/common/relation/Relation;


# instance fields
.field private mActionSync:Ljava/lang/Object;

.field private final mActivity:Landroid/app/Activity;

.field private mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private volatile mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

.field private mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraState:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

.field private final mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureDataCallback:Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;

.field private mCaptureFrameMap:Ljava/util/concurrent/ConcurrentHashMap;

.field private final mCaptureSurface:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;

.field private mCaptureSync:Ljava/lang/Object;

.field private mCurrentCameraId:Ljava/lang/String;

.field private final mDeviceCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

.field private mDeviceLock:Ljava/util/concurrent/locks/Lock;

.field private mFirstFrameArrived:Z

.field private final mICameraContext:Lcom/freeme/camera/common/ICameraContext;

.field private mIsInCapturing:Z

.field private mIsPanoramaWorking:Z

.field private mIsPictureSizeChanged:Z

.field private mJpegRotation:I

.field private mLockState:Ljava/util/concurrent/locks/Lock;

.field private mModeDeviceCallback:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$DeviceCallback;

.field private mPanoramaActionReq:I

.field private mPanoramaActionReqKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mPanoramaDirectionKey:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mPanoramaMovingCallback:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$PanoramaMovingCallback;

.field private mPanoramaMovingKey:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mPanoramaTakePhotoKey:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private final mPreviewCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private volatile mPreviewHeight:I

.field private mPreviewSizeCallback:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$PreviewSizeCallback;

.field private mPreviewSurface:Landroid/view/Surface;

.field private volatile mPreviewWidth:I

.field private volatile mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

.field private final mSessionCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

.field private mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

.field private mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

.field private mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

.field private final mSurfaceHolderSync:Ljava/lang/Object;

.field private final mThumbnailSurface:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;

.field private mXapiCapFeatureKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mXapiPreviewFeatureKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mZsdStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [I

    sput-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->PANORAMA_HAL_INFO_VALUE:[I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    sput-object v1, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->XAPI_CAP_FEATURE_VALUE:[I

    new-array v1, v0, [I

    const/4 v3, 0x4

    aput v3, v1, v2

    sput-object v1, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->XAPI_PREVIEW_FEATURE_VALUE:[I

    new-array v0, v0, [I

    sput-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->PANORAMA_ACTION_REQ_VALUE:[I

    const/4 v0, 0x0

    sput-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->sRelation:Lcom/freeme/camera/common/relation/Relation;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/freeme/camera/common/ICameraContext;)V
    .locals 3
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

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaMovingKey:Landroid/hardware/camera2/CaptureResult$Key;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaDirectionKey:Landroid/hardware/camera2/CaptureResult$Key;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mXapiCapFeatureKey:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mXapiPreviewFeatureKey:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaActionReqKey:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaTakePhotoKey:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "on"

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mZsdStatus:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSurfaceHolderSync:Ljava/lang/Object;

    new-instance v1, Lcom/freeme/camera/common/mode/Device2Controller$DeviceStateCallback;

    invoke-direct {v1, p0}, Lcom/freeme/camera/common/mode/Device2Controller$DeviceStateCallback;-><init>(Lcom/freeme/camera/common/mode/Device2Controller;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mDeviceCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaMovingCallback:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$PanoramaMovingCallback;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mFirstFrameArrived:Z

    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mIsPictureSizeChanged:Z

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mLockState:Ljava/util/concurrent/locks/Lock;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    sget-object v2, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureFrameMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureSync:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mIsInCapturing:Z

    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mIsPanoramaWorking:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mActionSync:Ljava/lang/Object;

    iput v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaActionReq:I

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    new-instance v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$1;-><init>(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSessionCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

    new-instance v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$2;-><init>(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$3;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$3;-><init>(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mActivity:Landroid/app/Activity;

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    new-instance p1, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;

    invoke-direct {p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureSurface:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureSurface:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;

    invoke-virtual {p1, p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;->setCaptureCallback(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface$ImageCallback;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    sget-object p2, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-interface {p1, p2}, Lcom/freeme/camera/common/ICameraContext;->getDeviceManager(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/device/CameraDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    new-instance p1, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;

    invoke-direct {p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mThumbnailSurface:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mThumbnailSurface:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;

    invoke-virtual {p1, p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;->setCaptureCallback(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface$ImageCallback;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mThumbnailSurface:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;

    const-string p2, "thumbnail"

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;->setFormat(Ljava/lang/String;)V

    iput v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaActionReq:I

    return-void
.end method

.method private abortOldSession()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {v0}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->abortCaptures()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[abortOldSession] exception"

    invoke-static {v1, v2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$DeviceCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$DeviceCallback;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->updateCameraState(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mFirstFrameArrived:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mFirstFrameArrived:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->captureDoneNotify(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mIsPanoramaWorking:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->notifyMovingKey(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    return-object p0
.end method

.method static synthetic access$202(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;)Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    return-object p1
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->getCameraState()Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSurfaceHolderSync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->repeatingPreview()V

    return-void
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureFrameMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Lcom/freeme/camera/common/ICameraContext;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    return-object p0
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    return-object p0
.end method

.method private canOpenCamera(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    sget-object v2, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    sget-object v2, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[canOpenCamera] new id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " current camera :"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isSameCamera = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " current state : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " isStateReady = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " can open : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v3
.end method

.method private captureDoneNotify(Z)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[captureDoneNotify] mIsInCapturing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mIsInCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", needNotify = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureSync:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mIsInCapturing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mIsInCapturing:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private configureSession()V
    .locals 5

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[configureSession]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->abortOldSession()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewSurface:Landroid/view/Surface;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureSurface:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->isPostViewSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mThumbnailSurface:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->configSessionSurface(Ljava/util/List;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->doCreateAndConfigRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSessionCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mModeHandler:Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->createCaptureSession(Ljava/util/List;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mIsPictureSizeChanged:Z

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    :catch_1
    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[configureSession] error"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private doCloseCamera(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/CameraDeviceManager;->closeSync(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/CameraDeviceManager;->close(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureFrameMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSurfaceHolderSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewSurface:Landroid/view/Surface;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private doCreateAndConfigRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doCreateAndConfigRequest] mCamera2Proxy ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->setSpecialVendorTag(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p1}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->configPostViewRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private doCreateAndConfigStillCaptureRequest()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doCreateAndConfigStillCaptureRequest]mCamera2Proxy ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v0}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->configPostViewRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureSurface:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->setSpecialVendorTag(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const-string v1, "off"

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mZsdStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[takePicture] take picture with preview image."

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[takePicture] take picture not with preview image."

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->isPostViewOverrideSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mThumbnailSurface:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_1
    invoke-static {v0}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->setDefaultJpegThumbnailSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v0}, Lcom/freeme/camera/common/mode/photo/P2DoneInfo;->enableP2Done(Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mJpegRotation:I

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v2, v3}, Lcom/freeme/camera/common/utils/CameraUtil;->getJpegRotationFromDeviceSpec(IILandroid/content/Context;)I

    move-result v1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
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

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mDeviceCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

    invoke-virtual {p1, v1, v2, v0}, Lcom/freeme/camera/common/device/CameraDeviceManager;->openCameraSync(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraStateCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mDeviceCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

    invoke-virtual {p1, v1, v2, v0}, Lcom/freeme/camera/common/device/CameraDeviceManager;->openCamera(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraStateCallback;Landroid/os/Handler;)V

    :goto_0
    return-void
.end method

.method private getCameraState()Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private getTargetPreviewSize(D)Lcom/freeme/camera/common/utils/Size;
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-class v2, Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    array-length v2, v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    new-instance v5, Lcom/freeme/camera/common/utils/Size;

    aget-object v6, v1, v3

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    aget-object v7, v1, v3

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    invoke-interface {v4, v3, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mActivity:Landroid/app/Activity;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCurrentCameraId:Ljava/lang/String;

    move-wide v5, p1

    invoke-static/range {v3 .. v10}, Lcom/freeme/camera/common/utils/CameraUtil;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;DZZZLjava/lang/String;)Lcom/freeme/camera/common/utils/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewWidth:I

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewHeight:I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_1
    sget-object p1, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getTargetPreviewSize] "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewWidth:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " X "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewHeight:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private initSettingManager(Lcom/freeme/camera/common/setting/ISettingManager;)V
    .locals 1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {p1, p0}, Lcom/freeme/camera/common/setting/ISettingManager;->updateModeDevice2Requester(Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingDevice2Configurator()Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    return-void
.end method

.method private initSettings()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->createAllSettings()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/mode/photo/P2DoneInfo;->setCameraCharacteristics(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V

    invoke-static {}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaRestriction;->getRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v0

    const-string v1, "on"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->sRelation:Lcom/freeme/camera/common/relation/Relation;

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->sRelation:Lcom/freeme/camera/common/relation/Relation;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->addViewEntry()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->refreshViewEntry()V

    return-void
.end method

.method private notifyMovingKey(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 8

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaMovingCallback:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$PanoramaMovingCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->PANORAMA_HAL_INFO_VALUE:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v2, -0x1

    const/4 v4, 0x2

    aput v2, v0, v4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaMovingKey:Landroid/hardware/camera2/CaptureResult$Key;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v2, "com.mediatek.streamingfeature.xapiPanoramaMoveInfo"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getResultKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaMovingKey:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaMovingKey:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    sget-object v2, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[notifyMovingKey] mPanoramaMovingKey value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v2, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->PANORAMA_HAL_INFO_VALUE:[I

    aget v0, v0, v1

    aput v0, v2, v1

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaDirectionKey:Landroid/hardware/camera2/CaptureResult$Key;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v5, "com.mediatek.streamingfeature.xapiPanoramaDirection"

    invoke-static {v2, v5}, Lcom/freeme/camera/common/utils/CameraUtil;->getResultKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaDirectionKey:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_3
    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaDirectionKey:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v2, :cond_4

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v2, :cond_4

    array-length v5, v2

    if-lez v5, :cond_4

    sget-object v5, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[notifyMovingKey] mPanoramaDirectionKey value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v2, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v5, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->PANORAMA_HAL_INFO_VALUE:[I

    aget v2, v2, v1

    aput v2, v5, v3

    move v2, v3

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    iget-object v5, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaTakePhotoKey:Landroid/hardware/camera2/CaptureResult$Key;

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v6, "com.mediatek.streamingfeature.xapiPanoramaTakePhoto"

    invoke-static {v5, v6}, Lcom/freeme/camera/common/utils/CameraUtil;->getResultKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v5

    iput-object v5, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaTakePhotoKey:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_5
    iget-object v5, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaTakePhotoKey:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v5, :cond_6

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_6

    array-length v5, p1

    if-lez v5, :cond_6

    sget-object v5, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[notifyMovingKey] mPanoramaTakePhotoKey value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, p1, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v5, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->PANORAMA_HAL_INFO_VALUE:[I

    aget p1, p1, v1

    aput p1, v5, v4

    move v1, v3

    :cond_6
    if-nez v0, :cond_7

    if-nez v2, :cond_7

    if-eqz v1, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaMovingCallback:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$PanoramaMovingCallback;

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->PANORAMA_HAL_INFO_VALUE:[I

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$PanoramaMovingCallback;->onMoving([I)V

    :cond_8
    return-void
.end method

.method private recycleVariables()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->updatePreviewSurface(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mIsPictureSizeChanged:Z

    return-void
.end method

.method private repeatingPreview()V
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[repeatingPreview] mSession ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mCamera ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mFirstFrameArrived:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->setSpecialVendorTag(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureSurface:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;

    invoke-virtual {v1, p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;->setCaptureCallback(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface$ImageCallback;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mModeHandler:Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;

    invoke-virtual {v1, v0, v2, v3}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[repeatingPreview] error"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private setSpecialVendorTag(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mXapiPreviewFeatureKey:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->XAPI_PREVIEW_FEATURE_VALUE:[I

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setPreviewVendorFeatureTag] previewfeature="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->XAPI_PREVIEW_FEATURE_VALUE:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mXapiCapFeatureKey:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->XAPI_CAP_FEATURE_VALUE:[I

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setCaptureVendorTag] capmode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->XAPI_CAP_FEATURE_VALUE:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaActionReqKey:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mActionSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->PANORAMA_ACTION_REQ_VALUE:[I

    iget v3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaActionReq:I

    aput v3, v2, v1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaActionReqKey:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->PANORAMA_ACTION_REQ_VALUE:[I

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setPreviewVendorActionTag] mPanoramaActionReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaActionReq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method private updateCameraState(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateCameraState] new state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " old ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private updatePreviewSize()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_picture_size"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updatePreviewSize] :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v1, v1

    int-to-double v3, v0

    div-double/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->getTargetPreviewSize(D)Lcom/freeme/camera/common/utils/Size;

    :cond_0
    return-void
.end method


# virtual methods
.method public closeCamera(Z)V
    .locals 5

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[closeCamera] + sync = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " current state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-super {p0, v1}, Lcom/freeme/camera/common/mode/Device2Controller;->doCameraClosed(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V

    sget-object v1, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;->CAMERA_CLOSING:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    invoke-direct {p0, v1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->updateCameraState(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->abortOldSession()V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$DeviceCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$DeviceCallback;

    invoke-interface {v1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$DeviceCallback;->beforeCloseCamera()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->doCloseCamera(Z)V

    sget-object p1, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->updateCameraState(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->recycleVariables()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureSurface:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;->releaseCaptureSurface()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/Device2Controller;->doCameraClosed(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureSync:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mIsInCapturing:Z

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/Device2Controller;->doCameraClosed(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureSync:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mIsInCapturing:Z

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->recycleVariables()V

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :goto_1
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-super {p0, v1}, Lcom/freeme/camera/common/mode/Device2Controller;->doCameraClosed(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mIsInCapturing:Z

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1

    :catchall_3
    move-exception p1

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p1

    :cond_1
    :goto_2
    sget-object p1, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[closeCamera] -"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public createAndChangeRepeatingRequest()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    sget-object v1, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "createAndChangeRepeatingRequest"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->repeatingPreview()V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "camera is closed or in opening state can\'t request "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public createAndConfigRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->doCreateAndConfigRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[createAndConfigRequest]  again "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_1
    return-object p1
.end method

.method public destroyDeviceController()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureSurface:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;->releaseCaptureSurface()V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mThumbnailSurface:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;->releaseCaptureSurface()V

    :cond_1
    return-void
.end method

.method public doCameraDisconnected(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2Proxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDisconnected] camera2proxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mActivity:Landroid/app/Activity;

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

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eq v0, p1, :cond_1

    :cond_0
    const/16 p1, 0x41a

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    :cond_1
    sget-object p1, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->updateCameraState(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mActivity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/freeme/camera/common/utils/CameraUtil;->showErrorInfoAndFinish(Landroid/app/Activity;I)V

    :cond_2
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->captureDoneNotify(Z)V

    return-void
.end method

.method public doCameraOpened(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2Proxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onOpened]  camera2proxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " preview surface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  mCameraState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "camera2Proxy id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mCameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;->CAMERA_OPENING:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->getCameraState()Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    move-result-object v1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$DeviceCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$DeviceCallback;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCurrentCameraId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$DeviceCallback;->onCameraOpened(Ljava/lang/String;)V

    :cond_0
    sget-object p1, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->updateCameraState(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->updatePreviewSize()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewSizeCallback:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$PreviewSizeCallback;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewSizeCallback:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$PreviewSizeCallback;

    new-instance v0, Lcom/freeme/camera/common/utils/Size;

    iget v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewWidth:I

    iget v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewHeight:I

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$PreviewSizeCallback;->onPreviewSizeReady(Lcom/freeme/camera/common/utils/Size;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureSync:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mIsInCapturing:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCurrentCaptureSession()Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

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

.method public getPreviewSize(D)Lcom/freeme/camera/common/utils/Size;
    .locals 4

    iget v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewWidth:I

    iget v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewHeight:I

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->getTargetPreviewSize(D)Lcom/freeme/camera/common/utils/Size;

    iget p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewHeight:I

    if-ne v1, p1, :cond_0

    iget p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object p2, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getPreviewSize] old size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " X "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " new  size :"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewWidth:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " X "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewHeight:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mIsPictureSizeChanged:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->configureSession()V

    :cond_1
    new-instance p1, Lcom/freeme/camera/common/utils/Size;

    iget p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewWidth:I

    iget v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewHeight:I

    invoke-direct {p1, p2, v0}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    return-object p1
.end method

.method public getRepeatingTemplateType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isReadyForCapture()Z
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->getCameraState()Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    move-result-object v0

    sget-object v2, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-object v2, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isReadyForCapture] canCapture = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mIsInCapturing:Z

    if-eqz v3, :cond_1

    move v0, v1

    :cond_1
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPictureCallback([BILjava/lang/String;II)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<onPictureCallback> data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", format = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", formatTag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCaptureDataCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureDataCallback:Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mFirstFrameArrived:Z

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureDataCallback:Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;

    invoke-direct {v1}, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;-><init>()V

    iput-object p1, v1, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;->data:[B

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;->needUpdateThumbnail:Z

    iput-boolean v0, v1, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;->needRestartPreview:Z

    iput p2, v1, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;->mBufferFormat:I

    iput p5, v1, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;->imageHeight:I

    iput p4, v1, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;->imageWidth:I

    invoke-static {}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->isPostViewSupported()Z

    move-result p2

    if-eqz p2, :cond_0

    iput-boolean v0, v1, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;->needUpdateThumbnail:Z

    :cond_0
    const-string p2, "thumbnail"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureDataCallback:Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;

    invoke-interface {p2, p1}, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;->onPostViewCallback([B)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureDataCallback:Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;

    invoke-interface {p1, v1}, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;->onDataReceived(Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;)V

    invoke-direct {p0, v2}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->captureDoneNotify(Z)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mActionSync:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaActionReq:I

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->repeatingPreview()V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public openCamera(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaDeviceInfo;)V
    .locals 6

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaDeviceInfo;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaDeviceInfo;->getNeedOpenCameraSync()Z

    move-result v1

    sget-object v2, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[openCamera] cameraId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",sync = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaDeviceInfo;->getSettingManager()Lcom/freeme/camera/common/setting/ISettingManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->initSettingManager(Lcom/freeme/camera/common/setting/ISettingManager;)V

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->canOpenCamera(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x3e8

    :try_start_0
    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCurrentCameraId:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v2, "com.mediatek.control.capture.xapiPrvFeature"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getAvailableSessionKeys(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mXapiPreviewFeatureKey:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v2, "com.mediatek.control.capture.xapiCapFeature"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getAvailableSessionKeys(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mXapiCapFeatureKey:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v2, "com.mediatek.streamingfeature.xapiPanoramaAction"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getRequestKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaActionReqKey:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v2, "com.mediatek.streamingfeature.xapiPanoramaMoveInfo"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getResultKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaMovingKey:Landroid/hardware/camera2/CaptureResult$Key;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v2, "com.mediatek.streamingfeature.xapiPanoramaDirection"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getResultKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaDirectionKey:Landroid/hardware/camera2/CaptureResult$Key;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v2, "com.mediatek.streamingfeature.xapiPanoramaTakePhoto"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getResultKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaTakePhotoKey:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->initSettings()V

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;->CAMERA_OPENING:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->updateCameraState(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;)V

    invoke-direct {p0, v1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->doOpenCamera(Z)V
    :try_end_0
    .catch Lcom/freeme/camera/common/device/CameraOpenException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
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

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catch_1
    :try_start_2
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/freeme/camera/common/utils/CameraUtil;->showErrorInfoAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v1, Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;->SECURITY_EXCEPTION:Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;

    invoke-virtual {v0}, Lcom/freeme/camera/common/device/CameraOpenException;->getExceptionType()Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;

    move-result-object v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/freeme/camera/common/utils/CameraUtil;->showErrorInfoAndFinish(Landroid/app/Activity;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_1
    :goto_2
    return-void
.end method

.method public queryCameraDeviceManager()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    sget-object v1, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/ICameraContext;->getDeviceManager(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/device/CameraDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    return-void
.end method

.method public reqStitchCapture()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[reqStitchCapture]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mActionSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_0
    iput v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaActionReq:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->repeatingPreview()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public requestRestartSession()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[requestRestartSession] mSession= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->configureSession()V

    return-void
.end method

.method public resetPreview()V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->repeatingPreview()V

    return-void
.end method

.method public setDeviceCallback(Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$DeviceCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$DeviceCallback;

    return-void
.end method

.method public setPanoramaMovingCallback(Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$PanoramaMovingCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaMovingCallback:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$PanoramaMovingCallback;

    return-void
.end method

.method public setPictureSize(Lcom/freeme/camera/common/utils/Size;)V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureSurface:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v2

    const/16 v3, 0x100

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;->updatePictureInfo(IIII)Z

    move-result v0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mIsPictureSizeChanged:Z

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->updateThumbnailSize(D)V

    invoke-static {}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->isPostViewSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mThumbnailSurface:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;

    invoke-static {}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->getThumbnailWidth()I

    move-result v0

    invoke-static {}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->getThumbnailHeight()I

    move-result v1

    const/16 v2, 0x23

    const/4 v3, 0x5

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaCaptureSurface;->updatePictureInfo(IIII)Z

    :cond_0
    return-void
.end method

.method public setPreviewSizeReadyCallback(Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$PreviewSizeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewSizeCallback:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$PreviewSizeCallback;

    return-void
.end method

.method public setZSDStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mZsdStatus:Ljava/lang/String;

    return-void
.end method

.method public startAutoRama(I)V
    .locals 1

    sget-object p1, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[startAutoRama]"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mActionSync:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaActionReq:I

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mIsPanoramaWorking:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startPreview()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[startPreview]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->configureSession()V

    return-void
.end method

.method public stopAutoRama(Z)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[stopAutoRama]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mActionSync:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaActionReq:I

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mIsPanoramaWorking:Z

    return-void
.end method

.method public stopPreview()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[stopPreview]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->abortOldSession()V

    return-void
.end method

.method public takePicture(Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[takePicture] mSession= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mIsInCapturing:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureDataCallback:Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;

    sget-object p1, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;->CAMERA_CAPTURING:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->updateCameraState(Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;)V

    :try_start_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mActionSync:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x2

    :try_start_2
    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPanoramaActionReq:I

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->doCreateAndConfigStillCaptureRequest()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mModeHandler:Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;

    invoke-virtual {v0, p1, v1, v2}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    sget-object p1, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[takePicture] error because create build fail."

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCaptureSync:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mIsInCapturing:Z

    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :catchall_2
    move-exception p1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public updateGSensorOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mJpegRotation:I

    return-void
.end method

.method public updatePreviewSurface(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updatePreviewSurface] surfaceHolder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mSurfaceHolderSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    instance-of v1, p1, Landroid/view/SurfaceHolder;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewSurface:Landroid/view/Surface;

    goto :goto_2

    :cond_1
    instance-of v1, p1, Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/view/Surface;

    move-object v1, p1

    check-cast v1, Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    :goto_1
    iput-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mPreviewSurface:Landroid/view/Surface;

    :cond_3
    :goto_2
    sget-object v1, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController$CameraState;

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->configureSession()V

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceController;->stopPreview()V

    :cond_6
    :goto_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
