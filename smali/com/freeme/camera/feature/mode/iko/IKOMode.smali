.class public Lcom/freeme/camera/feature/mode/iko/IKOMode;
.super Lcom/freeme/camera/common/mode/CameraModeBase;
.source "IKOMode.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/iko/device/IDeviceController$CaptureDataCallback;
.implements Lcom/freeme/camera/feature/mode/iko/device/IDeviceController$DeviceCallback;
.implements Lcom/freeme/camera/feature/mode/iko/device/IDeviceController$PreviewSizeCallback;
.implements Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;
.implements Landroid/media/ImageReader$OnImageAvailableListener;
.implements Lcom/freeme/camera/feature/mode/iko/UserInteraction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/iko/IKOMode$MyStatusChangeListener;,
        Lcom/freeme/camera/feature/mode/iko/IKOMode$SurfaceChangeListener;,
        Lcom/freeme/camera/feature/mode/iko/IKOMode$NetWorkReceiver;,
        Lcom/freeme/camera/feature/mode/iko/IKOMode$IkoHandler;,
        Lcom/freeme/camera/feature/mode/iko/IKOMode$OnShakeEvent;
    }
.end annotation


# static fields
.field private static final DNG_IMAGE_SIZE:J = 0x2d00000L

.field private static final IKO_DELAY_TIME:I = 0x3e8

.field private static final IKO_START:I = 0x5

.field private static final JPEG_CALLBACK:Ljava/lang/String; = "jpeg callback"

.field private static final KEY_DNG:Ljava/lang/String; = "key_dng"

.field private static final KEY_FORMTAT:Ljava/lang/String; = "key_format"

.field private static final KEY_MATRIX_DISPLAY_SHOW:Ljava/lang/String; = "key_matrix_display_show"

.field protected static final KEY_PHOTO_CAPTURE:Ljava/lang/String; = "key_photo_capture"

.field private static final KEY_PICTURE_SIZE:Ljava/lang/String; = "key_picture_size"

.field protected static final PHOTO_CAPTURE_START:Ljava/lang/String; = "start"

.field protected static final PHOTO_CAPTURE_STOP:Ljava/lang/String; = "stop"

.field private static final POST_VIEW_CALLBACK:Ljava/lang/String; = "post view callback"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field public static isFirstPreviewCallback:Z

.field public static isFirstPreviewFrame:Z


