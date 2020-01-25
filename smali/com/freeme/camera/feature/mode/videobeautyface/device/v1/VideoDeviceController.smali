.class public Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;
.super Ljava/lang/Object;
.source "VideoDeviceController.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController;
.implements Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$MyStatusChangeListener;,
        Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;,
        Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$VideoDeviceHandler;,
        Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;
    }
.end annotation


# static fields
.field private static final ASPECT_TOLERANCE:D = 0.001

.field private static final FALSE:Ljava/lang/String; = "false"

.field private static final HANDLER_UPDATE_PREVIEW_SURFACE:I = 0x1

.field private static final KEY_DISP_ROT_SUPPORTED:Ljava/lang/String; = "disp-rot-supported"

.field private static final KEY_SCENE_MODE:Ljava/lang/String; = "key_scene_mode"

.field private static final KEY_VIDEO_QUALITY:Ljava/lang/String; = "key_video_quality"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final UN_KNOW_ORIENTATION:I = -0x1

.field private static final WAIT_TIME:I = 0x5


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

.field private mCameraId:Ljava/lang/String;

.field private volatile mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

.field private mCameraProxyStateCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;

.field private volatile mCameraState:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

.field private mCanConfigParameter:Z

.field private mFrameworkPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mICameraContext:Lcom/freeme/camera/common/ICameraContext;

.field private mInfo:[Landroid/hardware/Camera$CameraInfo;

.field private mIsDuringRecording:Z

.field private mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private mJpegReceivedCallback:Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$JpegCallback;

.field private mJpegRotation:I

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field private mLockCameraAndRequestSettingsLock:Ljava/util/concurrent/locks/Lock;

.field private mLockState:Ljava/util/concurrent/locks/Lock;

.field private mModeDeviceCallback:Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$DeviceCallback;

.field private mNeedRestartPreview:Z

.field private mPreviewCallback:Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$PreviewCallback;

.field private mPreviewFormat:I

.field private mPreviewSize:Lcom/freeme/camera/common/utils/Size;

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mRememberSceneModeValue:Ljava/lang/String;

.field private mRestrictionProvider:Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$RestrictionProvider;

.field private mSettingConfig:Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$SettingConfigCallback;

.field private mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

.field private mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

.field private mStatusListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

.field private mSurfaceObject:Ljava/lang/Object;

.field private mVideoHandler:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$VideoDeviceHandler;

.field private mWaitOpenCamera:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCanConfigParameter:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mIsDuringRecording:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mJpegRotation:I

    new-instance v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$MyStatusChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$MyStatusChangeListener;-><init>(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$1;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mStatusListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    new-instance v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraDeviceProxyStateCallback;-><init>(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$1;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxyStateCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mWaitOpenCamera:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLockCameraAndRequestSettingsLock:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLockState:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLock:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$1;-><init>(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    new-instance v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$2;-><init>(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mFrameworkPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "Video Device Handler Thread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$VideoDeviceHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$VideoDeviceHandler;-><init>(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mVideoHandler:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$VideoDeviceHandler;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    sget-object p2, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API1:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-interface {p1, p2}, Lcom/freeme/camera/common/ICameraContext;->getDeviceManager(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/device/CameraDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->initializeCameraInfo()V

    return-void
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;Landroid/hardware/Camera$Parameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->updatePreviewSize(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;Landroid/hardware/Camera$Parameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->updatePictureSize(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mNeedRestartPreview:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;)Landroid/media/CamcorderProfile;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mProfile:Landroid/media/CamcorderProfile;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mPreviewFormat:I

    return p0
.end method

.method static synthetic access$1402(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mPreviewFormat:I

    return p1
.end method

.method static synthetic access$1500(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;)Landroid/hardware/Camera$PreviewCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mFrameworkPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;)Lcom/freeme/camera/common/utils/Size;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mPreviewSize:Lcom/freeme/camera/common/utils/Size;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;)Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$SettingConfigCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSettingConfig:Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$SettingConfigCallback;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;)Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$DeviceCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$DeviceCallback;

    return-object p0
.end method

.method static synthetic access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;)Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$PreviewCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mPreviewCallback:Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$PreviewCallback;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mRememberSceneModeValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->initProfile()V

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->doUpdatePreviewSurface(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;)Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$JpegCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mJpegReceivedCallback:Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$JpegCallback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;)Lcom/freeme/camera/common/device/v1/CameraProxy;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    return-object p0
.end method

.method static synthetic access$502(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;Lcom/freeme/camera/common/device/v1/CameraProxy;)Lcom/freeme/camera/common/device/v1/CameraProxy;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    return-object p1
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;)Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mWaitOpenCamera:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->doAfterOpenCamera(Lcom/freeme/camera/common/device/v1/CameraProxy;)V

    return-void
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;)Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    return-object p0
.end method

