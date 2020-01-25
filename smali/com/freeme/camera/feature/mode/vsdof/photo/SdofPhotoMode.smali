.class public Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;
.super Lcom/freeme/camera/common/mode/CameraModeBase;
.source "SdofPhotoMode.java"

# interfaces
.implements Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;
.implements Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$DeviceCallback;
.implements Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$PreviewSizeCallback;
.implements Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$MyStatusChangeListener;,
        Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$SurfaceChangeListener;
    }
.end annotation


# static fields
.field private static final DNG_IMAGE_SIZE:J = 0x2d00000L

.field private static final ENABLED_ALPHA:I = 0xff

.field private static final JPEG_CALLBACK:Ljava/lang/String; = "jpeg callback"

.field private static final KEY_DNG:Ljava/lang/String; = "key_dng"

.field private static final KEY_MATRIX_DISPLAY_SHOW:Ljava/lang/String; = "key_matrix_display_show"

.field protected static final KEY_PHOTO_CAPTURE:Ljava/lang/String; = "key_photo_capture"

.field private static final KEY_PICTURE_SIZE:Ljava/lang/String; = "key_picture_size"

.field protected static final PHOTO_CAPTURE_START:Ljava/lang/String; = "start"

.field protected static final PHOTO_CAPTURE_STOP:Ljava/lang/String; = "stop"

.field private static final POST_VIEW_CALLBACK:Ljava/lang/String; = "post view callback"

.field private static final POST_VIEW_FORMAT:I = 0x11

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationHandlerThread:Landroid/os/HandlerThread;

.field private mCameraId:Ljava/lang/String;

.field protected mCaptureHeight:I

.field private mCaptureNumberSync:Ljava/lang/Object;

.field private mCaptureState:Lcom/freeme/camera/common/CaptureState;

.field protected mCaptureWidth:I

.field private mCapturingNumber:I

.field private mFirstClick:Z

.field protected mISdofDeviceController:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;

.field private mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

.field private mISurfaceStatusListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

.field private mIsMatrixDisplayShow:Z

.field protected volatile mIsResumed:Z

.field private mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

.field private mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

.field private mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

.field protected mPhotoStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