# instance fields
.field private ikoData:[B

.field private isNetWorking:Z

.field private mCameraId:Ljava/lang/String;

.field protected mCaptureHeight:I

.field private mCaptureNumberSync:Ljava/lang/Object;

.field protected mCaptureWidth:I

.field private mCapturingNumber:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field protected mIDeviceController:Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;

.field protected mIKOModeHelper:Lcom/freeme/camera/feature/mode/iko/IKOModeHelper;

.field protected mIKOStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

.field private mIKoHandler:Lcom/freeme/camera/feature/mode/iko/IKOMode$IkoHandler;

.field private mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

.field private mISurfaceStatusListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

.field private mIdentifier:Landroid/view/View;

.field private mIkoFlashView:Lcom/freeme/camera/common/widget/RotateImageView;

.field private mIkoFrameLayout:Landroid/widget/RelativeLayout;

.field private mIsFlashOn:Z

.field private mIsMatrixDisplayShow:Z

.field protected volatile mIsResumed:Z

.field private mIsShake:Z

.field private mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

.field private mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

.field private mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

.field private mNetWorkBroadcastReceiver:Lcom/freeme/camera/feature/mode/iko/IKOMode$NetWorkReceiver;

.field private mOnInteraction:Z

.field private mOnShakeEvent:Lcom/freeme/camera/feature/mode/iko/IKOMode$OnShakeEvent;

.field private mPreviewData:[B

.field private mPreviewDataSync:Ljava/lang/Object;

.field private mPreviewFormat:I

.field private mPreviewHeight:I

.field private mPreviewSize:Lcom/freeme/camera/data/Size;

.field private mPreviewWidth:I

.field private mSensorManagerClient:Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;

.field private mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

.field private mTipsView:Landroid/view/View;

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/CameraModeBase;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCaptureHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIsResumed:Z

    new-instance v1, Lcom/freeme/camera/feature/mode/iko/IKOMode$SurfaceChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/freeme/camera/feature/mode/iko/IKOMode$SurfaceChangeListener;-><init>(Lcom/freeme/camera/feature/mode/iko/IKOMode;Lcom/freeme/camera/feature/mode/iko/IKOMode$1;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mISurfaceStatusListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    const/4 v1, 0x0

    iput v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCapturingNumber:I

    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIsMatrixDisplayShow:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewDataSync:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCaptureNumberSync:Ljava/lang/Object;

    new-instance v1, Lcom/freeme/camera/feature/mode/iko/IKOMode$MyStatusChangeListener;

    invoke-direct {v1, p0, v2}, Lcom/freeme/camera/feature/mode/iko/IKOMode$MyStatusChangeListener;-><init>(Lcom/freeme/camera/feature/mode/iko/IKOMode;Lcom/freeme/camera/feature/mode/iko/IKOMode$1;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    sget-object v1, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->NORMAL:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIsFlashOn:Z

    new-instance v1, Lcom/freeme/camera/feature/mode/iko/IKOMode$7;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/mode/iko/IKOMode$7;-><init>(Lcom/freeme/camera/feature/mode/iko/IKOMode;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    new-instance v1, Lcom/freeme/camera/feature/mode/iko/IKOMode$OnShakeEvent;

    invoke-direct {v1, p0, v2}, Lcom/freeme/camera/feature/mode/iko/IKOMode$OnShakeEvent;-><init>(Lcom/freeme/camera/feature/mode/iko/IKOMode;Lcom/freeme/camera/feature/mode/iko/IKOMode$1;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mOnShakeEvent:Lcom/freeme/camera/feature/mode/iko/IKOMode$OnShakeEvent;

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIsShake:Z

    new-instance v0, Lcom/freeme/camera/feature/mode/iko/IKOMode$9;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/iko/IKOMode$9;-><init>(Lcom/freeme/camera/feature/mode/iko/IKOMode;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/widget/RotateImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIkoFlashView:Lcom/freeme/camera/common/widget/RotateImageView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIsFlashOn:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/freeme/camera/feature/mode/iko/IKOMode;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIsFlashOn:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIkoFrameLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$2000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/freeme/camera/feature/mode/iko/IKOMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->stopSwitchCameraAnimation()V

    return-void
.end method

.method static synthetic access$2200(Lcom/freeme/camera/feature/mode/iko/IKOMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->stopCaptureAnimation()V

    return-void
.end method

.method static synthetic access$2300(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCaptureNumberSync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/freeme/camera/feature/mode/iko/IKOMode;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCapturingNumber:I

    return p0
.end method

.method static synthetic access$2510(Lcom/freeme/camera/feature/mode/iko/IKOMode;)I
    .locals 2

    iget v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCapturingNumber:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCapturingNumber:I

    return v0
.end method

.method static synthetic access$2602(Lcom/freeme/camera/feature/mode/iko/IKOMode;Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/freeme/camera/feature/mode/iko/IKOMode;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->bindMaskView([B)V

    return-void
.end method

.method static synthetic access$3102(Lcom/freeme/camera/feature/mode/iko/IKOMode;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mOnInteraction:Z

    return p1
.end method

.method static synthetic access$3202(Lcom/freeme/camera/feature/mode/iko/IKOMode;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIsShake:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/freeme/camera/feature/mode/iko/IKOMode;)[B
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->ikoData:[B

    return-object p0
.end method

.method static synthetic access$3400(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Z
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->initViewStatus()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->isNetWorking:Z

    return p0
.end method

.method static synthetic access$3800(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mTipsView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIdentifier:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mModeHandler:Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/freeme/camera/feature/mode/iko/IKOMode;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewWidth:I

    return p0
.end method

.method static synthetic access$4500(Lcom/freeme/camera/feature/mode/iko/IKOMode;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewHeight:I

    return p0
.end method

.method static synthetic access$4600(Lcom/freeme/camera/feature/mode/iko/IKOMode;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->onPreviewSizeChanged(II)V

    return-void
.end method

.method static synthetic access$4702(Lcom/freeme/camera/feature/mode/iko/IKOMode;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIsMatrixDisplayShow:Z

    return p1
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method private declared-synchronized bindMaskView([B)V
    .locals 11

    monitor-enter p0

    :try_start_0
    new-instance v6, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewSize:Lcom/freeme/camera/data/Size;

    iget v3, v0, Lcom/freeme/camera/data/Size;->width:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewSize:Lcom/freeme/camera/data/Size;

    iget v4, v0, Lcom/freeme/camera/data/Size;->height:I

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length p1, p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance p1, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewSize:Lcom/freeme/camera/data/Size;

    iget v1, v1, Lcom/freeme/camera/data/Size;->width:I

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewSize:Lcom/freeme/camera/data/Size;

    iget v2, v2, Lcom/freeme/camera/data/Size;->height:I

    const/4 v3, 0x0

    invoke-direct {p1, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v1, 0x64

    invoke-virtual {v6, p1, v1, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    array-length v0, p1

    invoke-static {p1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p1, 0x42b40000    # 90.0f

    invoke-virtual {v9, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {}, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->getInstance()Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->compressBitmap([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->ikoData:[B

    sget-boolean p1, Lcom/freeme/camera/feature/mode/iko/IKOMode;->isFirstPreviewFrame:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mOnInteraction:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->getNetWorkStatus(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIKoHandler:Lcom/freeme/camera/feature/mode/iko/IKOMode$IkoHandler;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/mode/iko/IKOMode$IkoHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private canSelectCamera(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCameraId:Ljava/lang/String;

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
    sget-object v0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;->setPreviewSizeReadyCallback(Lcom/freeme/camera/feature/mode/iko/device/IDeviceController$PreviewSizeCallback;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/ICameraContext;->getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;

    move-result-object p1

    const-string v0, "key_picture_size"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    const-string v0, "key_format"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    const-string v0, "key_matrix_display_show"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private disableAllUIExceptionShutter()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/freeme/camera/common/IAppUi;->setUIEnabled(IZ)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v2, 0x7

    invoke-interface {v0, v2, v1}, Lcom/freeme/camera/common/IAppUi;->setUIEnabled(IZ)V

    return-void
.end method

.method private doCameraSelect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/freeme/camera/common/IAppUi;->onCameraSelected(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->prePareAndCloseCamera(ZLjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->recycleSettingManager(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->initSettingManager(Ljava/lang/String;)V

    invoke-direct {p0, v1, p2, v0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->prepareAndOpenCamera(ZLjava/lang/String;Z)V

    return-void
.end method

.method private initSettingManager(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getSettingManagerFactory()Lcom/freeme/camera/common/setting/SettingManagerFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->getModeKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/freeme/camera/common/setting/SettingManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/setting/ISettingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    return-void
.end method

.method private initStatusMonitor()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/ICameraContext;->getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;

    move-result-object v0

    const-string v1, "key_photo_capture"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIKOStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    return-void
.end method

.method private initViewStatus()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->getNetWorkStatus(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->isNetWorking:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/feature/mode/iko/IKOMode$10;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/mode/iko/IKOMode$10;-><init>(Lcom/freeme/camera/feature/mode/iko/IKOMode;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->isNetWorking:Z

    return v0
.end method

.method private onPreviewSizeChanged(II)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewData:[B

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewWidth:I

    iput p2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewHeight:I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget p2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewWidth:I

    iget v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewHeight:I

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mISurfaceStatusListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

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

    invoke-direct {p0, p2}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->clearAllCallbacks(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;

    invoke-interface {p2, p1}, Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;->closeCamera(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIsMatrixDisplayShow:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewData:[B

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewWidth:I

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewHeight:I

    return-void
.end method

.method private prepareAndOpenCamera(ZLjava/lang/String;Z)V
    .locals 2

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCameraId:Ljava/lang/String;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCameraId:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/freeme/camera/common/ICameraContext;->getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;

    move-result-object p2

    const-string v0, "key_picture_size"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p2, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    const-string v0, "key_format"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p2, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    const-string v0, "key_matrix_display_show"

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p2, v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;

    invoke-interface {p2, p0}, Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;->setDeviceCallback(Lcom/freeme/camera/feature/mode/iko/device/IDeviceController$DeviceCallback;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;

    invoke-interface {p2, p0}, Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;->setPreviewSizeReadyCallback(Lcom/freeme/camera/feature/mode/iko/device/IDeviceController$PreviewSizeCallback;)V

    const-class p2, Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getCameraApiType(Ljava/lang/String;)Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    move-result-object p2

    sget-object v0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;

    check-cast p2, Lcom/freeme/camera/feature/mode/iko/device/IKODevice2Controller;

    invoke-virtual {p2, p0}, Lcom/freeme/camera/feature/mode/iko/device/IKODevice2Controller;->setReadCallback(Landroid/media/ImageReader$OnImageAvailableListener;)V

    :cond_0
    new-instance p2, Lcom/freeme/camera/feature/mode/iko/DeviceInfo;

    invoke-direct {p2}, Lcom/freeme/camera/feature/mode/iko/DeviceInfo;-><init>()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/freeme/camera/feature/mode/iko/DeviceInfo;->setCameraId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-virtual {p2, v0}, Lcom/freeme/camera/feature/mode/iko/DeviceInfo;->setSettingManager(Lcom/freeme/camera/common/setting/ISettingManager;)V

    invoke-virtual {p2, p1}, Lcom/freeme/camera/feature/mode/iko/DeviceInfo;->setNeedOpenCameraSync(Z)V

    invoke-virtual {p2, p3}, Lcom/freeme/camera/feature/mode/iko/DeviceInfo;->setNeedFastStartPreview(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;

    invoke-interface {p1, p2}, Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;->openCamera(Lcom/freeme/camera/feature/mode/iko/DeviceInfo;)V

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

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIKOModeHelper:Lcom/freeme/camera/feature/mode/iko/IKOModeHelper;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCameraId:Ljava/lang/String;

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/feature/mode/iko/IKOModeHelper;->getCameraInfoOrientation(Ljava/lang/String;Landroid/app/Activity;)I

    move-result p1

    iput p1, v0, Lcom/freeme/camera/common/IAppUi$AnimationData;->mOrientation:I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIKOModeHelper:Lcom/freeme/camera/feature/mode/iko/IKOModeHelper;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCameraId:Ljava/lang/String;

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/feature/mode/iko/IKOModeHelper;->isMirror(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/freeme/camera/common/IAppUi$AnimationData;->mIsMirror:Z

    return-object v0
.end method

.method private recycleSettingManager(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getSettingManagerFactory()Lcom/freeme/camera/common/setting/SettingManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/setting/SettingManagerFactory;->recycle(Ljava/lang/String;)V

    return-void
.end method

.method private saveData([B)V
    .locals 5

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

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
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCaptureNumberSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v3, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCapturingNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCapturingNumber:I

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {v3, v1, v2}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->checkOneShotMemoryAction(J)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/storage/IStorageService;->getFileDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/freeme/camera/common/utils/CameraUtil;->getSizeFromExif([B)Lcom/freeme/camera/common/utils/Size;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIKOModeHelper:Lcom/freeme/camera/feature/mode/iko/IKOModeHelper;

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v1

    invoke-virtual {v2, p1, v0, v3, v1}, Lcom/freeme/camera/feature/mode/iko/IKOModeHelper;->createContentValues([BLjava/lang/String;II)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v1}, Lcom/freeme/camera/common/ICameraContext;->getMediaSaver()Lcom/freeme/camera/common/storage/MediaSaver;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v3, v2}, Lcom/freeme/camera/common/storage/MediaSaver;->addSaveRequest([BLandroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iput-object v3, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewData:[B

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

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_CAPTURE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/IAppUi;->animationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V

    return-void
.end method

.method private startChangeModeAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewData:[B

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewWidth:I

    iget v2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewHeight:I

    iget v3, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewFormat:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->prepareAnimationData([BIII)Lcom/freeme/camera/common/IAppUi$AnimationData;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_MODE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v1, v2, v0}, Lcom/freeme/camera/common/IAppUi;->animationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V

    return-void
.end method

.method private startSwitchCameraAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewData:[B

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewWidth:I

    iget v2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewHeight:I

    iget v3, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewFormat:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->prepareAnimationData([BIII)Lcom/freeme/camera/common/IAppUi$AnimationData;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_CAMERA:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v1, v2, v0}, Lcom/freeme/camera/common/IAppUi;->animationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V

    return-void
.end method

.method private stopCaptureAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_CAPTURE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->animationEnd(Lcom/freeme/camera/common/IAppUi$AnimationType;)V

    return-void
.end method

.method private stopChangeModeAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_MODE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->animationEnd(Lcom/freeme/camera/common/IAppUi$AnimationType;)V

    return-void
.end method

.method private stopSwitchCameraAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_CAMERA:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->animationEnd(Lcom/freeme/camera/common/IAppUi$AnimationType;)V

    return-void
.end method

.method private updatePictureSizeAndPreviewSize(Lcom/freeme/camera/common/utils/Size;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_picture_size"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIsResumed:Z

    if-eqz v1, :cond_1

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCaptureWidth:I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCaptureHeight:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;

    new-instance v1, Lcom/freeme/camera/common/utils/Size;

    iget v2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCaptureWidth:I

    iget v3, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCaptureHeight:I

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;->setPictureSize(Lcom/freeme/camera/common/utils/Size;)V

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result p1

    sget-object v1, Lcom/freeme/camera/feature/mode/iko/IKOMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updatePictureSizeAndPreviewSize] picture size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCaptureWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCaptureHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",current preview size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " X "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewHeight:I

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

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewWidth:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewHeight:I

    if-eq p1, v1, :cond_1

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->onPreviewSizeChanged(II)V

    :cond_1
    return-void
.end method

.method private updateThumbnail([B)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getThumbnailViewWidth()I

    move-result v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/utils/BitmapCreator;->createBitmapFromJpeg([BI)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/IAppUi;->updateThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public afterStopPreview()V
    .locals 1

    const-string v0, "opened"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->updateModeDeviceState(Ljava/lang/String;)V

    return-void
.end method

.method public beforeCloseCamera()V
    .locals 1

    const-string v0, "closed"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->updateModeDeviceState(Ljava/lang/String;)V

    return-void
.end method

.method protected doShutterButtonClick()Z
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

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
    iget-object v2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;

    invoke-interface {v2}, Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;->isReadyForCapture()Z

    move-result v2

    sget-object v3, Lcom/freeme/camera/feature/mode/iko/IKOMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIsResumed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    sget-object v2, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->STOP:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    if-eq v0, v2, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->startCaptureAnimation()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIKOStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    const-string v2, "key_photo_capture"

    const-string v3, "start"

    invoke-virtual {v0, v2, v3}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "capturing"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->updateModeDeviceState(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->disableAllUIExceptionShutter()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;->updateGSensorOrientation(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;

    invoke-interface {v0, p0}, Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;->takePicture(Lcom/freeme/camera/feature/mode/iko/device/IDeviceController$CaptureDataCallback;)V

    :cond_1
    return v1
.end method

.method protected getSettingManager()Lcom/freeme/camera/common/setting/ISettingManager;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V
    .locals 5
    .param p1    # Lcom/freeme/camera/common/app/IApp;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/ICameraContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[init]+"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/mode/CameraModeBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_camera_switcher"

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v2}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->getCameraIdByFacing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCameraId:Ljava/lang/String;

    new-instance v0, Lcom/freeme/camera/feature/mode/iko/device/DeviceControllerFactory;

    invoke-direct {v0}, Lcom/freeme/camera/feature/mode/iko/device/DeviceControllerFactory;-><init>()V

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-virtual {v0, v1, v2, v4}, Lcom/freeme/camera/feature/mode/iko/device/DeviceControllerFactory;->createDeviceController(Landroid/app/Activity;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Lcom/freeme/camera/common/ICameraContext;)Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->initSettingManager(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->initStatusMonitor()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCameraId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p3}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->prepareAndOpenCamera(ZLjava/lang/String;Z)V

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/iko/ThumbnailHelper;->setApp(Lcom/freeme/camera/common/app/IApp;)V

    new-instance p3, Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    new-instance p1, Lcom/freeme/camera/feature/mode/iko/IKOModeHelper;

    invoke-direct {p1, p2}, Lcom/freeme/camera/feature/mode/iko/IKOModeHelper;-><init>(Lcom/freeme/camera/common/ICameraContext;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIKOModeHelper:Lcom/freeme/camera/feature/mode/iko/IKOModeHelper;

    sget-object p1, Lcom/freeme/camera/feature/mode/iko/IKOMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[init]- "

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance p1, Lcom/freeme/camera/feature/mode/iko/IKOMode$IkoHandler;

    invoke-direct {p1, p0}, Lcom/freeme/camera/feature/mode/iko/IKOMode$IkoHandler;-><init>(Lcom/freeme/camera/feature/mode/iko/IKOMode;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIKoHandler:Lcom/freeme/camera/feature/mode/iko/IKOMode$IkoHandler;

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "iko-thread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mHandler:Landroid/os/Handler;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p2}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p2

    invoke-interface {p2}, Lcom/freeme/camera/common/IAppUi;->getPreviewFrameLayout()Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object p2

    const p3, 0x7f0b005b

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIkoFrameLayout:Landroid/widget/RelativeLayout;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIkoFrameLayout:Landroid/widget/RelativeLayout;

    const p2, 0x7f090137

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mTipsView:Landroid/view/View;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIkoFrameLayout:Landroid/widget/RelativeLayout;

    const p2, 0x7f090107

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIdentifier:Landroid/view/View;

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 p3, -0x2

    invoke-direct {p1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lcom/freeme/camera/feature/mode/iko/IKOMode$1;

    invoke-direct {p2, p0}, Lcom/freeme/camera/feature/mode/iko/IKOMode$1;-><init>(Lcom/freeme/camera/feature/mode/iko/IKOMode;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mSensorManagerClient:Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;

    if-nez p1, :cond_0

    new-instance p1, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mSensorManagerClient:Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1, p0}, Lcom/freeme/camera/CameraActivity;->setInteractionListener(Lcom/freeme/camera/feature/mode/iko/UserInteraction;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mSensorManagerClient:Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;->registerSenstorListener()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mSensorManagerClient:Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mOnShakeEvent:Lcom/freeme/camera/feature/mode/iko/IKOMode$OnShakeEvent;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;->setSensorEventListener(Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$OnShakeListener;)V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance p2, Lcom/freeme/camera/feature/mode/iko/IKOMode$NetWorkReceiver;

    invoke-direct {p2, p0, v3}, Lcom/freeme/camera/feature/mode/iko/IKOMode$NetWorkReceiver;-><init>(Lcom/freeme/camera/feature/mode/iko/IKOMode;Lcom/freeme/camera/feature/mode/iko/IKOMode$1;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mNetWorkBroadcastReceiver:Lcom/freeme/camera/feature/mode/iko/IKOMode$NetWorkReceiver;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mNetWorkBroadcastReceiver:Lcom/freeme/camera/feature/mode/iko/IKOMode$NetWorkReceiver;

    invoke-virtual {p2, p3, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/IAppUi;->getIkoFlashView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/common/widget/RotateImageView;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIkoFlashView:Lcom/freeme/camera/common/widget/RotateImageView;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lcom/freeme/camera/feature/mode/iko/IKOMode$2;

    invoke-direct {p2, p0}, Lcom/freeme/camera/feature/mode/iko/IKOMode$2;-><init>(Lcom/freeme/camera/feature/mode/iko/IKOMode;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIkoFlashView:Lcom/freeme/camera/common/widget/RotateImageView;

    new-instance p2, Lcom/freeme/camera/feature/mode/iko/IKOMode$3;

    invoke-direct {p2, p0}, Lcom/freeme/camera/feature/mode/iko/IKOMode$3;-><init>(Lcom/freeme/camera/feature/mode/iko/IKOMode;)V

    invoke-virtual {p1, p2}, Lcom/freeme/camera/common/widget/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCameraOpened(Ljava/lang/String;)V
    .locals 0

    const-string p1, "opened"

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->updateModeDeviceState(Ljava/lang/String;)V

    return-void
.end method

.method public onCameraSelected(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCameraSelected] ,new id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",current id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->canSelectCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->startSwitchCameraAnimation()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->doCameraSelect(Ljava/lang/String;Ljava/lang/String;)V

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

.method public onDataReceived(Lcom/freeme/camera/feature/mode/iko/device/IDeviceController$DataCallbackInfo;)V
    .locals 11

    iget-object v6, p1, Lcom/freeme/camera/feature/mode/iko/device/IDeviceController$DataCallbackInfo;->data:[B

    iget v7, p1, Lcom/freeme/camera/feature/mode/iko/device/IDeviceController$DataCallbackInfo;->mBufferFormat:I

    iget-boolean v8, p1, Lcom/freeme/camera/feature/mode/iko/device/IDeviceController$DataCallbackInfo;->needUpdateThumbnail:Z

    iget-boolean v9, p1, Lcom/freeme/camera/feature/mode/iko/device/IDeviceController$DataCallbackInfo;->needRestartPreview:Z

    sget-object v0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataReceived, data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mIsResumed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIsResumed:Z

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

    invoke-direct {p0, v6}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->saveData([B)V

    goto :goto_0

    :cond_1
    sget v1, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->FORMAT_HEIF:I

    if-ne v7, v1, :cond_3

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mISettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

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
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCaptureNumberSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v4, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCapturingNumber:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCapturingNumber:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {v0, v2, v3}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->checkOneShotMemoryAction(J)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v0, Lcom/freeme/camera/feature/mode/iko/HeifHelper;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-direct {v0, v1}, Lcom/freeme/camera/feature/mode/iko/HeifHelper;-><init>(Lcom/freeme/camera/common/ICameraContext;)V

    iget v1, p1, Lcom/freeme/camera/feature/mode/iko/device/IDeviceController$DataCallbackInfo;->imageWidth:I

    iget p1, p1, Lcom/freeme/camera/feature/mode/iko/device/IDeviceController$DataCallbackInfo;->imageHeight:I

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->getContentValues(II)Landroid/content/ContentValues;

    move-result-object v2

    sget-object p1, Lcom/freeme/camera/feature/mode/iko/IKOMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {p1}, Lcom/freeme/camera/common/ICameraContext;->getMediaSaver()Lcom/freeme/camera/common/storage/MediaSaver;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    sget v5, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->FORMAT_HEIF:I

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/freeme/camera/common/storage/MediaSaver;->addSaveRequest([BLandroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewData:[B

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
    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIsResumed:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    sget-object v0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API1:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    if-ne p1, v0, :cond_4

    if-eqz v9, :cond_4

    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIsMatrixDisplayShow:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;

    invoke-interface {p1}, Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;->startPreview()V

    :cond_4
    if-eqz v6, :cond_6

    if-eqz v8, :cond_6

    if-ne v7, v10, :cond_5

    invoke-direct {p0, v6}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->updateThumbnail([B)V

    goto :goto_1

    :cond_5
    sget p1, Lcom/freeme/camera/feature/mode/iko/HeifHelper;->FORMAT_HEIF:I

    :cond_6
    :goto_1
    if-eqz v6, :cond_7

    const-string p1, "jpeg callback"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/CameraSysTrace;->onEventSystrace(Ljava/lang/String;Z)V

    :cond_7
    return-void
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 5

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/freeme/camera/common/utils/CameraUtil;->getBytesFromImageAsType(Landroid/media/Image;I)[B

    move-result-object v0

    sget-boolean v1, Lcom/freeme/camera/feature/mode/iko/IKOMode;->isFirstPreviewFrame:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIsShake:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mOnInteraction:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->getNetWorkStatus(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/freeme/camera/feature/mode/iko/IKOMode$8;

    invoke-direct {v2, p0, v0}, Lcom/freeme/camera/feature/mode/iko/IKOMode$8;-><init>(Lcom/freeme/camera/feature/mode/iko/IKOMode;[B)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void
.end method

.method public onInteraction()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mOnInteraction:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onMemoryStateChanged(Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->STOP:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCapturingNumber:I

    if-eqz p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/mode/iko/IKOMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "memory low, show saving"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/common/IAppUi;->showSavingDialog(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPostViewCallback([B)V
    .locals 9

    sget-object v0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPostViewCallback] data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mIsResumed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIsResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v0, "post view callback"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/CameraSysTrace;->onEventSystrace(Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIsResumed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCameraId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getJpegRotationFromDeviceSpec(IILandroid/content/Context;)I

    move-result v8

    const/16 v4, 0x11

    invoke-static {}, Lcom/freeme/camera/feature/mode/iko/ThumbnailHelper;->getThumbnailWidth()I

    move-result v5

    invoke-static {}, Lcom/freeme/camera/feature/mode/iko/ThumbnailHelper;->getThumbnailHeight()I

    move-result v6

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getThumbnailViewWidth()I

    move-result v7

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/freeme/camera/common/utils/BitmapCreator;->createBitmapFromYuv([BIIIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

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

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIsResumed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewDataSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIsMatrixDisplayShow:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->isFreemeIko()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->isNetWorking:Z

    invoke-interface {v1, v2, v3}, Lcom/freeme/camera/common/IAppUi;->setUIEnabled(IZ)V

    :cond_1
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCameraId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/IAppUi;->onPreviewStarted(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewData:[B

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/freeme/camera/feature/mode/iko/IKOMode$6;

    invoke-direct {v2, p0}, Lcom/freeme/camera/feature/mode/iko/IKOMode$6;-><init>(Lcom/freeme/camera/feature/mode/iko/IKOMode;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    const-string v1, "previewing"

    invoke-virtual {p0, v1}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->updateModeDeviceState(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewData:[B

    iput p2, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewFormat:I

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

    sget-object v0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->updatePictureSizeAndPreviewSize(Lcom/freeme/camera/common/utils/Size;)V

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

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/feature/mode/iko/IKOMode$4;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/mode/iko/IKOMode$4;-><init>(Lcom/freeme/camera/feature/mode/iko/IKOMode;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[pause]+"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/CameraModeBase;->pause(Lcom/freeme/camera/common/mode/DeviceUsage;)V

    const/4 p1, 0x0

    sput-boolean p1, Lcom/freeme/camera/feature/mode/iko/IKOMode;->isFirstPreviewFrame:Z

    sput-boolean p1, Lcom/freeme/camera/feature/mode/iko/IKOMode;->isFirstPreviewCallback:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getWorkerHandler()Lcom/freeme/camera/CameraActivity$WorkerHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/CameraActivity$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIsResumed:Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {p1, p0}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->removeListener(Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mISurfaceStatusListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->clearPreviewStatusListener(Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mNeedCloseCameraIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->needCloseCameraSync()Z

    move-result p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->prePareAndCloseCamera(ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->recycleSettingManager(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->clearAllCallbacks(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;

    invoke-interface {p1}, Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;->stopPreview()V

    :goto_0
    sget-object p1, Lcom/freeme/camera/feature/mode/iko/IKOMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIsResumed:Z

    sput-boolean p1, Lcom/freeme/camera/feature/mode/iko/IKOMode;->isFirstPreviewFrame:Z

    sput-boolean p1, Lcom/freeme/camera/feature/mode/iko/IKOMode;->isFirstPreviewCallback:Z

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIsFlashOn:Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->initSettingManager(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->initStatusMonitor()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->initViewStatus()Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    const/16 v0, 0x69

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/app/IApp;->setCurrentCameraMode(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {p1, p0}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->addListener(Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mICameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/storage/IStorageService;->getCaptureStorageSpace()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->initStateForCapture(J)V

    sget-object p1, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->NORMAL:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mMemoryState:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;

    invoke-interface {p1}, Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;->queryCameraDeviceManager()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mCameraId:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->prepareAndOpenCamera(ZLjava/lang/String;Z)V

    return-void
.end method

.method public setPictureSize(Lcom/freeme/camera/data/Size;)V
    .locals 0

    return-void
.end method

.method public setPreviewFormat(I)V
    .locals 0

    return-void
.end method

.method public setPreviewSize(Lcom/freeme/camera/data/Size;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mPreviewSize:Lcom/freeme/camera/data/Size;

    return-void
.end method

.method public unInit()V
    .locals 2

    invoke-super {p0}, Lcom/freeme/camera/common/mode/CameraModeBase;->unInit()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;->destroyDeviceController()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/feature/mode/iko/IKOMode$5;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/mode/iko/IKOMode$5;-><init>(Lcom/freeme/camera/feature/mode/iko/IKOMode;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mSensorManagerClient:Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;->removeSensorManager()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mSensorManagerClient:Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;->unRegisterSensorListener()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mNetWorkBroadcastReceiver:Lcom/freeme/camera/feature/mode/iko/IKOMode$NetWorkReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