.method private canChangeSettings()Z
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    sget-object v1, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCanConfigParameter:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[canChangeSettings] mCameraState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mCameraProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mCanConfigParameter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCanConfigParameter:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isCanChange = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsDuringRecording = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mIsDuringRecording:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private canDoOpenCamera(Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->getCameraState()Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraId:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :cond_3
    :goto_2
    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[canDoOpenCamera] mCameraState = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " new Camera: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " current camera : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v2
.end method

.method private computeDesiredPreviewSize(Landroid/media/CamcorderProfile;Landroid/hardware/Camera$Parameters;Landroid/app/Activity;)Lcom/freeme/camera/common/utils/Size;
    .locals 9

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/common/utils/Size;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v0}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p2, Lcom/freeme/camera/common/utils/Size;

    iget p3, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {p2, p3, p1}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->isDisplayRotateSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object p2

    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v1, p2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v3, v2

    if-le v3, v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_3

    new-instance v3, Lcom/freeme/camera/common/utils/Size;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    iget v6, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v6}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget p2, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v0, p2

    iget p2, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v3, p2

    div-double v3, v0, v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraId:Ljava/lang/String;

    move-object v1, p3

    invoke-static/range {v1 .. v8}, Lcom/freeme/camera/common/utils/CameraUtil;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;DZZZLjava/lang/String;)Lcom/freeme/camera/common/utils/Size;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance p1, Lcom/freeme/camera/common/utils/Size;

    invoke-virtual {p2}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result p2

    invoke-direct {p1, p3, p2}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    move-object p2, p1

    goto :goto_2

    :cond_4
    new-instance p2, Lcom/freeme/camera/common/utils/Size;

    iget p3, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {p2, p3, p1}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    :goto_2
    sget-object p1, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[computeDesiredPreviewSize] preview size "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/freeme/camera/common/utils/Size;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object p2
.end method

