.class public Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;
.super Lcom/freeme/camera/common/mode/CameraModeBase;
.source "CameraWaterMode.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController$CaptureDataCallback;
.implements Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController$DeviceCallback;
.implements Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController$PreviewSizeCallback;
.implements Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$MyStatusChangeListener;,
        Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$SurfaceChangeListener;,
        Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$CameraExt;
    }
.end annotation


# static fields
.field private static final DNG_IMAGE_SIZE:J = 0x2d00000L

.field private static final JPEG_CALLBACK:Ljava/lang/String; = "jpeg callback"

.field private static final KEY_DNG:Ljava/lang/String; = "key_dng"

.field private static final KEY_FORMTAT:Ljava/lang/String; = "key_format"

.field private static final KEY_MATRIX_DISPLAY_SHOW:Ljava/lang/String; = "key_matrix_display_show"

.field protected static final KEY_PHOTO_CAPTURE:Ljava/lang/String; = "key_photo_capture"

.field private static final KEY_PICTURE_SIZE:Ljava/lang/String; = "key_picture_size"

.field private static final KEY_PICTURE_SIZE_4_3:Ljava/lang/String; = "key_picture_size_4_3"

.field protected static final PHOTO_CAPTURE_START:Ljava/lang/String; = "start"

.field protected static final PHOTO_CAPTURE_STOP:Ljava/lang/String; = "stop"

.field private static final POST_VIEW_CALLBACK:Ljava/lang/String; = "post view callback"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mCameraId:Ljava/lang/String;

.field protected mCameraWaterModeHelper:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterModeHelper;

.field protected mCameraWaterStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

.field protected mCaptureHeight:I

.field private mCaptureNumberSync:Ljava/lang/Object;

.field protected mCaptureWidth:I

.field private mCapturingNumber:I

.field protected mIDeviceController:Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;

.field private mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

.field private mISurfaceStatusListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

.field private mIsMatrixDisplayShow:Z

.field protected volatile mIsResumed:Z

.field private mLocalPictureSize:Landroid/hardware/Camera$Size;

.field private mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

.field private mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

.field private mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

.field public mOrientation:I