.field private mPreviewData:[B

.field private mPreviewDataSync:Ljava/lang/Object;

.field private mPreviewFormat:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field protected mSdofPhotoHelper:Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoHelper;

.field private mSdofViewCtrl:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

.field private mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

.field private mViewChangeListener:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$ViewChangeListener;

.field private mWarningCallback:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$StereoWarningCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/CameraModeBase;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCaptureHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIsResumed:Z

    new-instance v1, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$SurfaceChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$SurfaceChangeListener;-><init>(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$1;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mISurfaceStatusListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    const/4 v1, 0x0

    iput v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCapturingNumber:I

    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIsMatrixDisplayShow:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewDataSync:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCaptureNumberSync:Ljava/lang/Object;

    new-instance v1, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$MyStatusChangeListener;

    invoke-direct {v1, p0, v2}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$MyStatusChangeListener;-><init>(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$1;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    sget-object v1, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->NORMAL:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    new-instance v1, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-direct {v1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mSdofViewCtrl:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mFirstClick:Z

    new-instance v0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$2;-><init>(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    new-instance v0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$4;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$4;-><init>(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mWarningCallback:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$StereoWarningCallback;

    new-instance v0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$5;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$5;-><init>(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mViewChangeListener:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$ViewChangeListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCapturingNumber:I

    return p0
.end method

.method static synthetic access$1010(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)I
    .locals 2

    iget v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCapturingNumber:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCapturingNumber:I

    return v0
.end method

.method static synthetic access$1102(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1300()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->stopSwitchCameraAnimation()V

    return-void
.end method

.method static synthetic access$1500(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->stopChangeModeAnimation()V

    return-void
.end method

.method static synthetic access$1600(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->stopCaptureAnimation()V

    return-void
.end method

.method static synthetic access$1700(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewWidth:I

    return p0
.end method

.method static synthetic access$2200(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewHeight:I

    return p0
.end method

.method static synthetic access$2300(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->onPreviewSizeChanged(II)V

    return-void
.end method

.method static synthetic access$2402(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIsMatrixDisplayShow:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mSdofViewCtrl:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCaptureNumberSync:Ljava/lang/Object;

    return-object p0
.end method

.method private canSelectCamera(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCameraId:Ljava/lang/String;

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
    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mISdofDeviceController:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;->setPreviewSizeReadyCallback(Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$PreviewSizeCallback;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/ICameraContext;->getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;

    move-result-object p1

    const-string v0, "key_picture_size"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    const-string v0, "key_matrix_display_show"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private createAnimationHandler()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Animation_handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mAnimationHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mAnimationHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mAnimationHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mAnimationHandler:Landroid/os/Handler;

    return-void
.end method

.method private destroyAnimationHandler()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mAnimationHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mAnimationHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mAnimationHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private doCameraSelect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/freeme/camera/common/IAppUi;->onCameraSelected(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->prePareAndCloseCamera(ZLjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->recycleSettingManager(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->initSettingManager(Ljava/lang/String;)V

    invoke-direct {p0, v1, p2, v1}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->prepareAndOpenCamera(ZLjava/lang/String;Z)V

    return-void
.end method

.method private initSettingManager(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getSettingManagerFactory()Lcom/freeme/camera/common/setting/SettingManagerFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->getModeKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/freeme/camera/common/setting/SettingManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/setting/ISettingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    return-void
.end method

.method private initStatusMonitor()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/ICameraContext;->getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;

    move-result-object v0

    const-string v1, "key_photo_capture"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPhotoStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    return-void
.end method

.method private onPreviewSizeChanged(II)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewData:[B

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewWidth:I

    iput p2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewHeight:I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget p2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewWidth:I

    iget v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewHeight:I

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mISurfaceStatusListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

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

    invoke-direct {p0, p2}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->clearAllCallbacks(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mISdofDeviceController:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;

    invoke-interface {p2, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;->closeCamera(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIsMatrixDisplayShow:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewData:[B

    iput p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewWidth:I

    iput p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewHeight:I

    return-void
.end method

.method private prepareAndOpenCamera(ZLjava/lang/String;Z)V
    .locals 2

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCameraId:Ljava/lang/String;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCameraId:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/freeme/camera/common/ICameraContext;->getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;

    move-result-object p2

    const-string v0, "key_picture_size"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p2, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    const-string v0, "key_matrix_display_show"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p2, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mISdofDeviceController:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;

    invoke-interface {p2, p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;->setDeviceCallback(Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$DeviceCallback;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mISdofDeviceController:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;

    invoke-interface {p2, p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;->setPreviewSizeReadyCallback(Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$PreviewSizeCallback;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mISdofDeviceController:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mWarningCallback:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$StereoWarningCallback;

    invoke-interface {p2, v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;->setStereoWarningCallback(Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController$StereoWarningCallback;)V

    new-instance p2, Lcom/freeme/camera/feature/mode/vsdof/photo/DeviceInfo;

    invoke-direct {p2}, Lcom/freeme/camera/feature/mode/vsdof/photo/DeviceInfo;-><init>()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/DeviceInfo;->setCameraId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-virtual {p2, v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/DeviceInfo;->setSettingManager(Lcom/freeme/camera/common/setting/ISettingManager;)V

    invoke-virtual {p2, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/DeviceInfo;->setNeedOpenCameraSync(Z)V

    invoke-virtual {p2, p3}, Lcom/freeme/camera/feature/mode/vsdof/photo/DeviceInfo;->setNeedFastStartPreview(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mISdofDeviceController:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;

    invoke-interface {p1, p2}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;->openCamera(Lcom/freeme/camera/feature/mode/vsdof/photo/DeviceInfo;)V

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

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mSdofPhotoHelper:Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoHelper;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCameraId:Ljava/lang/String;

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoHelper;->getCameraInfoOrientation(Ljava/lang/String;Landroid/app/Activity;)I

    move-result p1

    iput p1, v0, Lcom/freeme/camera/common/IAppUi$AnimationData;->mOrientation:I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mSdofPhotoHelper:Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoHelper;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCameraId:Ljava/lang/String;

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoHelper;->isMirror(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/freeme/camera/common/IAppUi$AnimationData;->mIsMirror:Z

    return-object v0
.end method

.method private recycleSettingManager(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getSettingManagerFactory()Lcom/freeme/camera/common/setting/SettingManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/setting/SettingManagerFactory;->recycle(Ljava/lang/String;)V

    return-void
.end method

.method private saveData([B)V
    .locals 8

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

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
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCaptureNumberSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v3, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCapturingNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCapturingNumber:I

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {v3, v1, v2}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->checkOneShotMemoryAction(J)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/storage/IStorageService;->getFileDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/freeme/camera/common/utils/CameraUtil;->getSizeFromExif([B)Lcom/freeme/camera/common/utils/Size;

    move-result-object v1

    invoke-static {p1}, Lcom/freeme/camera/common/exif/Exif;->getExif([B)Lcom/freeme/camera/common/exif/ExifInterface;

    move-result-object v7

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mSdofPhotoHelper:Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoHelper;

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v1

    invoke-virtual {v2, p1, v0, v3, v1}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoHelper;->createContentValues([BLjava/lang/String;II)Landroid/content/ContentValues;

    move-result-object v4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getMediaSaver()Lcom/freeme/camera/common/storage/MediaSaver;

    move-result-object v2

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/freeme/camera/common/storage/MediaSaver;->addSaveRequest([BLandroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;Lcom/freeme/camera/common/exif/ExifInterface;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewData:[B

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
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private startCaptureAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_CAPTURE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/IAppUi;->animationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V

    return-void
.end method

.method private startChangeModeAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewData:[B

    iget v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewWidth:I

    iget v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewHeight:I

    iget v3, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewFormat:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->prepareAnimationData([BIII)Lcom/freeme/camera/common/IAppUi$AnimationData;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_MODE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v1, v2, v0}, Lcom/freeme/camera/common/IAppUi;->animationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V

    return-void
.end method

.method private startSwitchCameraAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewData:[B

    iget v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewWidth:I

    iget v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewHeight:I

    iget v3, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewFormat:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->prepareAnimationData([BIII)Lcom/freeme/camera/common/IAppUi$AnimationData;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_CAMERA:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v1, v2, v0}, Lcom/freeme/camera/common/IAppUi;->animationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V

    return-void
.end method

.method private stopAllAnimations()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[stopAllAnimations]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mAnimationHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$3;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$3;-><init>(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private stopCaptureAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_CAPTURE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->animationEnd(Lcom/freeme/camera/common/IAppUi$AnimationType;)V

    return-void
.end method

.method private stopChangeModeAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_MODE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->animationEnd(Lcom/freeme/camera/common/IAppUi$AnimationType;)V

    return-void
.end method

.method private stopSwitchCameraAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_CAMERA:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->animationEnd(Lcom/freeme/camera/common/IAppUi$AnimationType;)V

    return-void
.end method

.method private updatePictureSizeAndPreviewSize(Lcom/freeme/camera/common/utils/Size;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_picture_size"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIsResumed:Z

    if-eqz v1, :cond_1

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCaptureWidth:I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCaptureHeight:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mISdofDeviceController:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;

    new-instance v1, Lcom/freeme/camera/common/utils/Size;

    iget v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCaptureWidth:I

    iget v3, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCaptureHeight:I

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;->setPictureSize(Lcom/freeme/camera/common/utils/Size;)V

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result p1

    sget-object v1, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updatePictureSizeAndPreviewSize] picture size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCaptureWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCaptureHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",current preview size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " X "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewHeight:I

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

    iget v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewWidth:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewHeight:I

    if-eq p1, v1, :cond_1

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->onPreviewSizeChanged(II)V

    :cond_1
    return-void
.end method

.method private updateThumbnail([B)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getThumbnailViewWidth()I

    move-result v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/utils/BitmapCreator;->createBitmapFromJpeg([BI)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/IAppUi;->updateThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public afterStopPreview()V
    .locals 1

    const-string v0, "opened"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->updateModeDeviceState(Ljava/lang/String;)V

    return-void
.end method

.method public beforeCloseCamera()V
    .locals 1

    const-string v0, "closed"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->updateModeDeviceState(Ljava/lang/String;)V

    return-void
.end method

.method protected doShutterButtonClick()Z
    .locals 7

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

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
    iget-object v3, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mISdofDeviceController:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;

    invoke-interface {v3}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;->isReadyForCapture()Z

    move-result v3

    sget-object v4, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCaptureState:Lcom/freeme/camera/common/CaptureState;

    sget-object v5, Lcom/freeme/camera/common/CaptureState;->START:Lcom/freeme/camera/common/CaptureState;

    if-ne v4, v5, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0f0183

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/OnScreenHint;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/freeme/camera/OnScreenHint;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mFirstClick:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/freeme/camera/OnScreenHint;->showToast()V

    iput-boolean v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mFirstClick:Z

    :cond_1
    return v2

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIsResumed:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    sget-object v3, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->STOP:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    if-eq v0, v3, :cond_3

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->startCaptureAnimation()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPhotoStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    const-string v3, "key_photo_capture"

    const-string v4, "start"

    invoke-virtual {v0, v3, v4}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "capturing"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->updateModeDeviceState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mISdofDeviceController:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;->updateGSensorOrientation(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mISdofDeviceController:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;

    invoke-interface {v0, p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;->takePicture(Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;)V

    :cond_3
    return v1
.end method

.method public getDeviceUsage(Lcom/freeme/camera/common/relation/DataStore;Lcom/freeme/camera/common/mode/DeviceUsage;)Lcom/freeme/camera/common/mode/DeviceUsage;
    .locals 3
    .param p1    # Lcom/freeme/camera/common/relation/DataStore;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "key_camera_switcher"

    invoke-virtual {p1}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->getCameraIdByFacing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->updateModeDefinedCameraApi()V

    new-instance p1, Lcom/freeme/camera/common/mode/DeviceUsage;

    const-string v0, "vsdof"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-direct {p1, v0, v1, p2}, Lcom/freeme/camera/common/mode/DeviceUsage;-><init>(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Ljava/util/ArrayList;)V

    return-object p1
.end method

.method protected getSettingManager()Lcom/freeme/camera/common/setting/ISettingManager;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/app/IApp;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/ICameraContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[init]+"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/mode/CameraModeBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V

    new-instance v0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoHelper;

    invoke-direct {v0, p2}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoHelper;-><init>(Lcom/freeme/camera/common/ICameraContext;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mSdofPhotoHelper:Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoHelper;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->createAnimationHandler()V

    invoke-static {}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getLogicalCameraId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCameraId:Ljava/lang/String;

    sget-object p2, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[init] mCameraId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCameraId:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/freeme/camera/common/IAppUi;->setCurrentCameraId(Ljava/lang/String;)V

    new-instance p2, Lcom/freeme/camera/feature/mode/vsdof/photo/device/DeviceControllerFactory;

    invoke-direct {p2}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/DeviceControllerFactory;-><init>()V

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-virtual {p2, v0, v1, v2}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/DeviceControllerFactory;->createDeviceController(Landroid/app/Activity;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Lcom/freeme/camera/common/ICameraContext;)Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mISdofDeviceController:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->initSettingManager(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->initStatusMonitor()V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mSdofViewCtrl:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mViewChangeListener:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$ViewChangeListener;

    invoke-virtual {p2, v0}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->setViewChangeListener(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$ViewChangeListener;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mSdofViewCtrl:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-virtual {p2, p1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->init(Lcom/freeme/camera/common/app/IApp;)V

    invoke-static {p1}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->setApp(Lcom/freeme/camera/common/app/IApp;)V

    new-instance p2, Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    const/16 p2, 0x6a

    invoke-interface {p1, p2}, Lcom/freeme/camera/common/app/IApp;->setCurrentCameraMode(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCameraId:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1, p3}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->prepareAndOpenCamera(ZLjava/lang/String;Z)V

    sget-object p1, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[init]- "

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$1;

    invoke-direct {p2, p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode$1;-><init>(Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCameraOpened(Ljava/lang/String;)V
    .locals 0

    const-string p1, "opened"

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->updateModeDeviceState(Ljava/lang/String;)V

    return-void
.end method

.method public onCameraSelected(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCameraSelected] ,new id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",current id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->canSelectCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->startSwitchCameraAnimation()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->doCameraSelect(Ljava/lang/String;Ljava/lang/String;)V

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

.method public onCaptureFail()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/CaptureState;->FAIL:Lcom/freeme/camera/common/CaptureState;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCaptureState:Lcom/freeme/camera/common/CaptureState;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/CaptureState;->FAIL:Lcom/freeme/camera/common/CaptureState;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->onCaptureState(Lcom/freeme/camera/common/CaptureState;)V

    return-void
.end method

.method public onCaptureFinish()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/CaptureState;->FINISH:Lcom/freeme/camera/common/CaptureState;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCaptureState:Lcom/freeme/camera/common/CaptureState;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/CaptureState;->FINISH:Lcom/freeme/camera/common/CaptureState;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->onCaptureState(Lcom/freeme/camera/common/CaptureState;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mFirstClick:Z

    return-void
.end method

.method public onCaptureStart()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/CaptureState;->START:Lcom/freeme/camera/common/CaptureState;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCaptureState:Lcom/freeme/camera/common/CaptureState;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/CaptureState;->START:Lcom/freeme/camera/common/CaptureState;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->onCaptureState(Lcom/freeme/camera/common/CaptureState;)V

    return-void
.end method

.method public onDataReceived(Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;)V
    .locals 5

    iget-object v0, p1, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;->data:[B

    iget-boolean v1, p1, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;->needUpdateThumbnail:Z

    iget-boolean p1, p1, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;->needRestartPreview:Z

    sget-object v2, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataReceived, data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",mIsResumed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIsResumed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",needUpdateThumbnail = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",needRestartPreview = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v2, "jpeg callback"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/CameraSysTrace;->onEventSystrace(Ljava/lang/String;Z)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->saveData([B)V

    :cond_1
    iget-boolean v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIsResumed:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    sget-object v3, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API1:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    if-ne v2, v3, :cond_2

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIsMatrixDisplayShow:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mISdofDeviceController:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;

    invoke-interface {p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;->startPreview()V

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->updateThumbnail([B)V

    :cond_3
    if-eqz v0, :cond_4

    const-string p1, "jpeg callback"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/CameraSysTrace;->onEventSystrace(Ljava/lang/String;Z)V

    :cond_4
    return-void
.end method

.method public onMemoryStateChanged(Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->STOP:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCapturingNumber:I

    if-eqz p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "memory low, show saving"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/common/IAppUi;->showSavingDialog(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibility(I)V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mSdofViewCtrl:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->onOrientationChanged(I)V

    return-void
.end method

.method public onPostViewCallback([B)V
    .locals 9

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPostViewCallback] data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mIsResumed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIsResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v0, "post view callback"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/CameraSysTrace;->onEventSystrace(Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIsResumed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCameraId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getJpegRotationFromDeviceSpec(IILandroid/content/Context;)I

    move-result v8

    const/16 v4, 0x11

    invoke-static {}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->getThumbnailWidth()I

    move-result v5

    invoke-static {}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->getThumbnailHeight()I

    move-result v6

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getThumbnailViewWidth()I

    move-result v7

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/freeme/camera/common/utils/BitmapCreator;->createBitmapFromYuv([BIIIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/IAppUi;->updateThumbnail(Landroid/graphics/Bitmap;)V

    :cond_0
    const-string p1, "post view callback"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/CameraSysTrace;->onEventSystrace(Ljava/lang/String;Z)V

    return-void
.end method

.method public onPreviewCallback([BI)V
    .locals 3

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIsResumed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCameraId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/IAppUi;->onPreviewStarted(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewData:[B

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->stopAllAnimations()V

    :cond_1
    const-string v1, "previewing"

    invoke-virtual {p0, v1}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->updateModeDeviceState(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewData:[B

    iput p2, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mPreviewFormat:I

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

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->updatePictureSizeAndPreviewSize(Lcom/freeme/camera/common/utils/Size;)V

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

    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[pause]+"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/CameraModeBase;->pause(Lcom/freeme/camera/common/mode/DeviceUsage;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIsResumed:Z

    sget-object p1, Lcom/freeme/camera/common/CaptureState;->FINISH:Lcom/freeme/camera/common/CaptureState;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCaptureState:Lcom/freeme/camera/common/CaptureState;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    sget-object v0, Lcom/freeme/camera/common/CaptureState;->FINISH:Lcom/freeme/camera/common/CaptureState;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->onCaptureState(Lcom/freeme/camera/common/CaptureState;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {p1, p0}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->removeListener(Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mISurfaceStatusListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->clearPreviewStatusListener(Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mSdofViewCtrl:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->unInit()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mNeedCloseCameraIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->needCloseCameraSync()Z

    move-result p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->prePareAndCloseCamera(ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->recycleSettingManager(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->clearAllCallbacks(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mISdofDeviceController:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;

    invoke-interface {p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;->stopPreview()V

    :goto_0
    sget-object p1, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[pause]-"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public resume(Lcom/freeme/camera/common/mode/DeviceUsage;)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/mode/DeviceUsage;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/CameraModeBase;->resume(Lcom/freeme/camera/common/mode/DeviceUsage;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIsResumed:Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mSdofViewCtrl:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->showView()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mSdofViewCtrl:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->onOrientationChanged(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->initSettingManager(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->initStatusMonitor()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    const/16 v0, 0x6a

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/app/IApp;->setCurrentCameraMode(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {p1, p0}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->addListener(Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/storage/IStorageService;->getCaptureStorageSpace()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->initStateForCapture(J)V

    sget-object p1, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->NORMAL:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mISdofDeviceController:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;

    invoke-interface {p1}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;->queryCameraDeviceManager()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mCameraId:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->prepareAndOpenCamera(ZLjava/lang/String;Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v1, 0x7f0901db

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/common/widget/RotateImageView;

    const/16 v1, 0xff

    invoke-virtual {p1, v1}, Lcom/freeme/camera/common/widget/RotateImageView;->setAlpha(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v2, 0x7f0901b5

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/common/widget/RotateImageView;

    invoke-virtual {p1, v1}, Lcom/freeme/camera/common/widget/RotateImageView;->setAlpha(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->showFaceBeautyView(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->showZoomRatioHint(Z)V

    return-void
.end method

.method public unInit()V
    .locals 1

    invoke-super {p0}, Lcom/freeme/camera/common/mode/CameraModeBase;->unInit()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->destroyAnimationHandler()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;->mISdofDeviceController:Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/device/ISdofPhotoDeviceController;->destroyDeviceController()V

    return-void
.end method
