.class public Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;
.super Lcom/freeme/camera/common/mode/CameraModeBase;
.source "ShortVideoMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoHandler;,
        Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;,
        Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;
    }
.end annotation


# static fields
.field private static final HANDLER_STOP_RECORDING:I = 0x1

.field private static final KEY_PREVIEW:Ljava/lang/String; = "preview"

.field private static final KEY_RECORDING:Ljava/lang/String; = "recording"

.field private static final KEY_STOP_RECORDING:Ljava/lang/String; = "stop-recording"

.field private static final LIMI_DURATION:I = 0xf

.field private static final ONE_SECOND_TO_MS:I = 0x3e8

.field private static final REACH_SIZE_LIMIT:I = 0x5

.field private static final SCENE_MODE_AUTO:Ljava/lang/String; = "auto-scene-detection"

.field private static final SCENE_MODE_FIREWORKS:Ljava/lang/String; = "fireworks"

.field private static final SCENE_MODE_KEY:Ljava/lang/String; = "key_scene_mode"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final VIDEO_BAD_PERFORMANCE_AUTO_STOP:I = 0x1

.field private static final VIDEO_RECORDING_ERROR:I = 0x4

.field private static final VIDEO_RECORDING_NOT_AVAILABLE:I = 0x2

.field private static final VIDEO_STATUS_KEY:Ljava/lang/String; = "key_video_status"


# instance fields
.field protected mApp:Lcom/freeme/camera/common/app/IApp;

.field protected mAppUi:Lcom/freeme/camera/common/IAppUi;

.field protected mCameraContext:Lcom/freeme/camera/common/ICameraContext;

.field protected mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

.field protected mCameraId:Ljava/lang/String;

.field private mCanPauseResumeRecording:Z

.field private mCanTakePicture:Z

.field protected mFileSavedListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

.field protected mIsParameterExtraCanUse:Z

.field private mIsSetEis25:Z

.field private mJpegCallback:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$JpegCallback;

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field protected mModeState:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

.field private mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mOrientationHint:I

.field private mPauseResumeListener:Landroid/view/View$OnClickListener;

.field private mPreviewStartCallback:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$DeviceCallback;

.field protected mRecorder:Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;

.field private mRestrictionProvider:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$RestrictionProvider;

.field private mResumePauseLock:Ljava/util/concurrent/locks/Lock;

.field private mSettingConfigCallback:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$SettingConfigCallback;

.field protected mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

.field private mStopRecordingListener:Landroid/view/View$OnClickListener;

.field protected mStorageService:Lcom/freeme/camera/common/storage/IStorageService;

.field protected mStorageStateListener:Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;

.field protected mSurface:Landroid/view/Surface;

.field protected mVideoHandler:Landroid/os/Handler;

.field protected mVideoHelper:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

.field protected mVideoState:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

.field private mVideoStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

.field protected mVideoUi:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;

.field private mVssListener:Landroid/view/View$OnClickListener;

.field protected mVssSavedListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

