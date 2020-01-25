.class public Lcom/freeme/camera/common/mode/ModeManager;
.super Ljava/lang/Object;
.source "ModeManager.java"

# interfaces
.implements Lcom/freeme/camera/common/mode/IModeListener;
.implements Lcom/freeme/camera/common/IAppUiListener$OnModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;,
        Lcom/freeme/camera/common/mode/ModeManager$MsgParam;,
        Lcom/freeme/camera/common/mode/ModeManager$FeatureLoadListener;
    }
.end annotation


# static fields
.field private static final BEAUTY_FACE_MODE_ANIMATION_TIMES:I = 0xaf0

.field private static final BEAUTY_MODE:Ljava/lang/String; = "com.freeme.camera.feature.mode.beautyface.BeautyFaceMode"

.field private static final DEFAULT_CAMERA_MODE:Ljava/lang/String; = "com.freeme.camera.common.mode.photo.PhotoModeEntry"

.field private static final DEFAULT_INTENT_PHOTO_MODE:Ljava/lang/String; = "com.freeme.camera.common.mode.photo.intent.IntentPhotoModeEntry"

.field private static final DEFAULT_INTENT_VIDEO_MODE:Ljava/lang/String; = "com.freeme.camera.common.mode.video.intentvideo.IntentVideoModeEntry"

.field private static final EXTRA_CAPTURE_MODE:Ljava/lang/String; = "extra_capture_mode"

.field private static final FACE_CUTE_MODE:Ljava/lang/String; = "com.freeme.camera.feature.mode.facecute.FaceCuteMode"

.field private static final IKO_MODE:Ljava/lang/String; = "com.freeme.camera.feature.mode.iko.IKOMode"

.field private static final MSG_MODE_INIT:I = 0x2

.field private static final MSG_MODE_ON_CAMERA_SELECTED:I = 0x6

.field private static final MSG_MODE_PAUSE:I = 0x5

.field private static final MSG_MODE_RESUME:I = 0x3

.field private static final MSG_MODE_UNINIT:I = 0x4

.field private static final NORMAL_ANIMATION_TIMES:I = 0x4b0

.field private static final QR_MODE:Ljava/lang/String; = "com.freeme.camera.feature.mode.qrcodescan.QrCodeScanMode"

.field private static final SDOF_MODE:Ljava/lang/String; = "com.freeme.camera.feature.mode.vsdof.photo.SdofPhotoMode"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final VIDEO_BEAUTY_MODE:Ljava/lang/String; = "com.freeme.camera.feature.mode.videobeautyface.VideoBeautyFaceMode"


# instance fields
.field private mAnimationListener:Lcom/freeme/camera/common/mode/AnimationListener;

.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mAppUi:Lcom/freeme/camera/common/IAppUi;

.field private mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

.field private mBusyModeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/freeme/camera/common/mode/ICameraMode;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraContext:Lcom/freeme/camera/common/ICameraContext;

.field private mCurrentCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

.field private mCurrentEntryKey:Ljava/lang/String;

.field private mCurrentModeDeviceUsage:Lcom/freeme/camera/common/mode/DeviceUsage;

.field private mModeHandler:Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;

.field private mNewMode:Lcom/freeme/camera/common/mode/ICameraMode;

.field private mOldMode:Lcom/freeme/camera/common/mode/ICameraMode;

.field private final mPluginLoadListener:Lcom/freeme/camera/common/mode/ModeManager$FeatureLoadListener;

.field private mResumed:Z

.field private volatile mSelectedResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/mode/ModeManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/mode/ModeManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/freeme/camera/common/mode/ModeManager$FeatureLoadListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/common/mode/ModeManager$FeatureLoadListener;-><init>(Lcom/freeme/camera/common/mode/ModeManager;Lcom/freeme/camera/common/mode/ModeManager$1;)V

    iput-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mPluginLoadListener:Lcom/freeme/camera/common/mode/ModeManager$FeatureLoadListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mBusyModeList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCurrentModeDeviceUsage:Lcom/freeme/camera/common/mode/DeviceUsage;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mResumed:Z

    new-instance v1, Lcom/freeme/camera/common/utils/AtomAccessor;

    invoke-direct {v1}, Lcom/freeme/camera/common/utils/AtomAccessor;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iput-boolean v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mSelectedResult:Z

    return-void
.end method

