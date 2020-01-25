.class Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;
.super Lcom/freeme/camera/common/mode/Device2Controller;
.source "CameraLargeDevice2Controller.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController;
.implements Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface$ImageCallback;
.implements Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;
    }
.end annotation


# static fields
.field private static final CAPTURE_MAX_NUMBER:I = 0x5

.field private static final KEY_PICTURE_SIZE:Ljava/lang/String; = "key_picture_size"

.field private static final KEY_PICTURE_SIZE_FULLSCREEN:Ljava/lang/String; = "key_picture_size_fullscreen"

.field private static final QUICK_PREVIEW_KEY:Ljava/lang/String; = "com.freeme.configure.setting.initrequest"

.field private static final QUICK_PREVIEW_KEY_VALUE:[I

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final WAIT_TIME:I = 0x5

.field private static final mMaxPreviewWidth:I = 0x780


# instance fields
.field private backStoreScope:Ljava/lang/String;

.field private final mActivity:Landroid/app/Activity;

.field private mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private volatile mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

.field private mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraState:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

.field private final mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureDataCallback:Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$CaptureDataCallback;

.field private mCaptureFrameMap:Ljava/util/concurrent/ConcurrentHashMap;

.field private final mCaptureSurface:Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;

.field private mCurrentCameraId:Ljava/lang/String;

.field private mDataStore:Lcom/freeme/camera/common/relation/DataStore;

.field private mDefaultBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private final mDeviceCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

.field private mDeviceLock:Ljava/util/concurrent/locks/Lock;

.field private mFirstFrameArrived:Z

.field private final mICameraContext:Lcom/freeme/camera/common/ICameraContext;

.field private mIsPictureSizeChanged:Z

.field private mJpegRotation:I

.field private mLockState:Ljava/util/concurrent/locks/Lock;

.field private mModeDeviceCallback:Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$DeviceCallback;

.field private volatile mNeedFinalizeOutput:Z

.field private mNeedSubSectionInitSetting:Z

.field private mOutputConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mPreviewHeight:I

.field private mPreviewSizeCallback:Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$PreviewSizeCallback;

.field private mPreviewSurface:Landroid/view/Surface;

.field private volatile mPreviewWidth:I

.field private mQuickPreviewKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private volatile mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

.field private final mSessionCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

.field private mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

.field private mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

.field private mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

.field private final mSurfaceHolderSync:Ljava/lang/Object;

.field private mSurfaceObject:Ljava/lang/Object;

.field private final mThumbnailSurface:Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;

.field private mZsdStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    sput-object v1, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->QUICK_PREVIEW_KEY_VALUE:[I

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

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/Device2Controller;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mQuickPreviewKey:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSurfaceHolderSync:Ljava/lang/Object;

    new-instance v1, Lcom/freeme/camera/common/mode/Device2Controller$DeviceStateCallback;

    invoke-direct {v1, p0}, Lcom/freeme/camera/common/mode/Device2Controller$DeviceStateCallback;-><init>(Lcom/freeme/camera/common/mode/Device2Controller;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mDeviceCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mFirstFrameArrived:Z

    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mIsPictureSizeChanged:Z

    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mNeedSubSectionInitSetting:Z

    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mNeedFinalizeOutput:Z

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mLockState:Ljava/util/concurrent/locks/Lock;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    sget-object v1, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraState:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mDefaultBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v0, "on"

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mZsdStatus:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCaptureFrameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, "_preferences_0"

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->backStoreScope:Ljava/lang/String;

    new-instance v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$1;-><init>(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSessionCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

    new-instance v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$2;-><init>(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[CameraLargeDevice2Controller]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mActivity:Landroid/app/Activity;

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    new-instance p1, Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;

    invoke-direct {p1}, Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCaptureSurface:Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCaptureSurface:Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;

    invoke-virtual {p1, p0}, Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;->setCaptureCallback(Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface$ImageCallback;)V

    new-instance p1, Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;

    invoke-direct {p1}, Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mThumbnailSurface:Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mThumbnailSurface:Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;

    invoke-virtual {p1, p0}, Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;->setCaptureCallback(Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface$ImageCallback;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mThumbnailSurface:Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;

    const-string p2, "thumbnail"

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;->setFormat(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    sget-object p2, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-interface {p1, p2}, Lcom/freeme/camera/common/ICameraContext;->getDeviceManager(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/device/CameraDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {p1}, Lcom/freeme/camera/common/ICameraContext;->getDataStore()Lcom/freeme/camera/common/relation/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-void
.end method

.method private abortOldSession()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {v0}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->abortCaptures()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[abortOldSession] exception"

    invoke-static {v1, v2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mDefaultBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mNeedFinalizeOutput:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;)Lcom/freeme/camera/common/device/v2/Camera2Proxy;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    return-object p0
.end method

.method static synthetic access$102(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mNeedFinalizeOutput:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCaptureFrameMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;)Lcom/freeme/camera/common/ICameraContext;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->updateCameraState(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;)Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$DeviceCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$DeviceCallback;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;)Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mFirstFrameArrived:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mFirstFrameArrived:Z

    return p1
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;)Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    return-object p0
.end method

.method static synthetic access$302(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;)Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    return-object p1
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mOutputConfigs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;)Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->getCameraState()Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSurfaceHolderSync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->repeatingPreview(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->configSettingsByStage2()V

    return-void
.end method

.method private canOpenCamera(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraState:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    sget-object v2, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

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
    sget-object v2, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[canOpenCamera] new id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " current camera :"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isSameCamera = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " current state : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraState:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

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

.method private configSettingsByStage2()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager;->createSettingsByStage(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/mode/largemode/P2DoneInfo;->setCameraCharacteristics(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->addViewEntry()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->refreshViewEntry()V

    return-void
.end method

.method private configureQuickPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureQuickPreview mQuickPreviewKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mQuickPreviewKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mQuickPreviewKey:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->QUICK_PREVIEW_KEY_VALUE:[I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private configureSession(Z)V
    .locals 5

    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configureSession] +, isFromOpen :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mFirstFrameArrived:Z

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->abortOldSession()V

    if-eqz p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mOutputConfigs:Ljava/util/List;

    new-instance p1, Landroid/util/Size;

    iget v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewWidth:I

    iget v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewHeight:I

    invoke-direct {p1, v1, v2}, Landroid/util/Size;-><init>(II)V

    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    const-class v2, Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, p1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCaptureSurface:Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    invoke-interface {v2}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->getRawOutputConfiguration()Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mOutputConfigs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mOutputConfigs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mOutputConfigs:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/freeme/camera/feature/mode/largemode/ThumbnailHelper;->isPostViewSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mThumbnailSurface:Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mOutputConfigs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->getDefaultPreviewBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-interface {p1, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->configureQuickPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSessionCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mModeHandler:Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mOutputConfigs:Ljava/util/List;

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->createCaptureSession(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/List;)V

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mIsPictureSizeChanged:Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_2
    :try_start_1
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewSurface:Landroid/view/Surface;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCaptureSurface:Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/freeme/camera/feature/mode/largemode/ThumbnailHelper;->isPostViewSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mThumbnailSurface:Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mNeedFinalizeOutput:Z

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    invoke-interface {v1, p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->configSessionSurface(Ljava/util/List;)V

    sget-object v1, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configureSession] surface size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->doCreateAndConfigRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSessionCallback:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mModeHandler:Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->createCaptureSession(Ljava/util/List;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mIsPictureSizeChanged:Z
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    :try_start_2
    sget-object p1, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[configureSession] error"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private doCloseCamera(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/CameraDeviceManager;->closeSync(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/CameraDeviceManager;->close(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCaptureFrameMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSurfaceHolderSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSurfaceObject:Ljava/lang/Object;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewSurface:Landroid/view/Surface;

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

    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doCreateAndConfigRequest] mCamera2Proxy ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "Builder is null, ignore this configuration"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/ThumbnailHelper;->configPostViewRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->configureQuickPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_5

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCaptureSurface:Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    const-string p1, "off"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mZsdStatus:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_2
    invoke-static {}, Lcom/freeme/camera/feature/mode/largemode/ThumbnailHelper;->isPostViewOverrideSupported()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mThumbnailSurface:Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_3
    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/ThumbnailHelper;->setDefaultJpegThumbnailSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/P2DoneInfo;->enableP2Done(Landroid/hardware/camera2/CaptureRequest$Builder;)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {p1, v0}, Lcom/freeme/camera/common/utils/CameraUtil;->enable4CellRequest(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mJpegRotation:I

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getJpegRotationFromDeviceSpec(IILandroid/content/Context;)I

    move-result p1

    sput p1, Lcom/freeme/camera/feature/mode/largemode/HeifHelper;->orientation:I

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    move-object v0, v1

    :cond_5
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

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mDeviceCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

    invoke-virtual {p1, v1, v2, v0}, Lcom/freeme/camera/common/device/CameraDeviceManager;->openCameraSync(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraStateCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mDeviceCallback:Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;

    invoke-virtual {p1, v1, v2, v0}, Lcom/freeme/camera/common/device/CameraDeviceManager;->openCamera(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraStateCallback;Landroid/os/Handler;)V

    :goto_0
    return-void
.end method

.method private getCameraState()Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraState:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private getDefaultPreviewBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mDefaultBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mDefaultBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mDefaultBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/ThumbnailHelper;->configPostViewRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mDefaultBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object v0
.end method

.method private getTargetPreviewSize(D)Lcom/freeme/camera/common/utils/Size;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCurrentCameraId:Ljava/lang/String;

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
    iget-object v3, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mActivity:Landroid/app/Activity;

    const/4 v7, 0x1

    const/16 v8, 0x780

    move-wide v5, p1

    invoke-static/range {v3 .. v8}, Lcom/freeme/camera/common/utils/CameraUtil;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;DZI)Lcom/freeme/camera/common/utils/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewWidth:I

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewHeight:I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_1
    sget-object p1, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getTargetPreviewSize] "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewWidth:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " X "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewHeight:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private initSettingManager(Lcom/freeme/camera/common/setting/ISettingManager;)V
    .locals 1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {p1, p0}, Lcom/freeme/camera/common/setting/ISettingManager;->updateModeDevice2Requester(Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingDevice2Configurator()Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    return-void
.end method

.method private recycleVariables()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->updatePreviewSurface(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mIsPictureSizeChanged:Z

    return-void
.end method

.method private repeatingPreview(Z)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[repeatingPreview] mSession ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mCamera ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",needConfigBuiler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->doCreateAndConfigRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mModeHandler:Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;

    invoke-virtual {v0, p1, v1, v2}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mModeHandler:Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;

    invoke-virtual {p1, v0, v1, v2}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCaptureSurface:Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;

    invoke-virtual {p1, p0}, Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;->setCaptureCallback(Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface$ImageCallback;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p1, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[repeatingPreview] error"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private updateCameraState(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateCameraState] new state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " old ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraState:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraState:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private updatePictureSize()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_picture_size"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updatePictureSize] :"

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

    new-instance v2, Lcom/freeme/camera/common/utils/Size;

    invoke-direct {v2, v1, v0}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->setPictureSize(Lcom/freeme/camera/common/utils/Size;)V

    :cond_0
    return-void
.end method

.method private updatePreviewSize()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_picture_size_fullscreen"

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->backStoreScope:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    invoke-direct {p0, v1, v2}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->getTargetPreviewSize(D)Lcom/freeme/camera/common/utils/Size;

    :cond_0
    return-void
.end method


# virtual methods
.method public closeCamera(Z)V
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[closeCamera] + sync = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " current state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraState:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraState:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    if-eq v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-super {p0, v0}, Lcom/freeme/camera/common/mode/Device2Controller;->doCameraClosed(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;->CAMERA_CLOSING:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->updateCameraState(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->abortOldSession()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$DeviceCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$DeviceCallback;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$DeviceCallback;->beforeCloseCamera()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->doCloseCamera(Z)V

    sget-object p1, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->updateCameraState(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->recycleVariables()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCaptureSurface:Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;->releaseCaptureSurface()V
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
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/Device2Controller;->doCameraClosed(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->recycleVariables()V

    goto :goto_2

    :goto_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    invoke-super {p0, v0}, Lcom/freeme/camera/common/mode/Device2Controller;->doCameraClosed(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_1
    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCurrentCameraId:Ljava/lang/String;

    sget-object p1, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[closeCamera] -"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public createAndChangeRepeatingRequest()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraState:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    sget-object v1, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->repeatingPreview(Z)V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "camera is closed or in opening state can\'t request "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public createAndConfigRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->doCreateAndConfigRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

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

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCaptureSurface:Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;->release()V

    :cond_0
    return-void
.end method

.method public doCameraDisconnected(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2Proxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDisconnected] camera2proxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mActivity:Landroid/app/Activity;

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

    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eq v0, p1, :cond_1

    :cond_0
    const/16 p1, 0x41a

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    :cond_1
    sget-object p1, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->updateCameraState(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mActivity:Landroid/app/Activity;

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

    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onOpened]  camera2proxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " preview surface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  mCameraState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraState:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "camera2Proxy id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mCameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;->CAMERA_OPENING:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->getCameraState()Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    move-result-object v1

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mFirstFrameArrived:Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$DeviceCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$DeviceCallback;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCurrentCameraId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$DeviceCallback;->onCameraOpened(Ljava/lang/String;)V

    :cond_0
    sget-object p1, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->updateCameraState(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/freeme/camera/feature/mode/largemode/ThumbnailHelper;->setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSettingDevice2Configurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;->setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->updatePreviewSize()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->updatePictureSize()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewSizeCallback:Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$PreviewSizeCallback;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewSizeCallback:Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$PreviewSizeCallback;

    new-instance v0, Lcom/freeme/camera/common/utils/Size;

    iget v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewWidth:I

    iget v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewHeight:I

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$PreviewSizeCallback;->onPreviewSizeReady(Lcom/freeme/camera/common/utils/Size;)V

    :cond_1
    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mNeedSubSectionInitSetting:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->configureSession(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->addViewEntry()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->refreshViewEntry()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public getCurrentCaptureSession()Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

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

    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->getCameraState()Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;->CAMERA_CLOSING:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->getCameraState()Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewSurface:Landroid/view/Surface;

    return-object v0

    :cond_0
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

    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->getCameraState()Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;->CAMERA_CLOSING:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->getCameraState()Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mThumbnailSurface:Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "get invalid capture surface!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPreviewSize(D)Lcom/freeme/camera/common/utils/Size;
    .locals 5

    iget v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewWidth:I

    iget v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewHeight:I

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->getTargetPreviewSize(D)Lcom/freeme/camera/common/utils/Size;

    iget p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewHeight:I

    const/4 p2, 0x0

    if-ne v1, p1, :cond_0

    iget p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    sget-object v2, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getPreviewSize] old size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " X "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " new  size :"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewWidth:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " X "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewHeight:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mIsPictureSizeChanged:Z

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->configureSession(Z)V

    :cond_1
    new-instance p1, Lcom/freeme/camera/common/utils/Size;

    iget p2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewWidth:I

    iget v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewHeight:I

    invoke-direct {p1, p2, v0}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    return-object p1
.end method

.method public getRepeatingTemplateType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isReadyForCapture()Z
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->getCameraState()Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

.method public onPictureCallback([BILjava/lang/String;II)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPictureCallback] buffer format = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCaptureDataCallback:Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$CaptureDataCallback;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$DataCallbackInfo;

    invoke-direct {v0}, Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$DataCallbackInfo;-><init>()V

    iput-object p1, v0, Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$DataCallbackInfo;->data:[B

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$DataCallbackInfo;->needUpdateThumbnail:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$DataCallbackInfo;->needRestartPreview:Z

    iput p2, v0, Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$DataCallbackInfo;->mBufferFormat:I

    iput p5, v0, Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$DataCallbackInfo;->imageHeight:I

    iput p4, v0, Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$DataCallbackInfo;->imageWidth:I

    invoke-static {}, Lcom/freeme/camera/feature/mode/largemode/ThumbnailHelper;->isPostViewSupported()Z

    move-result p2

    if-eqz p2, :cond_0

    iput-boolean v1, v0, Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$DataCallbackInfo;->needUpdateThumbnail:Z

    :cond_0
    const-string p2, "thumbnail"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCaptureDataCallback:Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$CaptureDataCallback;

    invoke-interface {p2, p1}, Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$CaptureDataCallback;->onPostViewCallback([B)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCaptureDataCallback:Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$CaptureDataCallback;

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$CaptureDataCallback;->onDataReceived(Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$DataCallbackInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public openCamera(Lcom/freeme/camera/feature/mode/largemode/DeviceInfo;)V
    .locals 7

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/largemode/DeviceInfo;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/largemode/DeviceInfo;->getNeedOpenCameraSync()Z

    move-result v1

    sget-object v2, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->canOpenCamera(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x3e8

    :try_start_0
    iget-object v3, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/largemode/DeviceInfo;->getNeedFastStartPreview()Z

    move-result v3

    iput-boolean v3, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mNeedSubSectionInitSetting:Z

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCurrentCameraId:Ljava/lang/String;

    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;->CAMERA_OPENING:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->updateCameraState(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;)V

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/largemode/DeviceInfo;->getSettingManager()Lcom/freeme/camera/common/setting/ISettingManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->initSettingManager(Lcom/freeme/camera/common/setting/ISettingManager;)V

    invoke-direct {p0, v1}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->doOpenCamera(Z)V

    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mNeedSubSectionInitSetting:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/setting/ISettingManager;->createSettingsByStage(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager;->createAllSettings()V

    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v0, "com.freeme.configure.setting.initrequest"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/utils/CameraUtil;->getAvailableSessionKeys(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mQuickPreviewKey:Landroid/hardware/camera2/CaptureRequest$Key;
    :try_end_0
    .catch Lcom/freeme/camera/common/device/CameraOpenException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->showErrorInfoAndFinish(Landroid/app/Activity;I)V

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3

    :catch_2
    move-exception p1

    :try_start_2
    sget-object v0, Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;->SECURITY_EXCEPTION:Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/CameraOpenException;->getExceptionType()Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;

    move-result-object p1

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->showErrorInfoAndFinish(Landroid/app/Activity;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mDeviceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_2
    :goto_3
    return-void
.end method

.method public queryCameraDeviceManager()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    sget-object v1, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/ICameraContext;->getDeviceManager(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/device/CameraDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    return-void
.end method

.method public requestRestartSession()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->configureSession(Z)V

    return-void
.end method

.method public setDeviceCallback(Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$DeviceCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$DeviceCallback;

    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setCaptureFormat] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mCameraState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->getCameraState()Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->getCameraState()Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCaptureSurface:Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/largemode/HeifHelper;->getCaptureFormat(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCaptureSurface:Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;

    invoke-virtual {v1, p1}, Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;->setFormat(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCaptureSurface:Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;->updatePictureInfo(I)Z

    :cond_0
    return-void
.end method

.method public setPictureSize(Lcom/freeme/camera/common/utils/Size;)V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    const-string v1, "key_format"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/HeifHelper;->getCaptureFormat(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCaptureSurface:Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;

    invoke-virtual {v2, v0}, Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;->setFormat(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCaptureSurface:Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;->updatePictureInfo(IIII)Z

    move-result v0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mIsPictureSizeChanged:Z

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/mode/largemode/ThumbnailHelper;->updateThumbnailSize(D)V

    invoke-static {}, Lcom/freeme/camera/feature/mode/largemode/ThumbnailHelper;->isPostViewSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mThumbnailSurface:Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;

    invoke-static {}, Lcom/freeme/camera/feature/mode/largemode/ThumbnailHelper;->getThumbnailWidth()I

    move-result v0

    invoke-static {}, Lcom/freeme/camera/feature/mode/largemode/ThumbnailHelper;->getThumbnailHeight()I

    move-result v1

    const/16 v2, 0x23

    invoke-virtual {p1, v0, v1, v2, v4}, Lcom/freeme/camera/feature/mode/largemode/device/CaptureSurface;->updatePictureInfo(IIII)Z

    :cond_0
    return-void
.end method

.method public setPreviewSizeReadyCallback(Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$PreviewSizeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewSizeCallback:Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$PreviewSizeCallback;

    return-void
.end method

.method public setZSDStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mZsdStatus:Ljava/lang/String;

    return-void
.end method

.method public startPreview()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[startPreview]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->configureSession(Z)V

    return-void
.end method

.method public stopPreview()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[stopPreview]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->abortOldSession()V

    return-void
.end method

.method public takePicture(Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$CaptureDataCallback;)V
    .locals 3
    .param p1    # Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$CaptureDataCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[takePicture] mSession= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCaptureDataCallback:Lcom/freeme/camera/feature/mode/largemode/device/IDeviceController$CaptureDataCallback;

    sget-object p1, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;->CAMERA_CAPTURING:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->updateCameraState(Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;)V

    const/4 p1, 0x2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->doCreateAndConfigRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mModeHandler:Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;

    invoke-virtual {v0, p1, v1, v2}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    sget-object p1, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[takePicture] error because create build fail."

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public updateGSensorOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mJpegRotation:I

    return-void
.end method

.method public updatePreviewSurface(Ljava/lang/Object;)V
    .locals 5

    sget-object v0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updatePreviewSurface] surfaceHolder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraState:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", session :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mNeedSubSectionInitSetting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mNeedSubSectionInitSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSurfaceHolderSync:Ljava/lang/Object;

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
    iput-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewSurface:Landroid/view/Surface;

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
    iput-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewSurface:Landroid/view/Surface;

    :cond_3
    :goto_2
    sget-object v1, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCameraState:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    move v1, v4

    :goto_3
    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSurfaceObject:Ljava/lang/Object;

    if-nez v1, :cond_5

    if-eqz p1, :cond_5

    move v1, v3

    goto :goto_4

    :cond_5
    move v1, v4

    :goto_4
    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSurfaceObject:Ljava/lang/Object;

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->stopPreview()V

    goto :goto_5

    :cond_6
    if-eqz v1, :cond_8

    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mNeedSubSectionInitSetting:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mOutputConfigs:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mSession:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mOutputConfigs:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->finalizeOutputConfigurations(Ljava/util/List;)V

    iput-boolean v4, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mNeedFinalizeOutput:Z

    sget-object p1, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->getCameraState()Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller$CameraState;

    move-result-object v1

    if-ne p1, v1, :cond_9

    invoke-direct {p0, v4}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->repeatingPreview(Z)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->configSettingsByStage2()V

    invoke-direct {p0, v4}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->repeatingPreview(Z)V

    goto :goto_5

    :cond_7
    iput-boolean v3, p0, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->mNeedFinalizeOutput:Z

    goto :goto_5

    :cond_8
    invoke-direct {p0, v4}, Lcom/freeme/camera/feature/mode/largemode/device/CameraLargeDevice2Controller;->configureSession(Z)V

    :cond_9
    :goto_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
