.class public Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;
.super Lcom/freeme/camera/common/mode/CameraModeBase;
.source "PanoramaMode.java"

# interfaces
.implements Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;
.implements Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$DeviceCallback;
.implements Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$PreviewSizeCallback;
.implements Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$PanoramaHandler;,
        Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$LoadSoundTread;,
        Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$MyStatusChangeListener;,
        Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$SurfaceChangeListener;,
        Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;
    }
.end annotation


# static fields
.field private static final DNG_IMAGE_SIZE:J = 0x2d00000L

.field public static final GUIDE_MOVE:I = 0x1

.field public static final GUIDE_SHUTTER:I = 0x0

.field public static final INFO_IN_CAPTURING:I = 0x3

.field public static final INFO_OUT_OF_CAPTURING:I = 0x4

.field public static final INFO_START_ANIMATION:I = 0x2

.field public static final INFO_UPDATE_MOVING:I = 0x1

.field public static final INFO_UPDATE_PROGRESS:I = 0x0

.field private static final JPEG_CALLBACK:Ljava/lang/String; = "jpeg callback"

.field private static final KEY_DNG:Ljava/lang/String; = "key_dng"

.field private static final KEY_MATRIX_DISPLAY_SHOW:Ljava/lang/String; = "key_matrix_display_show"

.field protected static final KEY_PHOTO_CAPTURE:Ljava/lang/String; = "key_photo_capture"

.field private static final KEY_PICTURE_SIZE:Ljava/lang/String; = "key_picture_size"

.field private static final MAX_NUM_AUTORAMA_CAPTURE:I = 0xfffff

.field private static final MSG_CAPTURE_JPEG_DONE:I = 0x3f3

.field private static final MSG_FINAL_IMAGE_SAVED:I = 0x3e8

.field private static final MSG_HIDE_VIEW:I = 0x3f0

.field private static final MSG_IN_CAPTURING:I = 0x3f1

.field private static final MSG_OUT_OF_CAPTURING:I = 0x3f2

.field private static final MSG_START_ANIMATION:I = 0x3ef

.field private static final MSG_UPDATE_MOVING:I = 0x3ed

.field private static final MSG_UPDATE_PROGRESS:I = 0x3ee

.field private static final PANORAMA_DEFAULT_PRVIEW_SIZE:Ljava/lang/String; = "3968x2976"

.field protected static final PHOTO_CAPTURE_START:Ljava/lang/String; = "start"

.field protected static final PHOTO_CAPTURE_STOP:Ljava/lang/String; = "stop"

.field private static final POST_VIEW_CALLBACK:Ljava/lang/String; = "post view callback"

.field private static final POST_VIEW_FORMAT:I = 0x11

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final TIME_RESTART_CAPTURE_VIEW_MS:I = 0x1f4


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationHandlerThread:Landroid/os/HandlerThread;

.field private mCameraId:Ljava/lang/String;

.field private mCameraSound:Landroid/media/MediaActionSound;

.field private mCancelButtonClickedListener:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$OnCancelButtonClickedListener;

.field protected mCaptureHeight:I

.field private mCaptureNumberSync:Ljava/lang/Object;

.field protected mCaptureWidth:I

.field private mCapturingNumber:I

.field protected mIPanoramaDeviceController:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;

.field private mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

.field private mISurfaceStatusListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

.field private mIsCameraPreviewStarted:Z

.field private mIsInStopProcess:Z

.field private mIsMatrixDisplayShow:Z

.field private mIsMerging:Z

.field protected volatile mIsResumed:Z

.field private mIsShowingCollimatedDrawable:Z

.field private mLoadSoundTread:Ljava/lang/Thread;

.field private mLock:Ljava/lang/Object;

.field private mMainHandler:Landroid/os/Handler;

.field private mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

.field private mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

.field private mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

.field private mMovingCallback:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$PanoramaMovingCallback;

.field private mOnHardwareStop:Ljava/lang/Runnable;

.field protected mPanoramaPhotoHelper:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaPhotoHelper;

.field private mPanoramaView:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