.method static synthetic access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/mode/ModeManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/freeme/camera/common/mode/ModeManager;)Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCurrentCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/common/mode/ModeManager;)Lcom/freeme/camera/common/ICameraContext;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/common/mode/ModeManager;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/common/mode/ModeManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCurrentEntryKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/common/mode/ModeManager;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$702(Lcom/freeme/camera/common/mode/ModeManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mSelectedResult:Z

    return p1
.end method

.method private cacheModeByIdleStatus()V
    .locals 4

    sget-object v0, Lcom/freeme/camera/common/mode/ModeManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[cacheModeByIdleStatus] idle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/mode/ModeManager;->mNewMode:Lcom/freeme/camera/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/freeme/camera/common/mode/ICameraMode;->isModeIdle()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/mode/ModeManager;->mBusyModeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mNewMode:Lcom/freeme/camera/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/freeme/camera/common/mode/ICameraMode;->isModeIdle()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mBusyModeList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mNewMode:Lcom/freeme/camera/common/mode/ICameraMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mBusyModeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mBusyModeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/freeme/camera/common/mode/ICameraMode;->isModeIdle()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/freeme/camera/common/mode/ModeManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[cacheModeByIdleStatus] mBusyModeList :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/freeme/camera/common/mode/ModeManager;->mBusyModeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mBusyModeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private createDeviceUsage(Lcom/freeme/camera/common/mode/ICameraMode;)Lcom/freeme/camera/common/mode/DeviceUsage;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mOldMode:Lcom/freeme/camera/common/mode/ICameraMode;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v1}, Lcom/freeme/camera/common/ICameraContext;->getDataStore()Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/mode/ICameraMode;->getDeviceUsage(Lcom/freeme/camera/common/relation/DataStore;Lcom/freeme/camera/common/mode/DeviceUsage;)Lcom/freeme/camera/common/mode/DeviceUsage;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCurrentModeDeviceUsage:Lcom/freeme/camera/common/mode/DeviceUsage;

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getFeatureProvider()Lcom/freeme/camera/common/loader/FeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mOldMode:Lcom/freeme/camera/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/freeme/camera/common/mode/ICameraMode;->getModeKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCurrentModeDeviceUsage:Lcom/freeme/camera/common/mode/DeviceUsage;

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/loader/FeatureProvider;->updateDeviceUsage(Ljava/lang/String;Lcom/freeme/camera/common/mode/DeviceUsage;)Lcom/freeme/camera/common/mode/DeviceUsage;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCurrentModeDeviceUsage:Lcom/freeme/camera/common/mode/DeviceUsage;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getDataStore()Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCurrentModeDeviceUsage:Lcom/freeme/camera/common/mode/DeviceUsage;

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/common/mode/ICameraMode;->getDeviceUsage(Lcom/freeme/camera/common/relation/DataStore;Lcom/freeme/camera/common/mode/DeviceUsage;)Lcom/freeme/camera/common/mode/DeviceUsage;

    move-result-object v0

    invoke-interface {p1}, Lcom/freeme/camera/common/mode/ICameraMode;->getModeKey()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v1}, Lcom/freeme/camera/common/ICameraContext;->getFeatureProvider()Lcom/freeme/camera/common/loader/FeatureProvider;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/freeme/camera/common/loader/FeatureProvider;->updateDeviceUsage(Ljava/lang/String;Lcom/freeme/camera/common/mode/DeviceUsage;)Lcom/freeme/camera/common/mode/DeviceUsage;

    move-result-object p1

    return-object p1
.end method