.field private mWaitStopRecording:Landroid/os/ConditionVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/CameraModeBase;-><init>()V

    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mWaitStopRecording:Landroid/os/ConditionVariable;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mResumePauseLock:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCanPauseResumeRecording:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mIsParameterExtraCanUse:Z

    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCanTakePicture:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mIsSetEis25:Z

    iput v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mOrientationHint:I

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;->STATE_PAUSED:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mModeState:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mSurface:Landroid/view/Surface;

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;->STATE_UNKNOWN:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoState:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    new-instance v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$1;-><init>(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mFileSavedListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    new-instance v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$2;-><init>(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVssSavedListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    new-instance v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$3;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$3;-><init>(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mStorageStateListener:Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;

    new-instance v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$4;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$4;-><init>(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mSettingConfigCallback:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$SettingConfigCallback;

    new-instance v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$5;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$5;-><init>(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mRestrictionProvider:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$RestrictionProvider;

    new-instance v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$6;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$6;-><init>(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$7;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$7;-><init>(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVssListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$8;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$8;-><init>(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mJpegCallback:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$JpegCallback;

    new-instance v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$9;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$9;-><init>(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mStopRecordingListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$10;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$10;-><init>(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mPreviewStartCallback:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$DeviceCallback;

    new-instance v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$11;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$11;-><init>(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    new-instance v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$12;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$12;-><init>(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->updateThumbnail(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->updateModeDeviceState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->updateModeDeviceState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;)Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getModeState()Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->updateModeDeviceState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->stopRecording()V

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->initRecorderForHal3()V

    return-void
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCanPauseResumeRecording:Z

    return p0
.end method

.method static synthetic access$402(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCanPauseResumeRecording:Z

    return p1
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->pauseRecording()V

    return-void
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->resumeRecording()V

    return-void
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCanTakePicture:Z

    return p0
.end method

.method static synthetic access$702(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCanTakePicture:Z

    return p1
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;)Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$JpegCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mJpegCallback:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$JpegCallback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->updateModeDeviceState(Ljava/lang/String;)V

    return-void
.end method

.method private canSelectCamera(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getVideoState()Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    move-result-object p1

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;->STATE_PREVIEW:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private configRecorderSpec(Z)Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoHelper:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getProfile()Landroid/media/CamcorderProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->configRecorderSpec(Landroid/media/CamcorderProfile;Ljava/lang/String;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Lcom/freeme/camera/common/setting/ISettingManager;Z)Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;

    move-result-object v0

    iget v1, v0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->orientationHint:I

    iput v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mOrientationHint:I

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    iput-object v1, v0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->infoListener:Landroid/media/MediaRecorder$OnInfoListener;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    iput-object v2, v0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->errorListener:Landroid/media/MediaRecorder$OnErrorListener;

    iput-object v1, v0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->releaseListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {p0, v0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->modifyRecorderSpec(Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;Z)Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;

    move-result-object p1

    const/16 v0, 0x3a98

    iput v0, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->maxDurationMs:I

    return-object p1
.end method

.method private configUISpec()Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;
    .locals 3

    new-instance v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;

    invoke-direct {v0}, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;-><init>()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->isSupportPauseResume()Z

    move-result v1

    iput-boolean v1, v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;->isSupportedPause:Z

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;->recordingTotalSize:J

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mStopRecordingListener:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;->stopListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->isVssSupported()Z

    move-result v1

    iput-boolean v1, v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;->isSupportedVss:Z

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVssListener:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;->vssListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;->pauseResumeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->modifyUISpec(Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;)Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;

    move-result-object v0

    return-object v0
.end method

.method private deleteCurrentFile()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoHelper:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->getVideoTempPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoHelper:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->getVideoTempPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->deleteVideoFile(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private doAfterRecorderStoped(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/app/IApp;->enableKeepScreenOn(Z)V

    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;->STATE_SAVING:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->updateVideoState(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->addFileToMediaStore()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {p1}, Lcom/freeme/camera/common/IAppUi;->hideSavingDialog()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;->STATE_PREVIEW:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->updateVideoState(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;)V

    :goto_0
    return-void
.end method

.method private doCameraSelect(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doCameraSelect] + mVideoState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoState:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getVideoState()Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;->STATE_PREVIEW:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getModeState()Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;->STATE_RESUMED:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->preventChangeSettings()V

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;->STATE_UNKNOWN:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->updateVideoState(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->closeCamera(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getSettingManagerFactory()Lcom/freeme/camera/common/setting/SettingManagerFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/setting/SettingManagerFactory;->recycle(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraId:Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {p1}, Lcom/freeme/camera/common/ICameraContext;->getSettingManagerFactory()Lcom/freeme/camera/common/setting/SettingManagerFactory;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getModeKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/freeme/camera/common/setting/SettingManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/setting/ISettingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->initStatusMonitor()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoHelper:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->releasePreviewFrameData()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoHelper:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->getPreviewFrameCallback()Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$PreviewCallback;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getPreviewStartCallback()Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$DeviceCallback;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->setPreviewCallback(Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$PreviewCallback;Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$DeviceCallback;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraId:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mRestrictionProvider:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$RestrictionProvider;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->openCamera(Lcom/freeme/camera/common/setting/ISettingManager;Ljava/lang/String;ZLcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$RestrictionProvider;)V

    :cond_0
    return-void
.end method

.method private doInitDeviceManager()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->queryCameraDeviceManager()V

    return-void
.end method

.method private doInitMode()V
    .locals 5

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->initStatusMonitor()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->initCameraDevice(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mSettingConfigCallback:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$SettingConfigCallback;

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->setSettingConfigCallback(Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$SettingConfigCallback;)V

    new-instance v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;-><init>(Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoHelper:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoHelper:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->getPreviewFrameCallback()Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$PreviewCallback;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getPreviewStartCallback()Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$DeviceCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->setPreviewCallback(Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$PreviewCallback;Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$DeviceCallback;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->initVideoUi()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mRestrictionProvider:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$RestrictionProvider;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->openCamera(Lcom/freeme/camera/common/setting/ISettingManager;Ljava/lang/String;ZLcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$RestrictionProvider;)V

    return-void
.end method

.method private doPauseMode(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mStorageStateListener:Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/storage/IStorageService;->unRegisterStorageStateListener(Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->pauseForRecorder()V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->pauseForDevice(Ljava/util/ArrayList;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mSurface:Landroid/view/Surface;

    :cond_0
    return-void
.end method

.method private doResumeMode()V
    .locals 5

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->initStatusMonitor()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mRestrictionProvider:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$RestrictionProvider;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->openCamera(Lcom/freeme/camera/common/setting/ISettingManager;Ljava/lang/String;ZLcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$RestrictionProvider;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mStorageStateListener:Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/storage/IStorageService;->registerStorageStateListener(Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;)V

    return-void
.end method

.method private getModeState()Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mResumePauseLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mModeState:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mResumePauseLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mResumePauseLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private initForHal3(Z)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mSurface:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mRecorder:Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mRecorder:Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    invoke-interface {v1, v0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->configCamera(Landroid/view/Surface;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mRecorder:Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;

    invoke-interface {v1}, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->configCamera(Landroid/view/Surface;Z)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->configCamera(Landroid/view/Surface;Z)V

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private initRecorderFail()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoUi:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;->showInfo(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->getCamera()Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->lockCamera()V

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;->STATE_PREVIEW:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->updateVideoState(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getRecordedRestriction(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->postRecordingRestriction(Ljava/util/List;Z)V

    return-void
.end method

.method private initRecorderForHal3()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->initRecorder(Z)Z

    return-void
.end method

.method private initStatusMonitor()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/ICameraContext;->getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;

    move-result-object v0

    const-string v1, "key_video_status"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/relation/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    return-void
.end method

.method private initVideoVariables()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_camera_id"

    const-string v2, "0"

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v3}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraId:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mStorageService:Lcom/freeme/camera/common/storage/IStorageService;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getSettingManagerFactory()Lcom/freeme/camera/common/setting/SettingManagerFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getModeKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/freeme/camera/common/setting/SettingManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/setting/ISettingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    return-void
.end method

.method private isSupportPauseResume()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isVssSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->isVssSupported(I)Z

    move-result v0

    return v0
.end method

.method private pauseForDevice(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mWaitStopRecording:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    invoke-interface {p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->stopPreview()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    invoke-interface {p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->preventChangeSettings()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->closeCamera(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {p1}, Lcom/freeme/camera/common/ICameraContext;->getSettingManagerFactory()Lcom/freeme/camera/common/setting/SettingManagerFactory;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/setting/SettingManagerFactory;->recycle(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private pauseForRecorder()V
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getVideoState()Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;->STATE_RECORDING:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getVideoState()Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;->STATE_PAUSED:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getVideoState()Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;->STATE_PRE_RECORDING:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getVideoState()Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;->STATE_REVIEW_UI:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getVideoState()Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;->STATE_PREVIEW:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    if-ne v0, v1, :cond_3

    :cond_1
    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;->STATE_UNKNOWN:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->updateVideoState(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->stopRecording()V

    :cond_3
    :goto_1
    return-void
.end method

.method private pauseRecording()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[pauseRecording] +"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoUi:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;

    sget-object v1, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;->updateUIState(Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mRecorder:Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/camera/portability/MediaRecorderEx;->pause(Landroid/media/MediaRecorder;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoUi:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;->showInfo(I)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[pauseRecording] -"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private prepareStartRecording()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoHelper:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->pauseAudioPlayBack(Lcom/freeme/camera/common/app/IApp;)V

    const-string v0, "recording"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->updateModeDeviceState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    const-string v1, "key_video_status"

    const-string v2, "recording"

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCanTakePicture:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCanPauseResumeRecording:Z

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoUi:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->configUISpec()Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;->initVideoUI(Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibility(I)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/4 v3, 0x4

    invoke-interface {v1, v3, v0}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/4 v3, 0x5

    invoke-interface {v1, v3, v0}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v1, v2, v0}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->startRecording()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoUi:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;

    sget-object v1, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;->updateUIState(Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoUi:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;->updateOrientation(I)V

    return-void
.end method

.method private prepareStopRecording()V
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;->STATE_PRE_SAVING:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->updateVideoState(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/4 v2, 0x4

    invoke-interface {v0, v2, v2}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/4 v3, 0x5

    invoke-interface {v0, v3, v2}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/16 v3, 0x8

    invoke-interface {v0, v3, v2}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/freeme/camera/common/IAppUi;->showSavingDialog(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoHelper:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->releaseAudioFocus(Lcom/freeme/camera/common/app/IApp;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoUi:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;

    sget-object v2, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    invoke-interface {v0, v2}, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;->updateUIState(Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsSetEis25  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mIsSetEis25:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mIsSetEis25:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoHelper:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->stopEis25()V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    const-string v2, "key_video_status"

    const-string v3, "preview"

    invoke-virtual {v0, v2, v3}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->stopRecording()V

    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCanPauseResumeRecording:Z

    return-void
.end method

.method private releaseRecorder()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mRecorder:Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;->reset()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mRecorder:Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mRecorder:Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;

    :cond_0
    return-void
.end method

.method private resumeRecording()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[resumeRecording] +"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoUi:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;

    sget-object v1, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_RESUME_RECORDING:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;->updateUIState(Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mRecorder:Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/camera/portability/MediaRecorderEx;->resume(Landroid/media/MediaRecorder;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[resumeRecording] -"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private startRecording()V
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[startRecording] + "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getModeState()Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;->STATE_PAUSED:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[startRecording] error mode state is paused"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/storage/IStorageService;->getRecordStorageSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gtz v0, :cond_1

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[startRecording] storage is full"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->isReadyForCapture()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[startRecording] not ready for capture"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    return-void

    :cond_2
    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;->STATE_PRE_RECORDING:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->updateVideoState(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    invoke-virtual {p0, v1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getRecordedRestriction(Z)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->postRecordingRestriction(Ljava/util/List;Z)V

    invoke-virtual {p0, v1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->initRecorder(Z)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->initRecorderFail()V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->prepareStartRecording()V

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mRecorder:Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;->start()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mWaitStopRecording:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->startRecordingFail()V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    if-nez v3, :cond_4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    const-string v1, "key_video_status"

    const-string v2, "preview"

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/app/IApp;->enableKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/16 v1, 0xa

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;->STATE_RECORDING:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->updateVideoState(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mIsParameterExtraCanUse:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoUi:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;

    sget-object v1, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;->updateUIState(Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;)V

    :cond_5
    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[startRecording] - "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private startRecordingFail()V
    .locals 2

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->releaseRecorder()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->getCamera()Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->lockCamera()V

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;->STATE_PREVIEW:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->updateVideoState(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoUi:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;

    sget-object v1, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;->updateUIState(Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoUi:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;->showInfo(I)V

    return-void
.end method

.method private stopRecording()V
    .locals 5

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[stopRecording]+ VideoState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoState:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getVideoState()Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;->STATE_RECORDING:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getVideoState()Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;->STATE_PAUSED:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    if-ne v0, v1, :cond_3

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->prepareStopRecording()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v3, "[stopRecording] media recorder stop + "

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mRecorder:Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;

    invoke-interface {v2}, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;->stop()V

    sget-object v2, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v3, "[stopRecording] media recorder stop - "

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->deleteCurrentFile()V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    move v2, v1

    :goto_0
    iget-boolean v3, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mIsSetEis25:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getModeState()Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    move-result-object v3

    sget-object v4, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;->STATE_RESUMED:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    invoke-interface {v3}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->stopPreview()V

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    invoke-interface {v3}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->startPreview()V

    :cond_1
    invoke-direct {p0, v2}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->doAfterRecorderStoped(Z)V

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2, v1}, Lcom/freeme/camera/common/app/IApp;->enableKeepScreenOn(Z)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getModeState()Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    move-result-object v2

    sget-object v3, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;->STATE_RESUMED:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    invoke-virtual {p0, v1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getRecordedRestriction(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->postRecordingRestriction(Ljava/util/List;Z)V

    const-string v0, "previewing"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->updateModeDeviceState(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mWaitStopRecording:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    :cond_3
    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[stopRecording] -"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateModeState(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateModeState] new state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " old state ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mModeState:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mResumePauseLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mModeState:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mResumePauseLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mResumePauseLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private updateThumbnail(Landroid/net/Uri;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "rw"

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {p1}, Lcom/freeme/camera/common/IAppUi;->getThumbnailViewWidth()I

    move-result p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/utils/BitmapCreator;->createBitmapFromVideo(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/IAppUi;->updateThumbnail(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected addFileToMediaStore()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoHelper:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    iget v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mOrientationHint:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->prepareContentValues(ZILcom/freeme/camera/common/utils/Size;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v1}, Lcom/freeme/camera/common/ICameraContext;->getMediaSaver()Lcom/freeme/camera/common/storage/MediaSaver;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->modifyContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoHelper:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->getVideoTempPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mFileSavedListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoHelper:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    invoke-virtual {v4}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->getVideoTempUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/freeme/camera/common/storage/MediaSaver;->addSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-void
.end method

.method protected getPreviewStartCallback()Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$DeviceCallback;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mPreviewStartCallback:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$DeviceCallback;

    return-object v0
.end method

.method protected getPreviewedRestriction()Lcom/freeme/camera/common/relation/Relation;
    .locals 4

    invoke-static {}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoRestriction;->getPreviewRelation()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v0

    const-string v1, "preview"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v1

    const-string v2, "key_scene_mode"

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto-scene-detection"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "fireworks"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "key_scene_mode"

    invoke-static {}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoRestriction;->getVideoSceneRestriction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/freeme/camera/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected getProfile()Landroid/media/CamcorderProfile;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0
.end method

.method protected getRecordedRestriction(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/relation/Relation;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method protected getSettingManager()Lcom/freeme/camera/common/setting/ISettingManager;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    return-object v0
.end method

.method protected getVideoState()Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoState:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V
    .locals 2
    .param p1    # Lcom/freeme/camera/common/app/IApp;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/ICameraContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[init]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/mode/CameraModeBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V

    new-instance p3, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoHandler;-><init>(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->initVideoVariables()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->doInitMode()V

    return-void
.end method

.method protected initCameraDevice(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-static {v0, p1, v1}, Lcom/freeme/camera/feature/mode/shortvideo/device/DeviceControllerFactory;->createDeviceCtroller(Landroid/app/Activity;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Lcom/freeme/camera/common/ICameraContext;)Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    return-void
.end method

.method protected initRecorder(Z)Z
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[initRecorder]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->releaseRecorder()V

    new-instance v0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;

    invoke-direct {v0}, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mRecorder:Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mRecorder:Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->configRecorderSpec(Z)Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;->init(Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->setMediaRecorderParameters()V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->initForHal3(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->releaseRecorder()V

    const/4 p1, 0x0

    return p1
.end method

.method protected initVideoUi()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getVideoUi()Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoUi:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;

    return-void
.end method

.method protected modifyContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0

    return-object p1
.end method

.method protected modifyRecorderSpec(Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;Z)Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;
    .locals 0

    return-object p1
.end method

.method protected modifyUISpec(Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;)Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$UISpec;
    .locals 0

    return-object p1
.end method

.method public onBackPressed()Z
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackPressed mVideoState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoState:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$13;->$SwitchMap$com$freeme$camera$feature$mode$shortvideo$ShortVideoMode$VideoState:[I

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getVideoState()Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v1

    :pswitch_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onCameraSelected(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCameraSelected] new id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " old id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabledImmediately(Z)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->canSelectCamera(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoHelper:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->startSwitchCameraAnimation(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/IAppUi;->onCameraSelected(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getPreviewStartCallback()Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$DeviceCallback;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->setPreviewCallback(Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$PreviewCallback;Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$DeviceCallback;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->doCameraSelect(Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {p1, v2}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    return v1
.end method

.method public onOrientationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoUi:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;->updateOrientation(I)V

    :cond_0
    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video onShutterButtonClick mVideoState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoState:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$13;->$SwitchMap$com$freeme$camera$feature$mode$shortvideo$ShortVideoMode$VideoState:[I

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getVideoState()Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->stopRecording()V

    return v2

    :pswitch_1
    return v2

    :pswitch_2
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getModeState()Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    move-result-object v0

    sget-object v3, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;->STATE_RESUMED:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->startRecording()V

    :cond_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onUserInteraction()Z
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$13;->$SwitchMap$com$freeme$camera$feature$mode$shortvideo$ShortVideoMode$VideoState:[I

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getVideoState()Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    return v1

    :pswitch_1
    invoke-super {p0}, Lcom/freeme/camera/common/mode/CameraModeBase;->onUserInteraction()Z

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public pause(Lcom/freeme/camera/common/mode/DeviceUsage;)V
    .locals 2
    .param p1    # Lcom/freeme/camera/common/mode/DeviceUsage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[pause]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/CameraModeBase;->pause(Lcom/freeme/camera/common/mode/DeviceUsage;)V

    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;->STATE_PAUSED:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->updateModeState(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mNeedCloseCameraIds:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->doPauseMode(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected release()V
    .locals 2

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->releaseRecorder()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoUi:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;->unInitVideoUI()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoUi:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->release()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    :cond_2
    return-void
.end method

.method public resume(Lcom/freeme/camera/common/mode/DeviceUsage;)V
    .locals 2
    .param p1    # Lcom/freeme/camera/common/mode/DeviceUsage;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[resume]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/freeme/camera/common/mode/CameraModeBase;->resume(Lcom/freeme/camera/common/mode/DeviceUsage;)V

    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;->STATE_RESUMED:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->updateModeState(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$ModeState;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->doInitDeviceManager()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->initVideoVariables()V

    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;->STATE_UNKNOWN:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->updateVideoState(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->doResumeMode()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/app/IApp;->setCurrentCameraMode(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mIApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->showFaceBeautyView(Z)V

    return-void
.end method

.method protected setMediaRecorderParameters()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoHelper:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    sget-object v1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->MEDIA_INFO:[I

    array-length v1, v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mRecorder:Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;

    invoke-interface {v3}, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoHelper:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    const-string v5, "media-recorder-info="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoHelper:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    sget-object v5, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->MEDIA_INFO:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/camera/portability/MediaRecorderEx;->setParametersExtra(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mIsParameterExtraCanUse:Z

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mRecorder:Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;

    invoke-interface {v2}, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-static {v2, v1, v1}, Lcom/mediatek/camera/portability/MediaRecorderEx;->setVideoBitOffSet(Landroid/media/MediaRecorder;IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mIsParameterExtraCanUse:Z

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mIsParameterExtraCanUse:Z

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mIsParameterExtraCanUse:Z

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public unInit()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[unInit]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/freeme/camera/common/mode/CameraModeBase;->unInit()V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->release()V

    return-void
.end method

.method protected updateVideoState(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateVideoState] new state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " old state ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoState:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoState:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