.method private doAfterOpenCamera(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$DeviceCallback;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$DeviceCallback;->onCameraOpened(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCanConfigParameter:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getFeatureProvider()Lcom/freeme/camera/common/loader/FeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/freeme/camera/common/device/v1/CameraProxy;->getOriginalParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/freeme/camera/common/loader/FeatureProvider;->updateCameraParameters(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->createAllSettings()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-virtual {p1, v2}, Lcom/freeme/camera/common/device/v1/CameraProxy;->getOriginalParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;->setOriginalParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mRestrictionProvider:Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$RestrictionProvider;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$RestrictionProvider;->getRestriction()Lcom/freeme/camera/common/relation/Relation;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/ICameraContext;->getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string v0, "key_scene_mode"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mStatusListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->addViewEntry()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->refreshViewEntry()V

    return-void
.end method

.method private doCloseCamera(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCanConfigParameter:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->close()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->closeAsync()V

    :cond_1
    :goto_0
    return-void
.end method

.method private doStartPreview(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doStartPreview] surfaceHolder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " proxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mNeedRestartPreview "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mNeedRestartPreview:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsDuringRecording = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mIsDuringRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->getCameraState()Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mIsDuringRecording:Z

    if-nez v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mFrameworkPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    instance-of v0, p1, Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    check-cast p1, Landroid/view/SurfaceHolder;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    :cond_1
    instance-of v0, p1, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    check-cast p1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->setDisplayOrientation()V

    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mNeedRestartPreview:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->startPreview()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;->onPreviewStarted()V

    iput-boolean v2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mNeedRestartPreview:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "set preview display exception"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method private doUpdatePreviewSurface(Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[doUpdatePreviewSurface] +"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSurfaceObject:Ljava/lang/Object;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->doStartPreview(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    sget-object p1, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[doUpdatePreviewSurface] -"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-double v3, v3

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    sub-double/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v3, v3, v5

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    if-le v3, v4, :cond_1

    :cond_3
    move-object v0, v2

    goto :goto_0

    :cond_4
    if-nez v0, :cond_7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/Camera$Size;

    if-eqz v0, :cond_6

    iget p3, p2, Landroid/hardware/Camera$Size;->width:I

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    if-le p3, v1, :cond_5

    :cond_6
    move-object v0, p2

    goto :goto_1

    :cond_7
    return-object v0
.end method

.method private getParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mIsDuringRecording:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->getOriginalParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mPreviewSize:Lcom/freeme/camera/common/utils/Size;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mPreviewSize:Lcom/freeme/camera/common/utils/Size;

    invoke-virtual {v2}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    :cond_1
    return-object v0
.end method

.method private initProfile()V
    .locals 4

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->parseIntent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_video_quality"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraId:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v1}, Lcom/mediatek/camera/portability/CamcorderProfileEx;->getProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mProfile:Landroid/media/CamcorderProfile;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mProfile:Landroid/media/CamcorderProfile;

    invoke-direct {p0, v1}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->reviseVideoCapability(Landroid/media/CamcorderProfile;)V

    :cond_1
    sget-object v1, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[initProfile] + cameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " quality = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private initializeCameraInfo()V
    .locals 5

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    new-array v1, v0, [Landroid/hardware/Camera$CameraInfo;

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    sget-object v2, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[initializeCameraInfo] mInfo["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isDisplayRotateSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 1

    const-string v0, "disp-rot-supported"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private parseIntent()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mActivity:Landroid/app/Activity;

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

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraId:Ljava/lang/String;

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

.method private releaseVariables()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraId:Ljava/lang/String;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSurfaceObject:Ljava/lang/Object;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mPreviewSize:Lcom/freeme/camera/common/utils/Size;

    return-void
.end method

.method private reviseVideoCapability(Landroid/media/CamcorderProfile;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[reviseVideoCapability] + VideoFrameRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_scene_mode"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mRememberSceneModeValue:Ljava/lang/String;

    const-string v1, "night"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iget v0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[reviseVideoCapability] - videoFrameRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private setDisplayOrientation()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayOrientation(IILandroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {v2, v1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setDisplayOrientation(I)V

    sget-object v2, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDisplayOrientation] Rotation  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "displayOrientation = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private setJpegRotation()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->setParameterRotation(Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/freeme/camera/common/utils/CameraUtil;->getSizeByTargetSize(Ljava/util/List;Landroid/hardware/Camera$Size;Z)Lcom/freeme/camera/common/utils/Size;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method private setParameterRotation(Landroid/hardware/Camera$Parameters;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mJpegRotation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mJpegRotation:I

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getJpegRotation(IILandroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    :cond_0
    return-void
.end method

.method private setVideoSize(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video-size"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updatePictureSize(Landroid/hardware/Camera$Parameters;)V
    .locals 5

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isVideoSnapshotSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mPreviewSize:Lcom/freeme/camera/common/utils/Size;

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mPreviewSize:Lcom/freeme/camera/common/utils/Size;

    invoke-virtual {v3}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    :cond_0
    sget-object p1, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updatePictureSize]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[updatePictureSize] error optimalSize is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updatePreviewSize(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->initProfile()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mProfile:Landroid/media/CamcorderProfile;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0, p1, v1}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->computeDesiredPreviewSize(Landroid/media/CamcorderProfile;Landroid/hardware/Camera$Parameters;Landroid/app/Activity;)Lcom/freeme/camera/common/utils/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mPreviewSize:Lcom/freeme/camera/common/utils/Size;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mPreviewSize:Lcom/freeme/camera/common/utils/Size;

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mPreviewSize:Lcom/freeme/camera/common/utils/Size;

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->setVideoSize(Landroid/hardware/Camera$Parameters;)V

    sget-object p1, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updatePreviewSize]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mPreviewSize:Lcom/freeme/camera/common/utils/Size;

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private waitOpenDoneForClose()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;->CAMERA_OPENING:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->getCameraState()Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mWaitOpenCamera:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[waitOpenDoneForClose] wait open camera begin"

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v1, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;->CAMERA_CLOSING:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    invoke-virtual {p0, v1}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->updateCameraState(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mWaitOpenCamera:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[waitOpenDoneForClose] wait open camera end"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :goto_2
    return-void
.end method


# virtual methods
.method public closeCamera(Z)V
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[closeCamera] + mCameraState ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->getCameraState()Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLock:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->waitOpenDoneForClose()V

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->updateCameraState(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string v1, "key_scene_mode"

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mStatusListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$DeviceCallback;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$DeviceCallback;->beforeCloseCamera()V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->doCloseCamera(Z)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->releaseVariables()V
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
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_1
    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraId:Ljava/lang/String;

    sget-object p1, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[closeCamera] - mCameraState ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public configCamera(Landroid/view/Surface;Z)V
    .locals 0

    return-void
.end method

.method public getCamcorderProfile()Landroid/media/CamcorderProfile;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mProfile:Landroid/media/CamcorderProfile;

    return-object v0
.end method

.method public getCamera()Lcom/freeme/camera/common/device/v1/CameraProxy;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    return-object v0
.end method

.method public getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected getCameraState()Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public isReadyForCapture()Z
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->getCameraState()Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

.method public isSupportShutterSound()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVssSupported(I)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object p1, v0, p1

    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->getOriginalParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isVideoSnapshotSupported()Z

    move-result p1

    return p1
.end method

.method public lockCamera()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[lockCamera]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCanConfigParameter:Z

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->lock(Z)V

    :cond_0
    return-void
.end method

.method public openCamera(Lcom/freeme/camera/common/setting/ISettingManager;Ljava/lang/String;ZLcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$RestrictionProvider;)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/setting/ISettingManager;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[openCamera] + proxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sync = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mCameraState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mRestrictionProvider:Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$RestrictionProvider;

    :try_start_0
    iget-object p4, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLock:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v0, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p4, v0, v1, v2}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    invoke-direct {p0, p2}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->canDoOpenCamera(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    sget-object p4, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;->CAMERA_OPENING:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    invoke-virtual {p0, p4}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->updateCameraState(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {p1, p0}, Lcom/freeme/camera/common/setting/ISettingManager;->updateModeDeviceRequester(Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingDeviceConfigurator()Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraId:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraId:Ljava/lang/String;

    iget-object p4, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxyStateCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;

    invoke-virtual {p2, p3, p4, p1}, Lcom/freeme/camera/common/device/CameraDeviceManager;->openCameraSync(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraStateCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraId:Ljava/lang/String;

    iget-object p4, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxyStateCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;

    invoke-virtual {p2, p3, p4, p1}, Lcom/freeme/camera/common/device/CameraDeviceManager;->openCamera(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraStateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Lcom/freeme/camera/common/device/CameraOpenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_2
    sget-object p2, Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;->SECURITY_EXCEPTION:Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/CameraOpenException;->getExceptionType()Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;

    move-result-object p1

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mActivity:Landroid/app/Activity;

    const/16 p2, 0x3e8

    invoke-static {p1, p2}, Lcom/freeme/camera/common/utils/CameraUtil;->showErrorInfoAndFinish(Landroid/app/Activity;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    sget-object p1, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[openCamera] -"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :goto_2
    iget-object p2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public postRecordingRestriction(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/relation/Relation;",
            ">;Z)V"
        }
    .end annotation

    sget-object p2, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->getCameraState()Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    move-result-object v0

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/freeme/camera/common/relation/Relation;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {p2, p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Landroid/hardware/Camera$Parameters;)Z

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {p2, p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    sget-object p1, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[postRecordingRestriction] state is not right"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public preventChangeSettings()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLockCameraAndRequestSettingsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[preventChangeSettings]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCanConfigParameter:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLockCameraAndRequestSettingsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLockCameraAndRequestSettingsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public queryCameraDeviceManager()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    sget-object v1, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API1:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/ICameraContext;->getDeviceManager(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/device/CameraDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    return-void
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLockCameraAndRequestSettingsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mVideoHandler:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$VideoDeviceHandler;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$VideoDeviceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[release] unregisterValueChangedListener"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string v1, "key_scene_mode"

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mStatusListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->updateCameraState(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLockCameraAndRequestSettingsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLockCameraAndRequestSettingsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public requestChangeCommand(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    sget-object v1, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-interface {v0, p1, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;->configCommand(Ljava/lang/String;Lcom/freeme/camera/common/device/v1/CameraProxy;)V

    :cond_0
    return-void
.end method

.method public requestChangeCommandImmediately(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    sget-object v1, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-interface {v0, p1, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;->configCommand(Ljava/lang/String;Lcom/freeme/camera/common/device/v1/CameraProxy;)V

    :cond_0
    return-void
.end method

.method public requestChangeSettingValue(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLockCameraAndRequestSettingsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[requestChangeSettingValue] key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->canChangeSettings()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->setParameterRotation(Landroid/hardware/Camera$Parameters;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->updatePreviewSize(Landroid/hardware/Camera$Parameters;)V

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->updatePictureSize(Landroid/hardware/Camera$Parameters;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {v2, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mIsDuringRecording:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->stopPreview()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mNeedRestartPreview:Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSurfaceObject:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->doStartPreview(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v2, "key_video_quality"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mIsDuringRecording:Z

    if-nez p1, :cond_2

    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mNeedRestartPreview:Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->stopPreview()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;->onPreviewStopped()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$DeviceCallback;

    invoke-interface {p1}, Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$DeviceCallback;->afterStopPreview()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSettingConfig:Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$SettingConfigCallback;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mPreviewSize:Lcom/freeme/camera/common/utils/Size;

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$SettingConfigCallback;->onConfig(Lcom/freeme/camera/common/utils/Size;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLockCameraAndRequestSettingsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLockCameraAndRequestSettingsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public requestChangeSettingValueJustSelf(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPreviewCallback(Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$PreviewCallback;Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$DeviceCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mPreviewCallback:Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$PreviewCallback;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$DeviceCallback;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mPreviewCallback:Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$PreviewCallback;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_0
    return-void
.end method

.method public setSettingConfigCallback(Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$SettingConfigCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSettingConfig:Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$SettingConfigCallback;

    return-void
.end method

.method public startPreview()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[startPreview]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->startPreview()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;->onPreviewStarted()V

    :cond_0
    return-void
.end method

.method public startRecording()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mIsDuringRecording:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCanConfigParameter:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->lock(Z)V

    return-void
.end method

.method public stopPreview()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[stopPreview]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->stopPreview()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$DeviceCallback;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$DeviceCallback;->afterStopPreview()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;->onPreviewStopped()V

    :cond_0
    return-void
.end method

.method public stopRecording()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mIsDuringRecording:Z

    return-void
.end method

.method public takePicture(Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$JpegCallback;)V
    .locals 2
    .param p1    # Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$JpegCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[takePicture]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mJpegReceivedCallback:Lcom/freeme/camera/feature/mode/videobeautyface/device/IDeviceController$JpegCallback;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->setJpegRotation()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    return-void
.end method

.method public unLockCamera()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLockCameraAndRequestSettingsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[unLockCamera]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCanConfigParameter:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->unlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLockCameraAndRequestSettingsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLockCameraAndRequestSettingsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method protected updateCameraState(Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateCameraState] new = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " old state ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mCameraState:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$CameraState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mLockState:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public updateGSensorOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mJpegRotation:I

    return-void
.end method

.method public updatePreviewSurface(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController;->mVideoHandler:Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$VideoDeviceHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/feature/mode/videobeautyface/device/v1/VideoDeviceController$VideoDeviceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
