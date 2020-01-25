.class Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;
.super Lcom/freeme/camera/common/mode/Device2Controller;
.source "SdofPhotoDeviceController.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;
.implements Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface$ImageCallback;
.implements Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;
    }
.end annotation


# static fields
.field private static final CAPTURE_FORMAT:I = 0x100

.field private static final CAPTURE_MAX_NUMBER:I = 0x2

.field private static final CAPTURE_MAX_NUMBER_THUMBNAIL:I = 0x5

.field private static CURRENT_DOFLEVEL_VALUE:[I = null

.field private static final DISABLED_ALPHA:I = 0x66

.field private static final DOF_LEVEL_KEY:Ljava/lang/String; = "com.mediatek.stereofeature.doflevel"

.field private static final DUAL_CAMERA_TOO_FAR:I = -0x80000000

.field private static DUAL_CAMERA_TOO_FAR_VALUE:[I = null

.field private static final ENABLED_ALPHA:I = 0xff

.field private static final INTERRUPT_TIME_OUT:I = 0x1b58

.field private static final KEY_PICTURE_SIZE:Ljava/lang/String; = "key_picture_size"

.field private static final LEVEL_DEFAULT:I = 0x7

.field private static final MTK_VSDOF_FEATURE_CAPTURE_WARNING_MSG:Ljava/lang/String; = "com.mediatek.vsdoffeature.vsdofFeatureCaptureWarningMsg"

.field private static final MTK_VSDOF_FEATURE_WARNING:Ljava/lang/String; = "com.mediatek.vsdoffeature.vsdofFeatureWarning"

.field private static final PREVIEW_SIZE_KEY:Ljava/lang/String; = "com.mediatek.vsdoffeature.vsdofFeaturePreviewSize"

.field private static final PREVIEW_SIZE_KEY_VALUE:[I

.field private static final SDOF_MODE_PREVIEW_SIZE_HEIGHT:I = 0x3c0

.field private static final SDOF_MODE_PREVIEW_SIZE_WITH:I = 0x500

.field private static final STEREO_WARNING_KEY:Ljava/lang/String; = "com.mediatek.stereofeature.stereowarning"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final VSDOF_KEY:Ljava/lang/String; = "com.mediatek.multicamfeature.multiCamFeatureMode"

.field private static final VSDOF_KEY_VALUE:[I

.field private static final WAIT_TIME:I = 0x5

.field private static mVsdofWarningValue:I

.field private static sRelation:Lcom/freeme/camera/common/relation/Relation;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private volatile mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

.field private mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraState:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

.field private final mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureDataCallback:Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;

.field private mCaptureFrameMap:Ljava/util/concurrent/ConcurrentHashMap;

.field private final mCaptureSurface:Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;

.field private mCaptureSync:Ljava/lang/Object;

.field private mCurrentCameraId:Ljava/lang/String;

.field private mCurrentLevel:I

.field private mDataStore:Lcom/freeme/camera/common/relation/DataStore;

.field private final mDeviceCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

.field private mDeviceLock:Ljava/util/concurrent/locks/Lock;

.field private mDofLevelKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mFirstFrameArrived:Z

.field private final mICameraContext:Lcom/freeme/camera/common/ICameraContext;

.field private mIsInCapturing:Z

.field private mIsPictureSizeChanged:Z

.field private mJpegRotation:I

.field private mLockState:Ljava/util/concurrent/locks/Lock;

.field private mModeDeviceCallback:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$DeviceCallback;

.field private final mPreviewCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private volatile mPreviewHeight:I

.field private mPreviewSizeCallback:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$PreviewSizeCallback;

.field private mPreviewSizeKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mPreviewSurface:Landroid/view/Surface;

.field private volatile mPreviewWidth:I

.field private volatile mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

.field private final mSessionCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

.field private mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

.field private mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

.field private mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

.field private mStereoWarningCallback:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$StereoWarningCallback;

.field private mStereoWarningKey:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private final mSurfaceHolderSync:Ljava/lang/Object;

.field private mSurfaceObject:Ljava/lang/Object;

.field private final mThumbnailSurface:Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;

.field private mVsdofKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mVsdofWarningKey:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mWarningKey:Landroid/hardware/camera2/CaptureRequest$Key;
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

    const-class v1, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    sput-object v1, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->VSDOF_KEY_VALUE:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->PREVIEW_SIZE_KEY_VALUE:[I

    new-array v1, v0, [I

    const/4 v3, 0x7

    aput v3, v1, v2

    sput-object v1, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->CURRENT_DOFLEVEL_VALUE:[I

    sput v2, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mVsdofWarningValue:I

    new-array v0, v0, [I

    sget v1, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mVsdofWarningValue:I

    aput v1, v0, v2

    sput-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->DUAL_CAMERA_TOO_FAR_VALUE:[I

    const/4 v0, 0x0

    sput-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->sRelation:Lcom/freeme/camera/common/relation/Relation;

    return-void

    :array_0
    .array-data 4
        0x438
        0x780
    .end array-data
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

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/Device2Controller;-><init>()V

    const-string v0, "on"

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mZsdStatus:Ljava/lang/String;

    const/4 v0, 0x7

    iput v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCurrentLevel:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mVsdofKey:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mWarningKey:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mStereoWarningKey:Landroid/hardware/camera2/CaptureResult$Key;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mVsdofWarningKey:Landroid/hardware/camera2/CaptureResult$Key;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mDofLevelKey:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewSizeKey:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSurfaceHolderSync:Ljava/lang/Object;

    new-instance v1, Lcom/freeme/camera/common/mode/Device2Controller$DeviceStateCallback;

    invoke-direct {v1, p0}, Lcom/freeme/camera/common/mode/Device2Controller$DeviceStateCallback;-><init>(Lcom/freeme/camera/common/mode/Device2Controller;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mDeviceCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mStereoWarningCallback:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$StereoWarningCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mFirstFrameArrived:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mIsPictureSizeChanged:Z

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mLockState:Ljava/util/concurrent/locks/Lock;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    sget-object v1, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureFrameMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureSync:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mIsInCapturing:Z

    new-instance v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$1;-><init>(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSessionCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

    new-instance v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$2;-><init>(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$3;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$3;-><init>(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[SdofPhotoDeviceController]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mActivity:Landroid/app/Activity;

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {p1}, Lcom/freeme/camera/common/ICameraContext;->getDataStore()Lcom/freeme/camera/common/relation/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    new-instance p1, Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;

    invoke-direct {p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureSurface:Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureSurface:Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;

    invoke-virtual {p1, p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;->setCaptureCallback(Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface$ImageCallback;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    sget-object p2, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-interface {p1, p2}, Lcom/freeme/camera/common/ICameraContext;->getDeviceManager(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/device/CameraDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    new-instance p1, Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;

    invoke-direct {p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mThumbnailSurface:Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mThumbnailSurface:Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;

    invoke-virtual {p1, p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;->setCaptureCallback(Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface$ImageCallback;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mThumbnailSurface:Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;

    const-string p2, "thumbnail"

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;->setFormat(Ljava/lang/String;)V

    return-void
.end method

.method private abortOldSession()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {v0}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->abortCaptures()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[abortOldSession] exception"

    invoke-static {v1, v2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;)Lcom/freeme/camera/common/ICameraContext;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->updateCameraState(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mFirstFrameArrived:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mFirstFrameArrived:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;)Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->captureDoneNotify(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->notifyWarningKey(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;)Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    return-object p0
.end method

.method static synthetic access$202(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;)Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    return-object p1
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;)Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->getCameraState()Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSurfaceHolderSync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->repeatingPreview()V

    return-void
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;)Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$DeviceCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$DeviceCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureFrameMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method private canOpenCamera(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

    sget-object v2, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

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
    sget-object v2, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[canOpenCamera] new id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " current camera :"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isSameCamera = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " current state : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

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

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[captureDoneNotify] mIsInCapturing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mIsInCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", needNotify = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureSync:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mIsInCapturing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mIsInCapturing:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureSync:Ljava/lang/Object;

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

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[configureSession]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->abortOldSession()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewSurface:Landroid/view/Surface;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureSurface:Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->isPostViewSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mThumbnailSurface:Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->configSessionSurface(Ljava/util/List;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->doCreateAndConfigRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSessionCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mModeHandler:Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->createCaptureSession(Ljava/util/List;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mIsPictureSizeChanged:Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

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
    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[configureSession] error"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private doCloseCamera(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/CameraDeviceManager;->closeSync(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/CameraDeviceManager;->close(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureFrameMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSurfaceHolderSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSurfaceObject:Ljava/lang/Object;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewSurface:Landroid/view/Surface;

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

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doCreateAndConfigRequest] mCamera2Proxy ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->setSpecialVendorTag(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p1}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->configPostViewRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewSurface:Landroid/view/Surface;

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

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doCreateAndConfigStillCaptureRequest]mCamera2Proxy ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v0}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->configPostViewRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureSurface:Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->setSpecialVendorTag(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const-string v1, "off"

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mZsdStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[takePicture] take picture with preview image."

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[takePicture] take picture not with preview image."

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->isPostViewOverrideSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mThumbnailSurface:Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_1
    invoke-static {v0}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->setDefaultJpegThumbnailSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v0}, Lcom/freeme/camera/common/mode/photo/P2DoneInfo;->enableP2Done(Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mJpegRotation:I

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mActivity:Landroid/app/Activity;

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

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mDeviceCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

    invoke-virtual {p1, v1, v2, v0}, Lcom/freeme/camera/common/device/CameraDeviceManager;->openCameraSync(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraStateCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mDeviceCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

    invoke-virtual {p1, v1, v2, v0}, Lcom/freeme/camera/common/device/CameraDeviceManager;->openCamera(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraStateCallback;Landroid/os/Handler;)V

    :goto_0
    return-void
.end method

.method private getCameraState()Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private getTargetPreviewSize(D)Lcom/freeme/camera/common/utils/Size;
    .locals 7

    const/4 p1, 0x0

    :try_start_0
    iget-object p2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p2

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-class v0, Landroid/view/SurfaceHolder;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p2

    array-length v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lcom/freeme/camera/common/utils/Size;

    aget-object v4, p2, v2

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    aget-object v5, p2, v2

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/freeme/camera/common/utils/Size;

    const/16 v0, 0x500

    const/16 v1, 0x3c0

    invoke-direct {p2, v0, v1}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p2}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewWidth:I

    invoke-virtual {p2}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewHeight:I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, p2

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    goto :goto_1

    :catch_1
    move-exception p2

    :goto_1
    invoke-virtual {p2}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_2
    sget-object p2, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getTargetPreviewSize] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " X "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method private initSettingManager(Lcom/freeme/camera/common/setting/ISettingManager;)V
    .locals 1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {p1, p0}, Lcom/freeme/camera/common/setting/ISettingManager;->updateModeDevice2Requester(Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingDevice2Configurator()Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    return-void
.end method

.method private initSettings()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->createAllSettings()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/mode/photo/P2DoneInfo;->setCameraCharacteristics(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v1}, Lcom/freeme/camera/common/ICameraContext;->getDataStore()Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoRestriction;->setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;Lcom/freeme/camera/common/relation/DataStore;)V

    invoke-static {}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoRestriction;->getRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v0

    const-string v1, "on"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->sRelation:Lcom/freeme/camera/common/relation/Relation;

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->sRelation:Lcom/freeme/camera/common/relation/Relation;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->addViewEntry()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->refreshViewEntry()V

    return-void
.end method

.method private notifyWarningKey(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mStereoWarningCallback:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$StereoWarningCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mStereoWarningKey:Landroid/hardware/camera2/CaptureResult$Key;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v1, "com.mediatek.stereofeature.stereowarning"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/utils/CameraUtil;->getResultKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mStereoWarningKey:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mStereoWarningKey:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    sget-object v2, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[notifyWarningKey] mStereoWarningKey value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mStereoWarningCallback:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$StereoWarningCallback;

    aget v0, v0, v1

    invoke-interface {v2, v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$StereoWarningCallback;->onWarning(I)V

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mVsdofWarningKey:Landroid/hardware/camera2/CaptureResult$Key;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v2, "com.mediatek.vsdoffeature.vsdofFeatureWarning"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getResultKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mVsdofWarningKey:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_3
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mVsdofWarningKey:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[notifyWarningKey] mVsdofWarningKey value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    array-length v0, p1

    if-lez v0, :cond_4

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[notifyWarningKey] onWarning too far"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    aget v0, p1, v1

    sput v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mVsdofWarningValue:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mStereoWarningCallback:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$StereoWarningCallback;

    aget p1, p1, v1

    invoke-interface {v0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$StereoWarningCallback;->onWarning(I)V

    return-void

    :cond_4
    sput v1, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mVsdofWarningValue:I

    return-void
.end method

.method private recycleVariables()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->updatePreviewSurface(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mIsPictureSizeChanged:Z

    return-void
.end method

.method private repeatingPreview()V
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[repeatingPreview] mSession ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mCamera ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mFirstFrameArrived:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->doCreateAndConfigRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureSurface:Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;

    invoke-virtual {v1, p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;->setCaptureCallback(Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface$ImageCallback;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mModeHandler:Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;

    invoke-virtual {v1, v0, v2, v3}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[repeatingPreview] error"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private setSpecialVendorTag(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mVsdofKey:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->VSDOF_KEY_VALUE:[I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[setSpecialVendorTag] set vsdof key."

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mDofLevelKey:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->CURRENT_DOFLEVEL_VALUE:[I

    iget v3, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCurrentLevel:I

    aput v3, v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setSpecialVendorTag] sdoflevel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCurrentLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewSizeKey:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->PREVIEW_SIZE_KEY_VALUE:[I

    iget v3, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewWidth:I

    aput v3, v0, v1

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->PREVIEW_SIZE_KEY_VALUE:[I

    iget v3, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewHeight:I

    aput v3, v0, v2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewSizeKey:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v3, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->PREVIEW_SIZE_KEY_VALUE:[I

    invoke-virtual {p1, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setSpecialVendorTag] set preview size width "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", height "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mWarningKey:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_3

    new-array v2, v2, [I

    sget v3, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mVsdofWarningValue:I

    aput v3, v2, v1

    sput-object v2, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->DUAL_CAMERA_TOO_FAR_VALUE:[I

    sget-object v2, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->DUAL_CAMERA_TOO_FAR_VALUE:[I

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSpecialVendorTag] set warning key to capture "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->DUAL_CAMERA_TOO_FAR_VALUE:[I

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[setSpecialVendorTag] mWarningKey is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateCameraState(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateCameraState] new state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " old ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private updatePreviewSize()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_picture_size"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    invoke-direct {p0, v1, v2}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->getTargetPreviewSize(D)Lcom/freeme/camera/common/utils/Size;

    :cond_0
    return-void
.end method


# virtual methods
.method public closeCamera(Z)V
    .locals 5

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[closeCamera] + sync = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " current state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-super {p0, v1}, Lcom/freeme/camera/common/mode/Device2Controller;->doCameraClosed(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V

    sget-object v1, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;->CAMERA_CLOSING:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

    invoke-direct {p0, v1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->updateCameraState(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->abortOldSession()V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$DeviceCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$DeviceCallback;

    invoke-interface {v1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$DeviceCallback;->beforeCloseCamera()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->doCloseCamera(Z)V

    sget-object p1, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->updateCameraState(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->recycleVariables()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureSurface:Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;->releaseCaptureSurface()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/Device2Controller;->doCameraClosed(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureSync:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mIsInCapturing:Z

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

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/Device2Controller;->doCameraClosed(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureSync:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mIsInCapturing:Z

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->recycleVariables()V

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :goto_1
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-super {p0, v1}, Lcom/freeme/camera/common/mode/Device2Controller;->doCameraClosed(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mIsInCapturing:Z

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
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureDataCallback:Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureDataCallback:Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;

    :cond_2
    sget-object p1, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[closeCamera] -"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public createAndChangeRepeatingRequest()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

    sget-object v1, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->repeatingPreview()V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "camera is closed or in opening state can\'t request "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public createAndConfigRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->doCreateAndConfigRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

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

.method public destroyDeviceController()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureSurface:Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;->releaseCaptureSurface()V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mThumbnailSurface:Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;->releaseCaptureSurface()V

    :cond_1
    return-void
.end method

.method public doCameraDisconnected(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2Proxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDisconnected] camera2proxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mActivity:Landroid/app/Activity;

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

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eq v0, p1, :cond_1

    :cond_0
    const/16 p1, 0x41a

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    :cond_1
    sget-object p1, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->updateCameraState(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mActivity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/freeme/camera/common/utils/CameraUtil;->showErrorInfoAndFinish(Landroid/app/Activity;I)V

    :cond_2
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->captureDoneNotify(Z)V

    return-void
.end method

.method public doCameraOpened(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2Proxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onOpened]  camera2proxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " preview surface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  mCameraState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "camera2Proxy id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mCameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;->CAMERA_OPENING:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->getCameraState()Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

    move-result-object v1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$DeviceCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$DeviceCallback;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCurrentCameraId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$DeviceCallback;->onCameraOpened(Ljava/lang/String;)V

    :cond_0
    sget-object p1, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->updateCameraState(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->updatePreviewSize()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewSizeCallback:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$PreviewSizeCallback;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewSizeCallback:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$PreviewSizeCallback;

    new-instance v0, Lcom/freeme/camera/common/utils/Size;

    iget v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewWidth:I

    iget v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewHeight:I

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$PreviewSizeCallback;->onPreviewSizeReady(Lcom/freeme/camera/common/utils/Size;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureSync:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mIsInCapturing:Z

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

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

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

    iget v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewWidth:I

    iget v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewHeight:I

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->getTargetPreviewSize(D)Lcom/freeme/camera/common/utils/Size;

    iget p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewHeight:I

    if-ne v1, p1, :cond_0

    iget p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object p2, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    iget v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewWidth:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " X "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewHeight:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mIsPictureSizeChanged:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->configureSession()V

    :cond_1
    new-instance p1, Lcom/freeme/camera/common/utils/Size;

    iget p2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewWidth:I

    iget v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewHeight:I

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

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->getCameraState()Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

    move-result-object v0

    sget-object v2, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-object v2, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isReadyForCapture] canCapture = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mIsInCapturing:Z

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

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureDataCallback:Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mFirstFrameArrived:Z

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureDataCallback:Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;

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

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureDataCallback:Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;

    invoke-interface {p2, p1}, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;->onPostViewCallback([B)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureDataCallback:Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;

    invoke-interface {p1, v1}, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;->onDataReceived(Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;)V

    invoke-direct {p0, v2}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->captureDoneNotify(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public openCamera(Lcom/freeme/camera/feature/mode/vsdof/photo/DeviceInfo;)V
    .locals 6

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/DeviceInfo;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/DeviceInfo;->getNeedOpenCameraSync()Z

    move-result v1

    sget-object v2, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/DeviceInfo;->getSettingManager()Lcom/freeme/camera/common/setting/ISettingManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->initSettingManager(Lcom/freeme/camera/common/setting/ISettingManager;)V

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->canOpenCamera(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x3e8

    :try_start_0
    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCurrentCameraId:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v2, "com.mediatek.multicamfeature.multiCamFeatureMode"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getAvailableSessionKeys(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mVsdofKey:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v2, "com.mediatek.vsdoffeature.vsdofFeatureCaptureWarningMsg"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getRequestKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mWarningKey:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v2, "com.mediatek.stereofeature.doflevel"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getRequestKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mDofLevelKey:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v2, "com.mediatek.vsdoffeature.vsdofFeaturePreviewSize"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getAvailableSessionKeys(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewSizeKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->initSettings()V

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;->CAMERA_OPENING:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->updateCameraState(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;)V

    invoke-direct {p0, v1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->doOpenCamera(Z)V
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
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catch_1
    :try_start_2
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/freeme/camera/common/utils/CameraUtil;->showErrorInfoAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v1, Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;->SECURITY_EXCEPTION:Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;

    invoke-virtual {v0}, Lcom/freeme/camera/common/device/CameraOpenException;->getExceptionType()Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;

    move-result-object v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/freeme/camera/common/utils/CameraUtil;->showErrorInfoAndFinish(Landroid/app/Activity;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_1
    :goto_2
    return-void
.end method

.method public queryCameraDeviceManager()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    sget-object v1, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/ICameraContext;->getDeviceManager(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/device/CameraDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    return-void
.end method

.method public requestRestartSession()V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->configureSession()V

    return-void
.end method

.method public setDeviceCallback(Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$DeviceCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$DeviceCallback;

    return-void
.end method

.method public setPictureSize(Lcom/freeme/camera/common/utils/Size;)V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureSurface:Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v2

    const/16 v3, 0x100

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;->updatePictureInfo(IIII)Z

    move-result v0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mIsPictureSizeChanged:Z

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

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mThumbnailSurface:Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;

    invoke-static {}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->getThumbnailWidth()I

    move-result v0

    invoke-static {}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->getThumbnailHeight()I

    move-result v1

    const/16 v2, 0x23

    const/4 v3, 0x5

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/CaptureSurface;->updatePictureInfo(IIII)Z

    :cond_0
    return-void
.end method

.method public setPreviewSizeReadyCallback(Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$PreviewSizeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewSizeCallback:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$PreviewSizeCallback;

    return-void
.end method

.method public setStereoWarningCallback(Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$StereoWarningCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mStereoWarningCallback:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$StereoWarningCallback;

    return-void
.end method

.method public setVsDofLevelParameter(I)V
    .locals 1

    iget v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCurrentLevel:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCurrentLevel:I

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->createAndChangeRepeatingRequest()V

    :cond_0
    return-void
.end method

.method public setZSDStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mZsdStatus:Ljava/lang/String;

    return-void
.end method

.method public startPreview()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[startPreview]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->configureSession()V

    return-void
.end method

.method public stopPreview()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[stopPreview]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->abortOldSession()V

    return-void
.end method

.method public takePicture(Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[takePicture] mSession= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mIsInCapturing:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureDataCallback:Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;

    sget-object p1, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;->CAMERA_CAPTURING:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->updateCameraState(Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;)V

    :try_start_1
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->doCreateAndConfigStillCaptureRequest()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mModeHandler:Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;

    invoke-virtual {v0, p1, v1, v2}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    sget-object p1, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[takePicture] error because create build fail."

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCaptureSync:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mIsInCapturing:Z

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public updateGSensorOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mJpegRotation:I

    return-void
.end method

.method public updatePreviewSurface(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updatePreviewSurface] surfaceHolder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSurfaceHolderSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mSurfaceObject:Ljava/lang/Object;

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
    iput-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewSurface:Landroid/view/Surface;

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
    iput-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mPreviewSurface:Landroid/view/Surface;

    :cond_3
    :goto_2
    sget-object v1, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController$CameraState;

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->configureSession()V

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/SdofPhotoDeviceController;->stopPreview()V

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
