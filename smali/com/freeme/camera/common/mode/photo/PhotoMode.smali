.class public Lcom/freeme/camera/common/mode/photo/PhotoMode;
.super Lcom/freeme/camera/common/mode/CameraModeBase;
.source "PhotoMode.java"

# interfaces
.implements Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;
.implements Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DeviceCallback;
.implements Lcom/freeme/camera/common/mode/photo/device/IDeviceController$PreviewSizeCallback;
.implements Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/mode/photo/PhotoMode$MyStatusChangeListener;,
        Lcom/freeme/camera/common/mode/photo/PhotoMode$SurfaceChangeListener;
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

.field private static final MICRO_LEN_CAMERA_ID:Ljava/lang/String; = "4"

.field protected static final PHOTO_CAPTURE_START:Ljava/lang/String; = "start"

.field protected static final PHOTO_CAPTURE_STOP:Ljava/lang/String; = "stop"

.field private static final POST_VIEW_CALLBACK:Ljava/lang/String; = "post view callback"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final WIDE_ANGLE_CAMERA_ID:Ljava/lang/String; = "3"


# instance fields
.field private mCameraId:Ljava/lang/String;

.field protected mCaptureHeight:I

.field private mCaptureNumberSync:Ljava/lang/Object;

.field protected mCaptureWidth:I

.field private mCapturingNumber:I

.field protected mIDeviceController:Lcom/freeme/camera/common/mode/photo/device/IDeviceController;

.field private mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

.field private mISurfaceStatusListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

.field private mIsMatrixDisplayShow:Z

.field protected volatile mIsResumed:Z

.field private mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

.field private mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

.field private mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

.field protected mPhotoModeHelper:Lcom/freeme/camera/common/mode/photo/PhotoModeHelper;

.field protected mPhotoStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