.field protected mPhotoStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

.field private mPreviewData:[B

.field private mPreviewDataSync:Ljava/lang/Object;

.field private mPreviewFormat:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mRestartCaptureView:Ljava/lang/Runnable;

.field private mSaveButtonClickedListener:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$OnSaveButtonClickedListener;

.field private mState:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

.field private mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/CameraModeBase;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCaptureHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsResumed:Z

    new-instance v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$SurfaceChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$SurfaceChangeListener;-><init>(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$1;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mISurfaceStatusListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCapturingNumber:I

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsMatrixDisplayShow:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewDataSync:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCaptureNumberSync:Ljava/lang/Object;

    new-instance v2, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$MyStatusChangeListener;

    invoke-direct {v2, p0, v1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$MyStatusChangeListener;-><init>(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$1;)V

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    sget-object v1, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->NORMAL:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mLock:Ljava/lang/Object;

    sget-object v1, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;->STATE_UNKNOWN:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mState:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsInStopProcess:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsMerging:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsCameraPreviewStarted:Z

    new-instance v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$1;-><init>(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMovingCallback:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$PanoramaMovingCallback;

    new-instance v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$2;-><init>(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mSaveButtonClickedListener:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$OnSaveButtonClickedListener;

    new-instance v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$3;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$3;-><init>(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCancelButtonClickedListener:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$OnCancelButtonClickedListener;

    new-instance v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$4;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$4;-><init>(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCaptureNumberSync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCapturingNumber:I

    return p0
.end method

.method static synthetic access$1210(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)I
    .locals 2

    iget v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCapturingNumber:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCapturingNumber:I

    return v0
.end method

.method static synthetic access$1302(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->stopSwitchCameraAnimation()V

    return-void
.end method

.method static synthetic access$1800(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->stopChangeModeAnimation()V

    return-void
.end method

.method static synthetic access$1900(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->stopCaptureAnimation()V

    return-void
.end method

.method static synthetic access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewWidth:I

    return p0
.end method

.method static synthetic access$2500(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewHeight:I

    return p0
.end method

.method static synthetic access$2600(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->onPreviewSizeChanged(II)V

    return-void
.end method

.method static synthetic access$2702(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsMatrixDisplayShow:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Landroid/media/MediaActionSound;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraSound:Landroid/media/MediaActionSound;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->dismissSavingProcess()V

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->onCaptureDone(Z)V

    return-void
.end method

.method static synthetic access$3102(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsShowingCollimatedDrawable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPanoramaView:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->takePicture(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->cancelCapture()V

    return-void
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->takePreviewPicture()V

    return-void
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->showSavingProgress()V

    return-void
.end method

.method private canSelectCamera(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraId:Ljava/lang/String;

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
    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

.method private cancelCapture()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[cancelCapture]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->stopCapture(Z)V

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->stopGrabFrame(Z)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->resetCapture()V

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsMerging:Z

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;->STATE_IDLE:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mState:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/CaptureState;->FINISH:Lcom/freeme/camera/common/CaptureState;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->onCaptureState(Lcom/freeme/camera/common/CaptureState;)V

    return-void
.end method

.method private capture()Z
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[capture] current mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mState:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsMerging = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsMerging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsCameraPreviewStarted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsCameraPreviewStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;->STATE_IDLE:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mState:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsMerging:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsCameraPreviewStarted:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->startCapture()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[capture] do not capture."

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPanoramaView:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->showGuideView(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x3f1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v1

    :cond_2
    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[capture] return"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v2
.end method

.method private clearAllCallbacks(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIPanoramaDeviceController:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;->setPreviewSizeReadyCallback(Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$PreviewSizeCallback;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/ICameraContext;->getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;

    move-result-object p1

    const-string v0, "key_picture_size"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    const-string v0, "key_matrix_display_show"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private createAnimationHandler()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Animation_handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mAnimationHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mAnimationHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mAnimationHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mAnimationHandler:Landroid/os/Handler;

    return-void
.end method

.method private destroyAnimationHandler()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mAnimationHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mAnimationHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mAnimationHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private dismissSavingProcess()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[dismissSavingProcess]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->hideSavingDialog()V

    return-void
.end method

.method private doCameraSelect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/freeme/camera/common/IAppUi;->onCameraSelected(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->prePareAndCloseCamera(ZLjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->recycleSettingManager(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->initSettingManager(Ljava/lang/String;)V

    invoke-direct {p0, v1, p2, v1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->prepareAndOpenCamera(ZLjava/lang/String;Z)V

    return-void
.end method

.method private initSettingManager(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getSettingManagerFactory()Lcom/freeme/camera/common/setting/SettingManagerFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->getModeKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/freeme/camera/common/setting/SettingManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/setting/ISettingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    return-void
.end method

.method private initStatusMonitor()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/ICameraContext;->getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;

    move-result-object v0

    const-string v1, "key_photo_capture"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPhotoStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    return-void
.end method

.method private lock3A()V
    .locals 4

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsCameraPreviewStarted:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[lock3A] Preview not started, do nothing "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-static {}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaRestriction;->get3aRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v1

    const-string v2, "on"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    return-void
.end method

.method private onCaptureDone(Z)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCaptureDone] isMerge = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsMerging:Z

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->resetCapture()V

    sget-object p1, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;->STATE_IDLE:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mState:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    const-string p1, "previewing"

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->updateModeDeviceState(Ljava/lang/String;)V

    return-void
.end method

.method private onPreviewSizeChanged(II)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewData:[B

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewWidth:I

    iput p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewHeight:I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewWidth:I

    iget v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewHeight:I

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mISurfaceStatusListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

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

    invoke-direct {p0, p2}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->clearAllCallbacks(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIPanoramaDeviceController:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;

    invoke-interface {p2, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;->closeCamera(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsMatrixDisplayShow:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewData:[B

    iput p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewWidth:I

    iput p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewHeight:I

    return-void
.end method

.method private prepareAndOpenCamera(ZLjava/lang/String;Z)V
    .locals 2

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraId:Ljava/lang/String;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraId:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/freeme/camera/common/ICameraContext;->getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;

    move-result-object p2

    const-string v0, "key_picture_size"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p2, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    const-string v0, "key_matrix_display_show"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p2, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIPanoramaDeviceController:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;

    invoke-interface {p2, p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;->setDeviceCallback(Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$DeviceCallback;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIPanoramaDeviceController:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;

    invoke-interface {p2, p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;->setPreviewSizeReadyCallback(Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$PreviewSizeCallback;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIPanoramaDeviceController:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMovingCallback:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$PanoramaMovingCallback;

    invoke-interface {p2, v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;->setPanoramaMovingCallback(Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$PanoramaMovingCallback;)V

    new-instance p2, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaDeviceInfo;

    invoke-direct {p2}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaDeviceInfo;-><init>()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaDeviceInfo;->setCameraId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-virtual {p2, v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaDeviceInfo;->setSettingManager(Lcom/freeme/camera/common/setting/ISettingManager;)V

    invoke-virtual {p2, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaDeviceInfo;->setNeedOpenCameraSync(Z)V

    invoke-virtual {p2, p3}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaDeviceInfo;->setNeedFastStartPreview(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIPanoramaDeviceController:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;

    invoke-interface {p1, p2}, Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;->openCamera(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaDeviceInfo;)V

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

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPanoramaPhotoHelper:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaPhotoHelper;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraId:Ljava/lang/String;

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaPhotoHelper;->getCameraInfoOrientation(Ljava/lang/String;Landroid/app/Activity;)I

    move-result p1

    iput p1, v0, Lcom/freeme/camera/common/IAppUi$AnimationData;->mOrientation:I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPanoramaPhotoHelper:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaPhotoHelper;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraId:Ljava/lang/String;

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaPhotoHelper;->isMirror(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/freeme/camera/common/IAppUi$AnimationData;->mIsMirror:Z

    return-object v0
.end method

.method private receivedJpegData()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private recycleSettingManager(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getSettingManagerFactory()Lcom/freeme/camera/common/setting/SettingManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/setting/SettingManagerFactory;->recycle(Ljava/lang/String;)V

    return-void
.end method

.method private resetCapture()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[resetCapture] current mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mState:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;->STATE_CLOSED:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mState:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIPanoramaDeviceController:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;->resetPreview()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->unlock3A()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPanoramaView:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->showGuideView(I)V

    :cond_0
    return-void
.end method

.method private saveData([B)V
    .locals 8

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

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
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCaptureNumberSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCapturingNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCapturingNumber:I

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {v3, v1, v2}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->checkOneShotMemoryAction(J)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/storage/IStorageService;->getFileDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/freeme/camera/common/utils/CameraUtil;->getSizeFromExif([B)Lcom/freeme/camera/common/utils/Size;

    move-result-object v1

    invoke-static {p1}, Lcom/freeme/camera/common/exif/Exif;->getExif([B)Lcom/freeme/camera/common/exif/ExifInterface;

    move-result-object v7

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPanoramaPhotoHelper:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaPhotoHelper;

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v1

    invoke-virtual {v2, p1, v0, v3, v1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaPhotoHelper;->createContentValues([BLjava/lang/String;II)Landroid/content/ContentValues;

    move-result-object v4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getMediaSaver()Lcom/freeme/camera/common/storage/MediaSaver;

    move-result-object v2

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/freeme/camera/common/storage/MediaSaver;->addSaveRequest([BLandroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;Lcom/freeme/camera/common/exif/ExifInterface;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewData:[B

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

.method private showSavingProgress()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/IAppUi;->showSavingDialog(Ljava/lang/String;Z)V

    return-void
.end method

.method private startCapture()Z
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startCapture] mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mState:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mIsInStopProcess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsInStopProcess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;->STATE_IDLE:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mState:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsInStopProcess:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;->STATE_CAPTURING:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mState:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    iput v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCapturingNumber:I

    iput-boolean v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsShowingCollimatedDrawable:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIPanoramaDeviceController:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;

    const v1, 0xfffff

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;->startAutoRama(I)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->lock3A()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPanoramaView:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->show()V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method private startCaptureAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_CAPTURE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/IAppUi;->animationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V

    return-void
.end method

.method private startChangeModeAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewData:[B

    iget v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewWidth:I

    iget v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewHeight:I

    iget v3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewFormat:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->prepareAnimationData([BIII)Lcom/freeme/camera/common/IAppUi$AnimationData;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_MODE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v1, v2, v0}, Lcom/freeme/camera/common/IAppUi;->animationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V

    return-void
.end method

.method private startSwitchCameraAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewData:[B

    iget v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewWidth:I

    iget v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewHeight:I

    iget v3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewFormat:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->prepareAnimationData([BIII)Lcom/freeme/camera/common/IAppUi$AnimationData;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_CAMERA:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v1, v2, v0}, Lcom/freeme/camera/common/IAppUi;->animationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V

    return-void
.end method

.method private stopAllAnimations()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[stopAllAnimations]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mAnimationHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$5;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$5;-><init>(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private stopCapture(Z)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[stopCapture] isMerge="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIPanoramaDeviceController:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;

    invoke-interface {v0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;->stopAutoRama(Z)V

    return-void
.end method

.method private stopCaptureAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_CAPTURE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->animationEnd(Lcom/freeme/camera/common/IAppUi$AnimationType;)V

    return-void
.end method

.method private stopChangeModeAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_MODE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->animationEnd(Lcom/freeme/camera/common/IAppUi$AnimationType;)V

    return-void
.end method

.method private stopGrabFrame(Z)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[stopGrabFrame]isMerge = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mState="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mState:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",mIsMerging = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsMerging:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object p1, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;->STATE_CAPTURING:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mState:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[stopGrabFrame] current mode state is not capturing, so return"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0x3ed

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0x3f0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private stopSwitchCameraAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_CAMERA:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->animationEnd(Lcom/freeme/camera/common/IAppUi$AnimationType;)V

    return-void
.end method

.method private takePicture(Z)V
    .locals 2

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->stopGrabFrame(Z)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->stopCapture(Z)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->startCaptureAnimation()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPhotoStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    const-string v0, "key_photo_capture"

    const-string v1, "start"

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "capturing"

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->updateModeDeviceState(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    sget-object v0, Lcom/freeme/camera/common/CaptureState;->START:Lcom/freeme/camera/common/CaptureState;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->onCaptureState(Lcom/freeme/camera/common/CaptureState;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIPanoramaDeviceController:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;->updateGSensorOrientation(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIPanoramaDeviceController:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;

    invoke-interface {p1, p0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;->takePicture(Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;)V

    return-void
.end method

.method private takePreviewPicture()V
    .locals 5

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[takePreviewPicture] mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mState:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mCapturingNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCapturingNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;->STATE_IDLE:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mState:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[takePreviewPicture]modeState is STATE_IDLE,return."

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsMerging:Z

    iget v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCapturingNumber:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraSound:Landroid/media/MediaActionSound;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaActionSound;->play(I)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/CaptureState;->START:Lcom/freeme/camera/common/CaptureState;

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/IAppUi;->onCaptureState(Lcom/freeme/camera/common/CaptureState;)V

    :cond_1
    iget v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCapturingNumber:I

    if-lez v1, :cond_3

    iget-boolean v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsShowingCollimatedDrawable:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mRestartCaptureView:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mOnHardwareStop:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsShowingCollimatedDrawable:Z

    new-instance v1, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$6;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$6;-><init>(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mRestartCaptureView:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mRestartCaptureView:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    iget v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCapturingNumber:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCapturingNumber:I

    return-void
.end method

.method private unlock3A()V
    .locals 4

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsCameraPreviewStarted:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[unlock3A] Preview not started, do nothing"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-static {}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaRestriction;->get3aRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v1

    const-string v2, "off"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    return-void
.end method

.method private updatePictureSizeAndPreviewSize(Lcom/freeme/camera/common/utils/Size;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_picture_size"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsResumed:Z

    if-eqz v1, :cond_1

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCaptureWidth:I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCaptureHeight:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIPanoramaDeviceController:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;

    new-instance v1, Lcom/freeme/camera/common/utils/Size;

    iget v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCaptureWidth:I

    iget v3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCaptureHeight:I

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;->setPictureSize(Lcom/freeme/camera/common/utils/Size;)V

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result p1

    sget-object v1, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updatePictureSizeAndPreviewSize] picture size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCaptureWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCaptureHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",current preview size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " X "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewHeight:I

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

    iget v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewWidth:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewHeight:I

    if-eq p1, v1, :cond_1

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->onPreviewSizeChanged(II)V

    :cond_1
    return-void
.end method

.method private updateThumbnail([B)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getThumbnailViewWidth()I

    move-result v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/utils/BitmapCreator;->createBitmapFromJpeg([BI)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/IAppUi;->updateThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public afterStopPreview()V
    .locals 1

    const-string v0, "opened"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->updateModeDeviceState(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsCameraPreviewStarted:Z

    return-void
.end method

.method public beforeCloseCamera()V
    .locals 1

    const-string v0, "closed"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->updateModeDeviceState(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsCameraPreviewStarted:Z

    return-void
.end method

.method protected doShutterButtonClick()Z
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

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
    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIPanoramaDeviceController:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;

    invoke-interface {v2}, Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;->isReadyForCapture()Z

    move-result v2

    sget-object v3, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsResumed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    sget-object v2, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->STOP:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    if-eq v0, v2, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->capture()Z

    :cond_1
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

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->getCameraIdByFacing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->updateModeDefinedCameraApi()V

    new-instance p1, Lcom/freeme/camera/common/mode/DeviceUsage;

    const-string v0, "normal"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-direct {p1, v0, v1, p2}, Lcom/freeme/camera/common/mode/DeviceUsage;-><init>(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Ljava/util/ArrayList;)V

    return-object p1
.end method

.method protected getSettingManager()Lcom/freeme/camera/common/setting/ISettingManager;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

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

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[init]+"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/mode/CameraModeBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V

    new-instance v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaPhotoHelper;

    invoke-direct {v0, p2}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaPhotoHelper;-><init>(Lcom/freeme/camera/common/ICameraContext;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPanoramaPhotoHelper:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaPhotoHelper;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->createAnimationHandler()V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v0, "key_camera_switcher"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v1}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->getCameraIdByFacing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraId:Ljava/lang/String;

    sget-object p2, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[init] mCameraId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    const/4 v0, 0x7

    invoke-interface {p2, v0}, Lcom/freeme/camera/common/app/IApp;->setCurrentCameraMode(I)V

    new-instance p2, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceControllerFactory;

    invoke-direct {p2}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceControllerFactory;-><init>()V

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-virtual {p2, v0, v1, v3}, Lcom/freeme/camera/feature/mode/panorama/photo/device/PanoramaDeviceControllerFactory;->createDeviceController(Landroid/app/Activity;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Lcom/freeme/camera/common/ICameraContext;)Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIPanoramaDeviceController:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->initSettingManager(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->initStatusMonitor()V

    new-instance p2, Landroid/media/MediaActionSound;

    invoke-direct {p2}, Landroid/media/MediaActionSound;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraSound:Landroid/media/MediaActionSound;

    new-instance p2, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$LoadSoundTread;

    invoke-direct {p2, p0, v2}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$LoadSoundTread;-><init>(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$1;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mLoadSoundTread:Ljava/lang/Thread;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mLoadSoundTread:Ljava/lang/Thread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    new-instance p2, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$PanoramaHandler;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$PanoramaHandler;-><init>(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p2, v0, v1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;-><init>(Lcom/freeme/camera/common/app/IApp;I)V

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPanoramaView:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPanoramaView:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-virtual {p2, p1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->init(Lcom/freeme/camera/common/app/IApp;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPanoramaView:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mSaveButtonClickedListener:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$OnSaveButtonClickedListener;

    invoke-virtual {p2, v0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->setSaveButtonClickedListener(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$OnSaveButtonClickedListener;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPanoramaView:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCancelButtonClickedListener:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$OnCancelButtonClickedListener;

    invoke-virtual {p2, v0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->setCancelButtonClickedListener(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$OnCancelButtonClickedListener;)V

    invoke-static {p1}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->setApp(Lcom/freeme/camera/common/app/IApp;)V

    new-instance p2, Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraId:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1, p3}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->prepareAndOpenCamera(ZLjava/lang/String;Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    sget-object p2, Lcom/freeme/camera/common/CaptureState;->FINISH:Lcom/freeme/camera/common/CaptureState;

    invoke-interface {p1, p2}, Lcom/freeme/camera/common/IAppUi;->onCaptureState(Lcom/freeme/camera/common/CaptureState;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/ui/CameraAppUI;

    iget-object p1, p1, Lcom/freeme/camera/ui/CameraAppUI;->mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/ui/CameraAppUI;

    iget-object p1, p1, Lcom/freeme/camera/ui/CameraAppUI;->mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->setVisibility(I)V

    :cond_0
    sget-object p1, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[init]- "

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onCameraOpened(Ljava/lang/String;)V
    .locals 3

    const-string p1, "opened"

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->updateModeDeviceState(Ljava/lang/String;)V

    sget-object p1, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;->STATE_IDLE:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mState:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    invoke-static {}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaRestriction;->getRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object p1

    const-string v0, "on"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object p1

    const-string v0, "key_picture_size"

    const-string v1, "3968x2976"

    const-string v2, "3968x2976"

    invoke-virtual {p1, v0, v1, v2}, Lcom/freeme/camera/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->addViewEntry()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->refreshViewEntry()V

    return-void
.end method

.method public onCameraSelected(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCameraSelected] ,new id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",current id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->canSelectCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->startSwitchCameraAnimation()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->doCameraSelect(Ljava/lang/String;Ljava/lang/String;)V

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
    .locals 5

    iget-object v0, p1, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;->data:[B

    iget-boolean v1, p1, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;->needUpdateThumbnail:Z

    iget-boolean p1, p1, Lcom/freeme/camera/common/mode/photo/device/IDeviceController$DataCallbackInfo;->needRestartPreview:Z

    sget-object v2, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataReceived, data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",mIsResumed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsResumed:Z

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

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->receivedJpegData()V

    if-eqz v0, :cond_0

    const-string v2, "jpeg callback"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/CameraSysTrace;->onEventSystrace(Ljava/lang/String;Z)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->saveData([B)V

    :cond_1
    iget-boolean v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsResumed:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    sget-object v3, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API1:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    if-ne v2, v3, :cond_2

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsMatrixDisplayShow:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIPanoramaDeviceController:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;

    invoke-interface {p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;->startPreview()V

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->updateThumbnail([B)V

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

    iget p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCapturingNumber:I

    if-eqz p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "memory low, show saving"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/common/IAppUi;->showSavingDialog(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibility(I)V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    return-void
.end method

.method public onPostViewCallback([B)V
    .locals 9

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPostViewCallback] data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mIsResumed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v0, "post view callback"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/CameraSysTrace;->onEventSystrace(Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsResumed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getJpegRotationFromDeviceSpec(IILandroid/content/Context;)I

    move-result v8

    const/16 v4, 0x11

    invoke-static {}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->getThumbnailWidth()I

    move-result v5

    invoke-static {}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->getThumbnailHeight()I

    move-result v6

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getThumbnailViewWidth()I

    move-result v7

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/freeme/camera/common/utils/BitmapCreator;->createBitmapFromYuv([BIIIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

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
    .locals 4

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsResumed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsMatrixDisplayShow:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraId:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/freeme/camera/common/IAppUi;->onPreviewStarted(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewData:[B

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->stopAllAnimations()V

    :cond_2
    const-string v1, "previewing"

    invoke-virtual {p0, v1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->updateModeDeviceState(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewData:[B

    iput p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPreviewFormat:I

    iput-boolean v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsCameraPreviewStarted:Z

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

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->updatePictureSizeAndPreviewSize(Lcom/freeme/camera/common/utils/Size;)V

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

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[pause]+"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/CameraModeBase;->pause(Lcom/freeme/camera/common/mode/DeviceUsage;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsResumed:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->removeListener(Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mISurfaceStatusListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->clearPreviewStatusListener(Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/CaptureState;->FINISH:Lcom/freeme/camera/common/CaptureState;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->onCaptureState(Lcom/freeme/camera/common/CaptureState;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->cancelCapture()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPanoramaView:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->hideGuideView()V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->needCloseCameraSync()Z

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->prePareAndCloseCamera(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->recycleSettingManager(Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;->STATE_CLOSED:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mState:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$State;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsMerging:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsMerging:Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    sget-object p1, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIsResumed:Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->initSettingManager(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->initStatusMonitor()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/app/IApp;->setCurrentCameraMode(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {p1, p0}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->addListener(Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/storage/IStorageService;->getCaptureStorageSpace()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->initStateForCapture(J)V

    sget-object p1, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->NORMAL:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIPanoramaDeviceController:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;

    invoke-interface {p1}, Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;->queryCameraDeviceManager()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraId:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->prepareAndOpenCamera(ZLjava/lang/String;Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->showZoomRatioHint(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->showFaceBeautyView(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPanoramaView:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->showGuideView(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/ui/CameraAppUI;

    iget-object p1, p1, Lcom/freeme/camera/ui/CameraAppUI;->mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/ui/CameraAppUI;

    iget-object p1, p1, Lcom/freeme/camera/ui/CameraAppUI;->mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 2

    invoke-super {p0}, Lcom/freeme/camera/common/mode/CameraModeBase;->unInit()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->destroyAnimationHandler()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIPanoramaDeviceController:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;->destroyDeviceController()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mPanoramaView:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->unInit()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mCameraSound:Landroid/media/MediaActionSound;

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[unInit]-"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