.field private mPreviewData:[B

.field private mPreviewDataSync:Ljava/lang/Object;

.field private mPreviewFormat:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mScreenRatio:I

.field private mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

.field private mbottomMargin:I

.field private pictureSize:Lcom/freeme/camera/data/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/CameraModeBase;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCaptureHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIsResumed:Z

    new-instance v0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$SurfaceChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$SurfaceChangeListener;-><init>(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$1;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mISurfaceStatusListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCapturingNumber:I

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIsMatrixDisplayShow:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewDataSync:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCaptureNumberSync:Ljava/lang/Object;

    new-instance v2, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$MyStatusChangeListener;

    invoke-direct {v2, p0, v1}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$MyStatusChangeListener;-><init>(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$1;)V

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    sget-object v2, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->NORMAL:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    iput v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mOrientation:I

    iput v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mScreenRatio:I

    iput v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mbottomMargin:I

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->pictureSize:Lcom/freeme/camera/data/Size;

    new-instance v0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$6;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$6;-><init>(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1100()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;Landroid/hardware/Camera$Size;)Landroid/hardware/Camera$Size;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mLocalPictureSize:Landroid/hardware/Camera$Size;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->stopSwitchCameraAnimation()V

    return-void
.end method

.method static synthetic access$1500(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->stopCaptureAnimation()V

    return-void
.end method

.method static synthetic access$1600(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->showCameraWaterin()V

    return-void
.end method

.method static synthetic access$1700(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCaptureNumberSync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCapturingNumber:I

    return p0
.end method

.method static synthetic access$2010(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)I
    .locals 2

    iget v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCapturingNumber:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCapturingNumber:I

    return v0
.end method

.method static synthetic access$2102(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewWidth:I

    return p0
.end method

.method static synthetic access$2800(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewHeight:I

    return p0
.end method

.method static synthetic access$2900(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->onPreviewSizeChanged(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$3002(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIsMatrixDisplayShow:Z

    return p1
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method private canSelectCamera(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    sget-object v0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[canSelectCamera] +: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return p1
.end method

.method private clearAllCallbacks(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;->setPreviewSizeReadyCallback(Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController$PreviewSizeCallback;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/ICameraContext;->getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;

    move-result-object p1

    const-string v0, "key_picture_size"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    const-string v0, "key_format"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    const-string v0, "key_matrix_display_show"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private disableAllUIExceptionShutter()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/freeme/camera/common/IAppUi;->setUIEnabled(IZ)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v2, 0x7

    invoke-interface {v0, v2, v1}, Lcom/freeme/camera/common/IAppUi;->setUIEnabled(IZ)V

    return-void
.end method

.method private doCameraSelect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/freeme/camera/common/IAppUi;->onCameraSelected(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->prePareAndCloseCamera(ZLjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->recycleSettingManager(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->initSettingManager(Ljava/lang/String;)V

    invoke-direct {p0, v1, p2, v0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->prepareAndOpenCamera(ZLjava/lang/String;Z)V

    return-void
.end method

.method private initSettingManager(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getSettingManagerFactory()Lcom/freeme/camera/common/setting/SettingManagerFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->getModeKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/freeme/camera/common/setting/SettingManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/setting/ISettingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$5;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$5;-><init>(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initStatusMonitor()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/ICameraContext;->getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;

    move-result-object v0

    const-string v1, "key_photo_capture"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraWaterStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    return-void
.end method

.method private onPreviewSizeChanged(II)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewData:[B

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewWidth:I

    iput p2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewHeight:I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget p2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewWidth:I

    iget v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewHeight:I

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mISurfaceStatusListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    invoke-interface {p1, p2, v0, v1}, Lcom/freeme/camera/common/IAppUi;->setPreviewSize(IILcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private prePareAndCloseCamera(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->clearAllCallbacks(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;

    invoke-interface {p2, p1}, Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;->closeCamera(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIsMatrixDisplayShow:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewData:[B

    iput p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewWidth:I

    iput p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewHeight:I

    return-void
.end method

.method private prepareAndOpenCamera(ZLjava/lang/String;Z)V
    .locals 2

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraId:Ljava/lang/String;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraId:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/freeme/camera/common/ICameraContext;->getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;

    move-result-object p2

    const-string v0, "key_picture_size"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p2, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    const-string v0, "key_format"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p2, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    const-string v0, "key_matrix_display_show"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p2, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;

    invoke-interface {p2, p0}, Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;->setDeviceCallback(Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController$DeviceCallback;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;

    invoke-interface {p2, p0}, Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;->setPreviewSizeReadyCallback(Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController$PreviewSizeCallback;)V

    new-instance p2, Lcom/freeme/camera/feature/mode/camerawater/DeviceInfo;

    invoke-direct {p2}, Lcom/freeme/camera/feature/mode/camerawater/DeviceInfo;-><init>()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/freeme/camera/feature/mode/camerawater/DeviceInfo;->setCameraId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-virtual {p2, v0}, Lcom/freeme/camera/feature/mode/camerawater/DeviceInfo;->setSettingManager(Lcom/freeme/camera/common/setting/ISettingManager;)V

    invoke-virtual {p2, p1}, Lcom/freeme/camera/feature/mode/camerawater/DeviceInfo;->setNeedOpenCameraSync(Z)V

    invoke-virtual {p2, p3}, Lcom/freeme/camera/feature/mode/camerawater/DeviceInfo;->setNeedFastStartPreview(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;

    invoke-interface {p1, p2}, Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;->openCamera(Lcom/freeme/camera/feature/mode/camerawater/DeviceInfo;)V

    return-void
.end method

.method private prepareAnimationData([BIII)Lcom/freeme/camera/common/IAppUi$AnimationData;
    .locals 1

    new-instance v0, Lcom/freeme/camera/common/IAppUi$AnimationData;

    invoke-direct {v0}, Lcom/freeme/camera/common/IAppUi$AnimationData;-><init>()V

    iput-object p1, v0, Lcom/freeme/camera/common/IAppUi$AnimationData;->mData:[B

    iput p2, v0, Lcom/freeme/camera/common/IAppUi$AnimationData;->mWidth:I

    iput p3, v0, Lcom/freeme/camera/common/IAppUi$AnimationData;->mHeight:I

    iput p4, v0, Lcom/freeme/camera/common/IAppUi$AnimationData;->mFormat:I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraWaterModeHelper:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterModeHelper;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraId:Ljava/lang/String;

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterModeHelper;->getCameraInfoOrientation(Ljava/lang/String;Landroid/app/Activity;)I

    move-result p1

    iput p1, v0, Lcom/freeme/camera/common/IAppUi$AnimationData;->mOrientation:I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraWaterModeHelper:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterModeHelper;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraId:Ljava/lang/String;

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterModeHelper;->isMirror(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/freeme/camera/common/IAppUi$AnimationData;->mIsMirror:Z

    return-object v0
.end method

.method private recycleSettingManager(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getSettingManagerFactory()Lcom/freeme/camera/common/setting/SettingManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/setting/SettingManagerFactory;->recycle(Ljava/lang/String;)V

    return-void
.end method

.method private saveData([BLcom/freeme/camera/common/exif/ExifInterface;)V
    .locals 10

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_dng"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    int-to-long v1, v1

    if-eqz v0, :cond_0

    const-string v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v3, 0x2d00000

    add-long/2addr v1, v3

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCaptureNumberSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v3, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCapturingNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCapturingNumber:I

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {v3, v1, v2}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->checkOneShotMemoryAction(J)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/storage/IStorageService;->getFileDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/freeme/camera/common/utils/CameraUtil;->getSizeFromExif([B)Lcom/freeme/camera/common/utils/Size;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraWaterModeHelper:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterModeHelper;

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v1

    invoke-virtual {v2, p1, v0, v3, v1}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterModeHelper;->createContentValues([BLjava/lang/String;II)Landroid/content/ContentValues;

    move-result-object v6

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getMediaSaver()Lcom/freeme/camera/common/storage/MediaSaver;

    move-result-object v4

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    move-object v5, p1

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/freeme/camera/common/storage/MediaSaver;->addSaveRequest([BLandroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;Lcom/freeme/camera/common/exif/ExifInterface;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter p2

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewData:[B

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->updateThumbnail([B)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private showCameraWaterin()V
    .locals 3

    new-instance v0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$CameraExt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$CameraExt;-><init>(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$1;)V

    invoke-static {}, Lcom/freeme/camera/CameraInterfaceManage;->getInstance()Lcom/freeme/camera/CameraInterfaceManage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/freeme/camera/CameraInterfaceManage;->setCameraExt(Lcom/freeme/camera/ICameraExt;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mbottomMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/ui/CameraAppUI;

    invoke-virtual {v1}, Lcom/freeme/camera/ui/CameraAppUI;->getmPreviewManager()Lcom/freeme/camera/ui/preview/PreviewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/ui/preview/PreviewManager;->getPreviewRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$1;

    invoke-direct {v2, p0, v0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$1;-><init>(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startCaptureAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_CAPTURE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/IAppUi;->animationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V

    return-void
.end method

.method private startChangeModeAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewData:[B

    iget v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewWidth:I

    iget v2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewHeight:I

    iget v3, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewFormat:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->prepareAnimationData([BIII)Lcom/freeme/camera/common/IAppUi$AnimationData;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_MODE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v1, v2, v0}, Lcom/freeme/camera/common/IAppUi;->animationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V

    return-void
.end method

.method private startSwitchCameraAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewData:[B

    iget v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewWidth:I

    iget v2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewHeight:I

    iget v3, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewFormat:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->prepareAnimationData([BIII)Lcom/freeme/camera/common/IAppUi$AnimationData;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_CAMERA:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v1, v2, v0}, Lcom/freeme/camera/common/IAppUi;->animationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V

    return-void
.end method

.method private stopCaptureAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_CAPTURE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->animationEnd(Lcom/freeme/camera/common/IAppUi$AnimationType;)V

    return-void
.end method

.method private stopChangeModeAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_MODE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->animationEnd(Lcom/freeme/camera/common/IAppUi$AnimationType;)V

    return-void
.end method

.method private stopSwitchCameraAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_CAMERA:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->animationEnd(Lcom/freeme/camera/common/IAppUi$AnimationType;)V

    return-void
.end method

.method private updatePictureSizeAndPreviewSize(Lcom/freeme/camera/common/utils/Size;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_picture_size_4_3"

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getCameraScope(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIsResumed:Z

    if-eqz v1, :cond_1

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCaptureWidth:I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCaptureHeight:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;

    new-instance v1, Lcom/freeme/camera/common/utils/Size;

    iget v2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCaptureWidth:I

    iget v3, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCaptureHeight:I

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;->setPictureSize(Lcom/freeme/camera/common/utils/Size;)V

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result p1

    sget-object v1, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updatePictureSizeAndPreviewSize] picture size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCaptureWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCaptureHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",current preview size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " X "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",new value :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " X "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewWidth:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewHeight:I

    if-eq p1, v1, :cond_1

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->onPreviewSizeChanged(II)V

    :cond_1
    return-void
.end method

.method private updateThumbnail([B)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getThumbnailViewWidth()I

    move-result v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/utils/BitmapCreator;->createBitmapFromJpeg([BI)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_mirror_capture"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraId:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPrevMirrorCapture:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/freeme/camera/common/mode/photo/PhotoModeHelper;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/IAppUi;->updateThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public afterStopPreview()V
    .locals 1

    const-string v0, "opened"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->updateModeDeviceState(Ljava/lang/String;)V

    return-void
.end method

.method public beforeCloseCamera()V
    .locals 1

    const-string v0, "closed"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->updateModeDeviceState(Ljava/lang/String;)V

    return-void
.end method

.method protected doShutterButtonClick()Z
    .locals 7

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/storage/IStorageService;->getCaptureStorageSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;

    invoke-interface {v3}, Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;->isReadyForCapture()Z

    move-result v3

    sget-object v4, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onShutterButtonClick, is storage ready : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",isDeviceReady = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIsResumed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    sget-object v3, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->STOP:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    if-eq v0, v3, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->startCaptureAnimation()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraWaterStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    const-string v3, "key_photo_capture"

    const-string v4, "start"

    invoke-virtual {v0, v3, v4}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "capturing"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->updateModeDeviceState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->disableAllUIExceptionShutter()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;->updateGSensorOrientation(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;

    invoke-interface {v0, p0}, Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;->takePicture(Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController$CaptureDataCallback;)V

    :cond_1
    return v1
.end method

.method protected getSettingManager()Lcom/freeme/camera/common/setting/ISettingManager;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V
    .locals 4
    .param p1    # Lcom/freeme/camera/common/app/IApp;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/ICameraContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[init]+"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/mode/CameraModeBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_camera_switcher"

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v2}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->getCameraIdByFacing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraId:Ljava/lang/String;

    new-instance v0, Lcom/freeme/camera/feature/mode/camerawater/device/DeviceControllerFactory;

    invoke-direct {v0}, Lcom/freeme/camera/feature/mode/camerawater/device/DeviceControllerFactory;-><init>()V

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/feature/mode/camerawater/device/DeviceControllerFactory;->createDeviceController(Landroid/app/Activity;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Lcom/freeme/camera/common/ICameraContext;)Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->initSettingManager(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->initStatusMonitor()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p3}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->prepareAndOpenCamera(ZLjava/lang/String;Z)V

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/camerawater/ThumbnailHelper;->setApp(Lcom/freeme/camera/common/app/IApp;)V

    new-instance p3, Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    new-instance p3, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterModeHelper;

    invoke-direct {p3, p2}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterModeHelper;-><init>(Lcom/freeme/camera/common/ICameraContext;)V

    iput-object p3, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraWaterModeHelper:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterModeHelper;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    sget-object p1, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[init]- "

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onCameraOpened(Ljava/lang/String;)V
    .locals 0

    const-string p1, "opened"

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->updateModeDeviceState(Ljava/lang/String;)V

    return-void
.end method

.method public onCameraSelected(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCameraSelected] ,new id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",current id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->canSelectCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->startSwitchCameraAnimation()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->doCameraSelect(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDataReceived(Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController$DataCallbackInfo;)V
    .locals 5

    iget-object v0, p1, Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController$DataCallbackInfo;->data:[B

    iget v1, p1, Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController$DataCallbackInfo;->mBufferFormat:I

    iget-boolean v1, p1, Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController$DataCallbackInfo;->needUpdateThumbnail:Z

    iget-boolean p1, p1, Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController$DataCallbackInfo;->needRestartPreview:Z

    sget-object v2, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataReceived, data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",mIsResumed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIsResumed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",needUpdateThumbnail = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",needRestartPreview = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v1, "jpeg callback"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/CameraSysTrace;->onEventSystrace(Ljava/lang/String;Z)V

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v2}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v2

    const-string v3, "key_mirror_capture"

    invoke-interface {v2, v3}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraId:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPrevMirrorCapture:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/utils/CameraUtil;->mirrorJpegData([BI)[B

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lcom/freeme/camera/common/exif/Exif;->getExif([B)Lcom/freeme/camera/common/exif/ExifInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v3}, Lcom/freeme/camera/common/app/IApp;->getmPluginManagerAgent()Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;

    move-result-object v3

    const/16 v4, 0x66

    invoke-virtual {v3, v0, v4}, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->blendOutput([BI)[B

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->saveData([BLcom/freeme/camera/common/exif/ExifInterface;)V

    :cond_2
    iget-boolean v2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIsResumed:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    sget-object v3, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API1:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    if-ne v2, v3, :cond_3

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIsMatrixDisplayShow:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;

    invoke-interface {p1}, Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;->startPreview()V

    :cond_3
    if-eqz v0, :cond_4

    const-string p1, "jpeg callback"

    invoke-static {p1, v1}, Lcom/freeme/camera/common/debug/CameraSysTrace;->onEventSystrace(Ljava/lang/String;Z)V

    :cond_4
    return-void
.end method

.method public onMemoryStateChanged(Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->STOP:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCapturingNumber:I

    if-eqz p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "memory low, show saving"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/common/IAppUi;->showSavingDialog(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibility(I)V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2

    iput p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mOrientation:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getmPluginManagerAgent()Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->notifyOrientationChanged(II)V

    return-void
.end method

.method public onPostViewCallback([B)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPostViewCallback] data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",mIsResumed = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIsResumed:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string p1, "post view callback"

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/CameraSysTrace;->onEventSystrace(Ljava/lang/String;Z)V

    const-string p1, "post view callback"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/CameraSysTrace;->onEventSystrace(Ljava/lang/String;Z)V

    return-void
.end method

.method public onPreviewCallback([BI)V
    .locals 3

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIsResumed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIsMatrixDisplayShow:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/IAppUi;->onPreviewStarted(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewData:[B

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$3;

    invoke-direct {v2, p0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$3;-><init>(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    const-string v1, "previewing"

    invoke-virtual {p0, v1}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->updateModeDeviceState(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewData:[B

    iput p2, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mPreviewFormat:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onPreviewSizeReady(Lcom/freeme/camera/common/utils/Size;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPreviewSizeReady] previewSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->updatePictureSizeAndPreviewSize(Lcom/freeme/camera/common/utils/Size;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$4;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$4;-><init>(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onShutterButtonFocus(Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onShutterButtonLongPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pause(Lcom/freeme/camera/common/mode/DeviceUsage;)V
    .locals 2
    .param p1    # Lcom/freeme/camera/common/mode/DeviceUsage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[pause]+"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/CameraModeBase;->pause(Lcom/freeme/camera/common/mode/DeviceUsage;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$2;-><init>(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIsResumed:Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {p1, p0}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->removeListener(Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mISurfaceStatusListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->clearPreviewStatusListener(Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mNeedCloseCameraIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->needCloseCameraSync()Z

    move-result p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->prePareAndCloseCamera(ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->recycleSettingManager(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->clearAllCallbacks(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;

    invoke-interface {p1}, Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;->stopPreview()V

    :goto_0
    sget-object p1, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[pause]-"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public resume(Lcom/freeme/camera/common/mode/DeviceUsage;)V
    .locals 2
    .param p1    # Lcom/freeme/camera/common/mode/DeviceUsage;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/CameraModeBase;->resume(Lcom/freeme/camera/common/mode/DeviceUsage;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    const/16 v0, 0x66

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/app/IApp;->setCurrentCameraMode(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIsResumed:Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->initSettingManager(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->initStatusMonitor()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {p1, p0}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->addListener(Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/storage/IStorageService;->getCaptureStorageSpace()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->initStateForCapture(J)V

    sget-object p1, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->NORMAL:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;

    invoke-interface {p1}, Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;->queryCameraDeviceManager()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mCameraId:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->prepareAndOpenCamera(ZLjava/lang/String;Z)V

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {v0, p1}, Lcom/freeme/camera/common/utils/CameraUtil;->determineRatio(II)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mScreenRatio:I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/IAppUi;->getShutterRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mbottomMargin:I

    :cond_0
    return-void
.end method

.method public setPluginVisibility(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/CameraModeBase;->setPluginVisibility(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getmPluginManagerAgent()Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->showSettingPanel(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getmPluginManagerAgent()Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->hideSettingPanel(I)V

    :goto_0
    return-void
.end method

.method public unInit()V
    .locals 1

    invoke-super {p0}, Lcom/freeme/camera/common/mode/CameraModeBase;->unInit()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/camerawater/device/IDeviceController;->destroyDeviceController()V

    return-void
.end method