.field private mPreviewData:[B

.field private mPreviewDataSync:Ljava/lang/Object;

.field private mPreviewFormat:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/mode/photo/PhotoMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/CameraModeBase;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCaptureHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIsResumed:Z

    new-instance v0, Lcom/freeme/camera/common/mode/photo/PhotoMode$SurfaceChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/common/mode/photo/PhotoMode$SurfaceChangeListener;-><init>(Lcom/freeme/camera/common/mode/photo/PhotoMode;Lcom/freeme/camera/common/mode/photo/PhotoMode$1;)V

    iput-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mISurfaceStatusListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCapturingNumber:I

    iput-boolean v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIsMatrixDisplayShow:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewDataSync:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCaptureNumberSync:Ljava/lang/Object;

    new-instance v0, Lcom/freeme/camera/common/mode/photo/PhotoMode$MyStatusChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/common/mode/photo/PhotoMode$MyStatusChangeListener;-><init>(Lcom/freeme/camera/common/mode/photo/PhotoMode;Lcom/freeme/camera/common/mode/photo/PhotoMode$1;)V

    iput-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    sget-object v0, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->NORMAL:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    iput-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    new-instance v0, Lcom/freeme/camera/common/mode/photo/PhotoMode$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/mode/photo/PhotoMode$2;-><init>(Lcom/freeme/camera/common/mode/photo/PhotoMode;)V

    iput-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/freeme/camera/common/mode/photo/PhotoMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/common/mode/photo/PhotoMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/freeme/camera/common/mode/photo/PhotoMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/freeme/camera/common/mode/photo/PhotoMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/freeme/camera/common/mode/photo/PhotoMode;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewWidth:I

    return p0
.end method

.method static synthetic access$1500(Lcom/freeme/camera/common/mode/photo/PhotoMode;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewHeight:I

    return p0
.end method

.method static synthetic access$1600(Lcom/freeme/camera/common/mode/photo/PhotoMode;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->onPreviewSizeChanged(II)V

    return-void
.end method

.method static synthetic access$1702(Lcom/freeme/camera/common/mode/photo/PhotoMode;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIsMatrixDisplayShow:Z

    return p1
.end method

.method static synthetic access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/freeme/camera/common/mode/photo/PhotoMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->stopSwitchCameraAnimation()V

    return-void
.end method

.method static synthetic access$400(Lcom/freeme/camera/common/mode/photo/PhotoMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->stopCaptureAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/freeme/camera/common/mode/photo/PhotoMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/common/mode/photo/PhotoMode;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCaptureNumberSync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/common/mode/photo/PhotoMode;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCapturingNumber:I

    return p0
.end method

.method static synthetic access$710(Lcom/freeme/camera/common/mode/photo/PhotoMode;)I
    .locals 2

    iget v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCapturingNumber:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCapturingNumber:I

    return v0
.end method

.method static synthetic access$802(Lcom/freeme/camera/common/mode/photo/PhotoMode;Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    return-object p1
.end method

.method static synthetic access$900(Lcom/freeme/camera/common/mode/photo/PhotoMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method private canSelectCamera(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

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
    sget-object v0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIDeviceController:Lcom/freeme/camera/common/mode/photo/device/IDeviceController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/mode/photo/device/IDeviceController;->setPreviewSizeReadyCallback(Lcom/freeme/camera/common/mode/photo/device/IDeviceController$PreviewSizeCallback;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/ICameraContext;->getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;

    move-result-object p1

    const-string v0, "key_picture_size"

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    const-string v0, "key_format"

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    const-string v0, "key_matrix_display_show"

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private disableAllUIExceptionShutter()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/freeme/camera/common/IAppUi;->setUIEnabled(IZ)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v2, 0x7

    invoke-interface {v0, v2, v1}, Lcom/freeme/camera/common/IAppUi;->setUIEnabled(IZ)V

    return-void
.end method

.method private doCameraSelect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/freeme/camera/common/IAppUi;->onCameraSelected(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->prePareAndCloseCamera(ZLjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->recycleSettingManager(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->initSettingManager(Ljava/lang/String;)V

    invoke-direct {p0, v1, p2, v0}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->prepareAndOpenCamera(ZLjava/lang/String;Z)V

    return-void
.end method

.method private initSettingManager(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getSettingManagerFactory()Lcom/freeme/camera/common/setting/SettingManagerFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->getModeKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    iget-object v3, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/freeme/camera/common/setting/SettingManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/setting/ISettingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    return-void
.end method

.method private initStatusMonitor()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/ICameraContext;->getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;

    move-result-object v0

    const-string v1, "key_photo_capture"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPhotoStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    return-void
.end method

.method private onPreviewSizeChanged(II)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewData:[B

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewWidth:I

    iput p2, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewHeight:I

    iget-object p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget p2, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewWidth:I

    iget v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewHeight:I

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mISurfaceStatusListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

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

    invoke-direct {p0, p2}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->clearAllCallbacks(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIDeviceController:Lcom/freeme/camera/common/mode/photo/device/IDeviceController;

    invoke-interface {p2, p1}, Lcom/freeme/camera/common/mode/photo/device/IDeviceController;->closeCamera(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIsMatrixDisplayShow:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewData:[B

    iput p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewWidth:I

    iput p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewHeight:I

    return-void
.end method

.method private prepareAndOpenCamera(ZLjava/lang/String;Z)V
    .locals 2

    iput-object p2, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    iget-object p2, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/freeme/camera/common/ICameraContext;->getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;

    move-result-object p2

    const-string v0, "key_picture_size"

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p2, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    const-string v0, "key_format"

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p2, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    const-string v0, "key_matrix_display_show"

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p2, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    iget-object p2, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIDeviceController:Lcom/freeme/camera/common/mode/photo/device/IDeviceController;

    invoke-interface {p2, p0}, Lcom/freeme/camera/common/mode/photo/device/IDeviceController;->setDeviceCallback(Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DeviceCallback;)V

    iget-object p2, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIDeviceController:Lcom/freeme/camera/common/mode/photo/device/IDeviceController;

    invoke-interface {p2, p0}, Lcom/freeme/camera/common/mode/photo/device/IDeviceController;->setPreviewSizeReadyCallback(Lcom/freeme/camera/common/mode/photo/device/IDeviceController$PreviewSizeCallback;)V

    new-instance p2, Lcom/freeme/camera/common/mode/photo/DeviceInfo;

    invoke-direct {p2}, Lcom/freeme/camera/common/mode/photo/DeviceInfo;-><init>()V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/freeme/camera/common/mode/photo/DeviceInfo;->setCameraId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-virtual {p2, v0}, Lcom/freeme/camera/common/mode/photo/DeviceInfo;->setSettingManager(Lcom/freeme/camera/common/setting/ISettingManager;)V

    invoke-virtual {p2, p1}, Lcom/freeme/camera/common/mode/photo/DeviceInfo;->setNeedOpenCameraSync(Z)V

    invoke-virtual {p2, p3}, Lcom/freeme/camera/common/mode/photo/DeviceInfo;->setNeedFastStartPreview(Z)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIDeviceController:Lcom/freeme/camera/common/mode/photo/device/IDeviceController;

    invoke-interface {p1, p2}, Lcom/freeme/camera/common/mode/photo/device/IDeviceController;->openCamera(Lcom/freeme/camera/common/mode/photo/DeviceInfo;)V

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

    iget-object p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPhotoModeHelper:Lcom/freeme/camera/common/mode/photo/PhotoModeHelper;

    iget-object p2, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    iget-object p3, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/common/mode/photo/PhotoModeHelper;->getCameraInfoOrientation(Ljava/lang/String;Landroid/app/Activity;)I

    move-result p1

    iput p1, v0, Lcom/freeme/camera/common/IAppUi$AnimationData;->mOrientation:I

    iget-object p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPhotoModeHelper:Lcom/freeme/camera/common/mode/photo/PhotoModeHelper;

    iget-object p2, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    iget-object p3, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/common/mode/photo/PhotoModeHelper;->isMirror(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/freeme/camera/common/IAppUi$AnimationData;->mIsMirror:Z

    return-object v0
.end method

.method private recycleSettingManager(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getSettingManagerFactory()Lcom/freeme/camera/common/setting/SettingManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/setting/SettingManagerFactory;->recycle(Ljava/lang/String;)V

    return-void
.end method

.method private saveData([B)V
    .locals 9

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/freeme/camera/common/utils/CameraUtil;->getSizeFromExif([B)Lcom/freeme/camera/common/utils/Size;

    move-result-object v0

    invoke-static {p1}, Lcom/freeme/camera/common/exif/Exif;->getExif([B)Lcom/freeme/camera/common/exif/ExifInterface;

    move-result-object v6

    invoke-virtual {p0}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->getSettingManager()Lcom/freeme/camera/common/setting/ISettingManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v1

    const-string v2, "key_mirror_capture"

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPrevMirrorCapture:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->mirrorJpegData([BI)[B

    move-result-object p1

    :cond_0
    const-string v2, "key_water_capture"

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPrevWaterCapture:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->waterMarkData([B)[B

    move-result-object p1

    move-object v2, p1

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    const-string p1, "key_dng"

    invoke-interface {v1, p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    array-length v1, v2

    int-to-long v3, v1

    if-eqz p1, :cond_2

    const-string v1, "on"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/32 v7, 0x2d00000

    add-long/2addr v3, v7

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCaptureNumberSync:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCapturingNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCapturingNumber:I

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {v1, v3, v4}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->checkOneShotMemoryAction(J)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {p1}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/storage/IStorageService;->getFileDirectory()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPhotoModeHelper:Lcom/freeme/camera/common/mode/photo/PhotoModeHelper;

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v0

    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/freeme/camera/common/mode/photo/PhotoModeHelper;->createContentValues([BLjava/lang/String;II)Landroid/content/ContentValues;

    move-result-object v3

    iget-object p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {p1}, Lcom/freeme/camera/common/ICameraContext;->getMediaSaver()Lcom/freeme/camera/common/storage/MediaSaver;

    move-result-object v1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    invoke-virtual/range {v1 .. v6}, Lcom/freeme/camera/common/storage/MediaSaver;->addSaveRequest([BLandroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;Lcom/freeme/camera/common/exif/ExifInterface;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 p1, 0x0

    :try_start_1
    iput-object p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewData:[B

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method private startCaptureAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_CAPTURE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/IAppUi;->animationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V

    return-void
.end method

.method private startChangeModeAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewData:[B

    iget v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewWidth:I

    iget v2, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewHeight:I

    iget v3, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewFormat:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->prepareAnimationData([BIII)Lcom/freeme/camera/common/IAppUi$AnimationData;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_MODE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v1, v2, v0}, Lcom/freeme/camera/common/IAppUi;->animationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V

    return-void
.end method

.method private startSwitchCameraAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewData:[B

    iget v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewWidth:I

    iget v2, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewHeight:I

    iget v3, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewFormat:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->prepareAnimationData([BIII)Lcom/freeme/camera/common/IAppUi$AnimationData;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_CAMERA:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v1, v2, v0}, Lcom/freeme/camera/common/IAppUi;->animationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V

    return-void
.end method

.method private stopCaptureAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_CAPTURE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->animationEnd(Lcom/freeme/camera/common/IAppUi$AnimationType;)V

    return-void
.end method

.method private stopChangeModeAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_MODE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->animationEnd(Lcom/freeme/camera/common/IAppUi$AnimationType;)V

    return-void
.end method

.method private stopSwitchCameraAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_CAMERA:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->animationEnd(Lcom/freeme/camera/common/IAppUi$AnimationType;)V

    return-void
.end method

.method private updatePictureSizeAndPreviewSize(Lcom/freeme/camera/common/utils/Size;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_picture_size"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIsResumed:Z

    if-eqz v1, :cond_1

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCaptureWidth:I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCaptureHeight:I

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIDeviceController:Lcom/freeme/camera/common/mode/photo/device/IDeviceController;

    new-instance v1, Lcom/freeme/camera/common/utils/Size;

    iget v2, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCaptureWidth:I

    iget v3, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCaptureHeight:I

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/mode/photo/device/IDeviceController;->setPictureSize(Lcom/freeme/camera/common/utils/Size;)V

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result p1

    sget-object v1, Lcom/freeme/camera/common/mode/photo/PhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updatePictureSizeAndPreviewSize] picture size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCaptureWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCaptureHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",current preview size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " X "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewHeight:I

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

    iget v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewWidth:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewHeight:I

    if-eq p1, v1, :cond_1

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->onPreviewSizeChanged(II)V

    :cond_1
    return-void
.end method

.method private updateThumbnail([B)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getThumbnailViewWidth()I

    move-result v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/utils/BitmapCreator;->createBitmapFromJpeg([BI)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->getSettingManager()Lcom/freeme/camera/common/setting/ISettingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_mirror_capture"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPrevMirrorCapture:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/freeme/camera/common/mode/photo/PhotoModeHelper;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/IAppUi;->updateThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public afterStopPreview()V
    .locals 1

    const-string v0, "opened"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->updateModeDeviceState(Ljava/lang/String;)V

    return-void
.end method

.method public beforeCloseCamera()V
    .locals 1

    const-string v0, "closed"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->updateModeDeviceState(Ljava/lang/String;)V

    return-void
.end method

.method protected doShutterButtonClick()Z
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/storage/IStorageService;->getCaptureStorageSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIDeviceController:Lcom/freeme/camera/common/mode/photo/device/IDeviceController;

    invoke-interface {v2}, Lcom/freeme/camera/common/mode/photo/device/IDeviceController;->isReadyForCapture()Z

    move-result v2

    sget-object v3, Lcom/freeme/camera/common/mode/photo/PhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onShutterButtonClick, is storage ready : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",isDeviceReady = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    iget-boolean v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIsResumed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    sget-object v2, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->STOP:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    if-eq v0, v2, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->startCaptureAnimation()V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPhotoStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    const-string v2, "key_photo_capture"

    const-string v3, "start"

    invoke-virtual {v0, v2, v3}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "capturing"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->updateModeDeviceState(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->disableAllUIExceptionShutter()V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIDeviceController:Lcom/freeme/camera/common/mode/photo/device/IDeviceController;

    iget-object v2, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/freeme/camera/common/mode/photo/device/IDeviceController;->updateGSensorOrientation(I)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIDeviceController:Lcom/freeme/camera/common/mode/photo/device/IDeviceController;

    invoke-interface {v0, p0}, Lcom/freeme/camera/common/mode/photo/device/IDeviceController;->takePicture(Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;)V

    :cond_1
    return v1
.end method

.method protected getSettingManager()Lcom/freeme/camera/common/setting/ISettingManager;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

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

    sget-object v0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[init]+"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/mode/CameraModeBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_camera_id"

    const-string v2, "0"

    iget-object v3, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v3}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->setCurrentCameraId(Ljava/lang/String;)V

    new-instance v0, Lcom/freeme/camera/common/mode/photo/device/DeviceControllerFactory;

    invoke-direct {v0}, Lcom/freeme/camera/common/mode/photo/device/DeviceControllerFactory;-><init>()V

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    iget-object v3, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/mode/photo/device/DeviceControllerFactory;->createDeviceController(Landroid/app/Activity;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Lcom/freeme/camera/common/ICameraContext;)Lcom/freeme/camera/common/mode/photo/device/IDeviceController;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIDeviceController:Lcom/freeme/camera/common/mode/photo/device/IDeviceController;

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->initSettingManager(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->initStatusMonitor()V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p3}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->prepareAndOpenCamera(ZLjava/lang/String;Z)V

    invoke-static {p1}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->setApp(Lcom/freeme/camera/common/app/IApp;)V

    new-instance p3, Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    new-instance p1, Lcom/freeme/camera/common/mode/photo/PhotoModeHelper;

    invoke-direct {p1, p2}, Lcom/freeme/camera/common/mode/photo/PhotoModeHelper;-><init>(Lcom/freeme/camera/common/ICameraContext;)V

    iput-object p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPhotoModeHelper:Lcom/freeme/camera/common/mode/photo/PhotoModeHelper;

    sget-object p1, Lcom/freeme/camera/common/mode/photo/PhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[init]- "

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onCameraOpened(Ljava/lang/String;)V
    .locals 0

    const-string p1, "opened"

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->updateModeDeviceState(Ljava/lang/String;)V

    return-void
.end method

.method public onCameraSelected(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCameraSelected] ,new id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",current id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->canSelectCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->startSwitchCameraAnimation()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->doCameraSelect(Ljava/lang/String;Ljava/lang/String;)V

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

.method public onDataReceived(Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;)V
    .locals 11

    iget-object v6, p1, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;->data:[B

    iget v7, p1, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;->mBufferFormat:I

    iget-boolean v8, p1, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;->needUpdateThumbnail:Z

    iget-boolean v9, p1, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;->needRestartPreview:Z

    sget-object v0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataReceived, data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mIsResumed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIsResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",needUpdateThumbnail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",needRestartPreview = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz v6, :cond_0

    const-string v1, "jpeg callback"

    invoke-static {v1, v0}, Lcom/freeme/camera/common/debug/CameraSysTrace;->onEventSystrace(Ljava/lang/String;Z)V

    :cond_0
    const/16 v10, 0x100

    if-eqz v6, :cond_3

    if-ne v7, v10, :cond_1

    invoke-direct {p0, v6}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->saveData([B)V

    goto :goto_0

    :cond_1
    sget v1, Lcom/freeme/camera/common/mode/photo/HeifHelper;->FORMAT_HEIF:I

    if-ne v7, v1, :cond_3

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v1

    const-string v2, "key_dng"

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    array-length v2, v6

    int-to-long v2, v2

    if-eqz v1, :cond_2

    const-string v4, "on"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/32 v4, 0x2d00000

    add-long/2addr v2, v4

    :cond_2
    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCaptureNumberSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v4, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCapturingNumber:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCapturingNumber:I

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {v0, v2, v3}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->checkOneShotMemoryAction(J)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v0, Lcom/freeme/camera/common/mode/photo/HeifHelper;

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/mode/photo/HeifHelper;-><init>(Lcom/freeme/camera/common/ICameraContext;)V

    iget v1, p1, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;->imageWidth:I

    iget p1, p1, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;->imageHeight:I

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/mode/photo/HeifHelper;->getContentValues(II)Landroid/content/ContentValues;

    move-result-object v2

    sget-object p1, Lcom/freeme/camera/common/mode/photo/PhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataReceived,heif values ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {p1}, Lcom/freeme/camera/common/ICameraContext;->getMediaSaver()Lcom/freeme/camera/common/storage/MediaSaver;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    sget v5, Lcom/freeme/camera/common/mode/photo/HeifHelper;->FORMAT_HEIF:I

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/freeme/camera/common/storage/MediaSaver;->addSaveRequest([BLandroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;I)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewData:[B

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

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIsResumed:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    sget-object v0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API1:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    if-ne p1, v0, :cond_4

    if-eqz v9, :cond_4

    iget-boolean p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIsMatrixDisplayShow:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIDeviceController:Lcom/freeme/camera/common/mode/photo/device/IDeviceController;

    invoke-interface {p1}, Lcom/freeme/camera/common/mode/photo/device/IDeviceController;->startPreview()V

    :cond_4
    if-eqz v6, :cond_6

    if-eqz v8, :cond_6

    if-ne v7, v10, :cond_5

    invoke-direct {p0, v6}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->updateThumbnail([B)V

    goto :goto_1

    :cond_5
    sget p1, Lcom/freeme/camera/common/mode/photo/HeifHelper;->FORMAT_HEIF:I

    :cond_6
    :goto_1
    if-eqz v6, :cond_7

    const-string p1, "jpeg callback"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/CameraSysTrace;->onEventSystrace(Ljava/lang/String;Z)V

    :cond_7
    return-void
.end method

.method public onMemoryStateChanged(Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->STOP:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCapturingNumber:I

    if-eqz p1, :cond_0

    sget-object p1, Lcom/freeme/camera/common/mode/photo/PhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "memory low, show saving"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/common/IAppUi;->showSavingDialog(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibility(I)V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIDeviceController:Lcom/freeme/camera/common/mode/photo/device/IDeviceController;

    if-eqz v0, :cond_0

    const-string v0, "3"

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIDeviceController:Lcom/freeme/camera/common/mode/photo/device/IDeviceController;

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/mode/photo/device/IDeviceController;->xapiSetRotation(I)V

    :cond_0
    return-void
.end method

.method public onPostViewCallback([B)V
    .locals 11

    sget-object v0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPostViewCallback] data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mIsResumed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIsResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v0, "post view callback"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/CameraSysTrace;->onEventSystrace(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIsResumed:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v3}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v3

    iget-object v4, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v4}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/freeme/camera/common/utils/CameraUtil;->getJpegRotationFromDeviceSpec(IILandroid/content/Context;)I

    move-result v10

    const/16 v6, 0x11

    invoke-static {}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->getThumbnailWidth()I

    move-result v7

    invoke-static {}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->getThumbnailHeight()I

    move-result v8

    iget-object v2, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/common/IAppUi;->getThumbnailViewWidth()I

    move-result v9

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lcom/freeme/camera/common/utils/BitmapCreator;->createBitmapFromYuv([BIIIII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->getSettingManager()Lcom/freeme/camera/common/setting/ISettingManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v2

    const-string v3, "key_mirror_capture"

    invoke-interface {v2, v3}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPrevMirrorCapture:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v0, v1}, Lcom/freeme/camera/common/mode/photo/PhotoModeHelper;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/freeme/camera/common/IAppUi;->updateThumbnail(Landroid/graphics/Bitmap;)V

    :cond_1
    const-string p1, "post view callback"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/CameraSysTrace;->onEventSystrace(Ljava/lang/String;Z)V

    return-void
.end method

.method public onPreviewCallback([BI)V
    .locals 3

    iget-boolean v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIsResumed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIsMatrixDisplayShow:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/IAppUi;->onPreviewStarted(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewData:[B

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/freeme/camera/common/mode/photo/PhotoMode$1;

    invoke-direct {v2, p0}, Lcom/freeme/camera/common/mode/photo/PhotoMode$1;-><init>(Lcom/freeme/camera/common/mode/photo/PhotoMode;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    const-string v1, "previewing"

    invoke-virtual {p0, v1}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->updateModeDeviceState(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewData:[B

    iput p2, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mPreviewFormat:I

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

    sget-object v0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->updatePictureSizeAndPreviewSize(Lcom/freeme/camera/common/utils/Size;)V

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

    sget-object v0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[pause]+"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/CameraModeBase;->pause(Lcom/freeme/camera/common/mode/DeviceUsage;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIsResumed:Z

    iget-object p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {p1, p0}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->removeListener(Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mISurfaceStatusListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->clearPreviewStatusListener(Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mNeedCloseCameraIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->needCloseCameraSync()Z

    move-result p1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->prePareAndCloseCamera(ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->recycleSettingManager(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->clearAllCallbacks(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIDeviceController:Lcom/freeme/camera/common/mode/photo/device/IDeviceController;

    invoke-interface {p1}, Lcom/freeme/camera/common/mode/photo/device/IDeviceController;->stopPreview()V

    :goto_0
    sget-object p1, Lcom/freeme/camera/common/mode/photo/PhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[pause]-"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public resume(Lcom/freeme/camera/common/mode/DeviceUsage;)V
    .locals 4
    .param p1    # Lcom/freeme/camera/common/mode/DeviceUsage;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/CameraModeBase;->resume(Lcom/freeme/camera/common/mode/DeviceUsage;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIsResumed:Z

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/app/IApp;->setCurrentCameraMode(I)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->initSettingManager(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->initStatusMonitor()V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->addListener(Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    iget-object v2, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v2}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/common/storage/IStorageService;->getCaptureStorageSpace()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->initStateForCapture(J)V

    sget-object v0, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->NORMAL:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    iput-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIDeviceController:Lcom/freeme/camera/common/mode/photo/device/IDeviceController;

    invoke-interface {v0}, Lcom/freeme/camera/common/mode/photo/device/IDeviceController;->queryCameraDeviceManager()V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v1}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->prepareAndOpenCamera(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mCameraId:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->isThirdPartyIntent(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/IAppUi;->showZoomRatioHint(Z)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_camera_id"

    const-string v2, "0"

    iget-object v3, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v3}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->isThirdPartyIntent(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/freeme/camera/common/mode/photo/PhotoMode;->isSecureIntent(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/IAppUi;->showFaceBeautyView(Z)V

    :cond_1
    return-void
.end method

.method public unInit()V
    .locals 1

    invoke-super {p0}, Lcom/freeme/camera/common/mode/CameraModeBase;->unInit()V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/photo/PhotoMode;->mIDeviceController:Lcom/freeme/camera/common/mode/photo/device/IDeviceController;

    invoke-interface {v0}, Lcom/freeme/camera/common/mode/photo/device/IDeviceController;->destroyDeviceController()V

    return-void
.end method