.method private createMode(Ljava/lang/String;)Lcom/freeme/camera/common/mode/ICameraMode;
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getFeatureProvider()Lcom/freeme/camera/common/loader/FeatureProvider;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/common/loader/FeatureProvider$Key;

    const-class v2, Lcom/freeme/camera/common/mode/ICameraMode;

    invoke-direct {v1, p1, v2}, Lcom/freeme/camera/common/loader/FeatureProvider$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/freeme/camera/common/loader/FeatureProvider;->getInstance(Lcom/freeme/camera/common/loader/FeatureProvider$Key;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/mode/ICameraMode;

    if-nez v0, :cond_0

    const-string p1, "com.freeme.camera.common.mode.photo.PhotoModeEntry"

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getFeatureProvider()Lcom/freeme/camera/common/loader/FeatureProvider;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/common/loader/FeatureProvider$Key;

    const-class v4, Lcom/freeme/camera/common/mode/ICameraMode;

    invoke-direct {v1, p1, v4}, Lcom/freeme/camera/common/loader/FeatureProvider$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/freeme/camera/common/loader/FeatureProvider;->getInstance(Lcom/freeme/camera/common/loader/FeatureProvider$Key;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/mode/ICameraMode;

    :cond_0
    iput-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCurrentEntryKey:Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {p1}, Lcom/freeme/camera/common/ICameraContext;->getFeatureProvider()Lcom/freeme/camera/common/loader/FeatureProvider;

    move-result-object p1

    invoke-interface {v0}, Lcom/freeme/camera/common/mode/ICameraMode;->getModeKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/freeme/camera/common/loader/FeatureProvider;->updateCurrentModeKey(Ljava/lang/String;)V

    sget-object p1, Lcom/freeme/camera/common/mode/ModeManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createMode] entryKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCurrentEntryKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private getDefaultModeKey()Ljava/lang/String;
    .locals 5

    const-string v0, "com.freeme.camera.common.mode.photo.PhotoModeEntry"

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "com.freeme.camera.common.mode.photo.intent.IntentPhotoModeEntry"

    goto :goto_0

    :cond_0
    const-string v3, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "com.freeme.camera.common.mode.video.intentvideo.IntentVideoModeEntry"

    :cond_1
    :goto_0
    const-string v2, "extra_capture_mode"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/mode/ModeManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getDefaultModeKey]extraCaptureMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    move-object v0, v1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public create(Lcom/freeme/camera/common/app/IApp;)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/app/IApp;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/common/mode/ModeManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[create]+"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "mode thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;-><init>(Lcom/freeme/camera/common/mode/ModeManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mModeHandler:Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    new-instance v0, Lcom/freeme/camera/common/CameraContext;

    invoke-direct {v0}, Lcom/freeme/camera/common/CameraContext;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/ICameraContext;->create(Lcom/freeme/camera/common/app/IApp;Landroid/app/Activity;)V

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {p1, p0}, Lcom/freeme/camera/common/IAppUi;->setModeChangeListener(Lcom/freeme/camera/common/IAppUiListener$OnModeChangeListener;)V

    invoke-direct {p0}, Lcom/freeme/camera/common/mode/ModeManager;->getDefaultModeKey()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/freeme/camera/common/mode/ModeManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[create], default mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/freeme/camera/common/mode/ICameraMode;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mNewMode:Lcom/freeme/camera/common/mode/ICameraMode;

    iget-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mModeHandler:Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;

    new-instance v0, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mNewMode:Lcom/freeme/camera/common/mode/ICameraMode;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;-><init>(Lcom/freeme/camera/common/mode/ModeManager;Lcom/freeme/camera/common/mode/ICameraMode;Ljava/lang/Object;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mNewMode:Lcom/freeme/camera/common/mode/ICameraMode;

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/mode/ModeManager;->createDeviceUsage(Lcom/freeme/camera/common/mode/ICameraMode;)Lcom/freeme/camera/common/mode/DeviceUsage;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCurrentModeDeviceUsage:Lcom/freeme/camera/common/mode/DeviceUsage;

    iget-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mNewMode:Lcom/freeme/camera/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/freeme/camera/common/mode/ICameraMode;->getCameraApi()Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCurrentCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    iget-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mNewMode:Lcom/freeme/camera/common/mode/ICameraMode;

    iput-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mOldMode:Lcom/freeme/camera/common/mode/ICameraMode;

    iget-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {p1}, Lcom/freeme/camera/common/ICameraContext;->getFeatureProvider()Lcom/freeme/camera/common/loader/FeatureProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mPluginLoadListener:Lcom/freeme/camera/common/mode/ModeManager$FeatureLoadListener;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/loader/FeatureProvider;->registerFeatureLoadDoneListener(Lcom/freeme/camera/common/loader/FeatureProvider$FeatureLoadDoneListener;)V

    sget-object p1, Lcom/freeme/camera/common/mode/ModeManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[create]-"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 4

    sget-object v0, Lcom/freeme/camera/common/mode/ModeManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[destroy]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mModeHandler:Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;

    new-instance v1, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;

    iget-object v2, p0, Lcom/freeme/camera/common/mode/ModeManager;->mNewMode:Lcom/freeme/camera/common/mode/ICameraMode;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;-><init>(Lcom/freeme/camera/common/mode/ModeManager;Lcom/freeme/camera/common/mode/ICameraMode;Ljava/lang/Object;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v2, p0, Lcom/freeme/camera/common/mode/ModeManager;->mModeHandler:Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;

    invoke-virtual {v1, v2, v0}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mModeHandler:Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;

    invoke-virtual {v0}, Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0, v3}, Lcom/freeme/camera/common/IAppUi;->setModeChangeListener(Lcom/freeme/camera/common/IAppUiListener$OnModeChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getFeatureProvider()Lcom/freeme/camera/common/loader/FeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mPluginLoadListener:Lcom/freeme/camera/common/mode/ModeManager$FeatureLoadListener;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/loader/FeatureProvider;->unregisterPluginLoadDoneListener(Lcom/freeme/camera/common/loader/FeatureProvider$FeatureLoadDoneListener;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->destroy()V

    return-void
.end method

.method public getCurrentMode()Lcom/freeme/camera/common/mode/ICameraMode;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mOldMode:Lcom/freeme/camera/common/mode/ICameraMode;

    return-object v0
.end method

.method public onCameraSelected(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/common/mode/ModeManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCameraSelected], switch to camera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mModeHandler:Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;

    new-instance v1, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;

    iget-object v2, p0, Lcom/freeme/camera/common/mode/ModeManager;->mNewMode:Lcom/freeme/camera/common/mode/ICameraMode;

    invoke-direct {v1, p0, v2, p1}, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;-><init>(Lcom/freeme/camera/common/mode/ModeManager;Lcom/freeme/camera/common/mode/ICameraMode;Ljava/lang/Object;)V

    const/4 p1, 0x6

    invoke-virtual {v0, p1, v1}, Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mModeHandler:Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    iget-boolean p1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mSelectedResult:Z

    return p1
.end method

.method public onModeSelected(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/common/mode/ModeManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onModeSelected], ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCurrentEntryKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCurrentEntryKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mResumed:Z

    if-nez v0, :cond_1

    sget-object p1, Lcom/freeme/camera/common/mode/ModeManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[onModeSelected], don\'t do mode change for state isn\'t resumed, so return"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/freeme/camera/common/mode/ModeManager;->createMode(Ljava/lang/String;)Lcom/freeme/camera/common/mode/ICameraMode;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mNewMode:Lcom/freeme/camera/common/mode/ICameraMode;

    const-string p1, "com.freeme.camera.feature.mode.beautyface.BeautyFaceMode"

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mNewMode:Lcom/freeme/camera/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/freeme/camera/common/mode/ICameraMode;->getModeKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    const-string p1, "com.freeme.camera.feature.mode.videobeautyface.VideoBeautyFaceMode"

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mNewMode:Lcom/freeme/camera/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/freeme/camera/common/mode/ICameraMode;->getModeKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "com.freeme.camera.feature.mode.facecute.FaceCuteMode"

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mNewMode:Lcom/freeme/camera/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/freeme/camera/common/mode/ICameraMode;->getModeKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mAnimationListener:Lcom/freeme/camera/common/mode/AnimationListener;

    if-eqz p1, :cond_5

    const-string p1, "com.freeme.camera.feature.mode.vsdof.photo.SdofPhotoMode"

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mNewMode:Lcom/freeme/camera/common/mode/ICameraMode;

    invoke-interface {v1}, Lcom/freeme/camera/common/mode/ICameraMode;->getModeKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v1, 0x4b0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mAnimationListener:Lcom/freeme/camera/common/mode/AnimationListener;

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Lcom/freeme/camera/common/mode/AnimationListener;->animationChange(IZ)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mAnimationListener:Lcom/freeme/camera/common/mode/AnimationListener;

    invoke-interface {p1, v1, v0}, Lcom/freeme/camera/common/mode/AnimationListener;->animationChange(IZ)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mAnimationListener:Lcom/freeme/camera/common/mode/AnimationListener;

    if-eqz p1, :cond_5

    const/16 v1, 0xaf0

    invoke-interface {p1, v1, v0}, Lcom/freeme/camera/common/mode/AnimationListener;->animationChange(IZ)V

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mNewMode:Lcom/freeme/camera/common/mode/ICameraMode;

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/mode/ModeManager;->createDeviceUsage(Lcom/freeme/camera/common/mode/ICameraMode;)Lcom/freeme/camera/common/mode/DeviceUsage;

    move-result-object p1

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mModeHandler:Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;

    const/4 v2, 0x5

    new-instance v3, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;

    iget-object v4, p0, Lcom/freeme/camera/common/mode/ModeManager;->mOldMode:Lcom/freeme/camera/common/mode/ICameraMode;

    invoke-direct {v3, p0, v4, p1}, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;-><init>(Lcom/freeme/camera/common/mode/ModeManager;Lcom/freeme/camera/common/mode/ICameraMode;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mModeHandler:Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;

    new-instance v2, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;

    iget-object v3, p0, Lcom/freeme/camera/common/mode/ModeManager;->mOldMode:Lcom/freeme/camera/common/mode/ICameraMode;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;-><init>(Lcom/freeme/camera/common/mode/ModeManager;Lcom/freeme/camera/common/mode/ICameraMode;Ljava/lang/Object;)V

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v2, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCurrentEntryKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/IAppUi;->updateCurrentMode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mModeHandler:Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;

    const/4 v2, 0x2

    new-instance v4, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;

    iget-object v5, p0, Lcom/freeme/camera/common/mode/ModeManager;->mNewMode:Lcom/freeme/camera/common/mode/ICameraMode;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;-><init>(Lcom/freeme/camera/common/mode/ModeManager;Lcom/freeme/camera/common/mode/ICameraMode;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v4}, Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mModeHandler:Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;

    const/4 v2, 0x3

    new-instance v4, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;

    iget-object v5, p0, Lcom/freeme/camera/common/mode/ModeManager;->mNewMode:Lcom/freeme/camera/common/mode/ICameraMode;

    invoke-direct {v4, p0, v5, p1}, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;-><init>(Lcom/freeme/camera/common/mode/ModeManager;Lcom/freeme/camera/common/mode/ICameraMode;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v4}, Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    const-string v1, "com.freeme.camera.feature.mode.iko.IKOMode"

    iget-object v2, p0, Lcom/freeme/camera/common/mode/ModeManager;->mNewMode:Lcom/freeme/camera/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/freeme/camera/common/mode/ICameraMode;->getModeKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "com.freeme.camera.feature.mode.qrcodescan.QrCodeScanMode"

    iget-object v2, p0, Lcom/freeme/camera/common/mode/ModeManager;->mNewMode:Lcom/freeme/camera/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/freeme/camera/common/mode/ICameraMode;->getModeKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/IAppUi;->getShutterButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getIkoTipView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getIkoFlashView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/IAppUi;->getShutterButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/IAppUi;->getIkoFlashView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    invoke-direct {p0}, Lcom/freeme/camera/common/mode/ModeManager;->cacheModeByIdleStatus()V

    iput-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCurrentModeDeviceUsage:Lcom/freeme/camera/common/mode/DeviceUsage;

    iget-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mNewMode:Lcom/freeme/camera/common/mode/ICameraMode;

    iput-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mOldMode:Lcom/freeme/camera/common/mode/ICameraMode;

    return-void
.end method

.method public onUserInteraction()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mNewMode:Lcom/freeme/camera/common/mode/ICameraMode;

    invoke-interface {v0}, Lcom/freeme/camera/common/mode/ICameraMode;->onUserInteraction()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 4

    sget-object v0, Lcom/freeme/camera/common/mode/ModeManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[pause]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mResumed:Z

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mModeHandler:Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;

    new-instance v1, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;

    iget-object v2, p0, Lcom/freeme/camera/common/mode/ModeManager;->mNewMode:Lcom/freeme/camera/common/mode/ICameraMode;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;-><init>(Lcom/freeme/camera/common/mode/ModeManager;Lcom/freeme/camera/common/mode/ICameraMode;Ljava/lang/Object;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->pause()V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getFeatureProvider()Lcom/freeme/camera/common/loader/FeatureProvider;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/freeme/camera/common/loader/FeatureProvider;->updateCurrentModeKey(Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .locals 5

    sget-object v0, Lcom/freeme/camera/common/mode/ModeManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[resume]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->resume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/common/mode/ModeManager;->mResumed:Z

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v1}, Lcom/freeme/camera/common/ICameraContext;->getFeatureProvider()Lcom/freeme/camera/common/loader/FeatureProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/mode/ModeManager;->mNewMode:Lcom/freeme/camera/common/mode/ICameraMode;

    invoke-interface {v2}, Lcom/freeme/camera/common/mode/ICameraMode;->getModeKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freeme/camera/common/loader/FeatureProvider;->updateCurrentModeKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mModeHandler:Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;

    new-instance v2, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;

    iget-object v3, p0, Lcom/freeme/camera/common/mode/ModeManager;->mNewMode:Lcom/freeme/camera/common/mode/ICameraMode;

    iget-object v4, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCurrentModeDeviceUsage:Lcom/freeme/camera/common/mode/DeviceUsage;

    invoke-direct {v2, p0, v3, v4}, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;-><init>(Lcom/freeme/camera/common/mode/ModeManager;Lcom/freeme/camera/common/mode/ICameraMode;Ljava/lang/Object;)V

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v1}, Lcom/freeme/camera/common/ICameraContext;->getDataStore()Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v1

    const-string v2, "key_camera_ai"

    const-string v3, "off"

    invoke-virtual {v1}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setAnimationListener(Lcom/freeme/camera/common/mode/AnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager;->mAnimationListener:Lcom/freeme/camera/common/mode/AnimationListener;

    return-void
.end method
