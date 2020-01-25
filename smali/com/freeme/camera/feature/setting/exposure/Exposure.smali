.class public Lcom/freeme/camera/feature/setting/exposure/Exposure;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "Exposure.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/exposure/ExposureView$ExposureViewChangedListener;
.implements Lcom/freeme/camera/feature/setting/exposure/IExposure;
.implements Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;
.implements Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;


# static fields
.field private static final ANIMATOR_DURATION_SCALE_SELECTOR:I = 0x2

.field private static final CSHOT_KEY:Ljava/lang/String; = "key_continuous_shot"

.field private static final DEFAULT_VALUE:I = 0x0

.field private static final EXPOSURE_KEY:Ljava/lang/String; = "key_exposure"

.field private static final EXPOSURE_LOCK:Ljava/lang/String; = "exposure-lock"

.field private static final EXPOSURE_SHUTTER_PRIORITY:I = 0x1e

.field private static final EXPOSURE_VIEW_KEY:Ljava/lang/String; = "key_exposure_view"

.field private static final EXPOSURE_VIEW_PRIORITY:I = 0x9

.field private static final FLASH_KEY:Ljava/lang/String; = "key_flash"

.field private static final FLASH_VAULE_AUTO:Ljava/lang/String; = "auto"

.field private static final FLASH_VAULE_ON:Ljava/lang/String; = "on"

.field private static final FOCUS_STATE_KEY:Ljava/lang/String; = "key_focus_state"

.field private static final FOCUS_STATE_PASSIVE_SCAN:Ljava/lang/String; = "PASSIVE_SCAN"

.field private static final KEY_SHUTTER_SPEED:Ljava/lang/String; = "key_shutter_speed"

.field private static final LED_BRIGHTNESS:I = 0x1000

.field private static final VALUE_CSHOT_START:Ljava/lang/String; = "start"

.field private static final VALUE_CSHOT_STOP:Ljava/lang/String; = "stop"

.field private static final VIDEO_STATUS_KEY:Ljava/lang/String; = "key_video_status"

.field private static final VIDEO_STATUS_PREVIEW:Ljava/lang/String; = "preview"

.field private static final VIDEO_STATUS_RECORDING:Ljava/lang/String; = "recording"

.field private static final ZSD_KEY:Ljava/lang/String; = "key_zsd"


# instance fields
.field private mCompensationOrientation:I

.field private mCurrESSLEDMinStep:I

.field private mCurrESSOLEDMinStep:I

.field private mCurrentModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

.field private mDefaultBrightNess:I

.field private mExposureListener:Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;

.field private mExposureViewController:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

.field private mIsPanelOn:Z

.field private mLastModeState:Ljava/lang/String;

.field private mOrientationListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

.field private mPreviewStarted:Z

.field private mPreviewStateCallback:Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;

.field private mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

.field private mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private mViewStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    sget-object v0, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mCurrentModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mLastModeState:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mCompensationOrientation:I

    iput v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mDefaultBrightNess:I

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mIsPanelOn:Z

    iput v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mCurrESSLEDMinStep:I

    iput v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mCurrESSOLEDMinStep:I

    new-instance v0, Lcom/freeme/camera/feature/setting/exposure/Exposure$5;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/exposure/Exposure$5;-><init>(Lcom/freeme/camera/feature/setting/exposure/Exposure;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mOrientationListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

    new-instance v0, Lcom/freeme/camera/feature/setting/exposure/Exposure$6;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/exposure/Exposure$6;-><init>(Lcom/freeme/camera/feature/setting/exposure/Exposure;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mPreviewStateCallback:Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;

    new-instance v0, Lcom/freeme/camera/feature/setting/exposure/Exposure$7;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/exposure/Exposure$7;-><init>(Lcom/freeme/camera/feature/setting/exposure/Exposure;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mExposureListener:Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/freeme/camera/feature/setting/exposure/Exposure;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mPreviewStarted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Z
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->hasDisableEvReset()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Z
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->isEnvironmentReady()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mViewStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$602(Lcom/freeme/camera/feature/setting/exposure/Exposure;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mIsPanelOn:Z

    return p1
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/setting/exposure/Exposure;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mCompensationOrientation:I

    return p0
.end method

.method static synthetic access$802(Lcom/freeme/camera/feature/setting/exposure/Exposure;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mCompensationOrientation:I

    return p1
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/setting/exposure/Exposure;)Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mExposureViewController:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    return-object p0
.end method

.method private doAeUnLock()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mExposureListener:Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;->getAeLock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mExposureListener:Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;->setAeLock(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method

.method private getScreenBrightness()Ljava/lang/Integer;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[getScreenBrightness] SettingNotFoundException"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getScreenBrightness] brightness "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private hasDisableEvReset()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mExposureListener:Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;->getAeLock()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isEnvironmentReady()Z
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mPreviewStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[isEnvironmentReady] preview not started "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected capture()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/exposure/Exposure$3;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/exposure/Exposure$3;-><init>(Lcom/freeme/camera/feature/setting/exposure/Exposure;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method doAeLock()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mExposureListener:Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;->setAeLock(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method

.method protected getCameraId()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;-><init>(Lcom/freeme/camera/feature/setting/exposure/Exposure;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mExposureListener:Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mPreviewStarted:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;

    return-object v0
.end method

.method protected getCurrentFlashValue()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v1

    const/16 v2, 0x69

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v1

    const/16 v2, 0x68

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v0, "off"

    :cond_1
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getCurrentFlashValue] flashValue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getCurrentModeType()Lcom/freeme/camera/common/mode/ICameraMode$ModeType;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mCurrentModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    return-object v0
.end method

.method protected getCurrentShutterValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    const-string v1, "key_shutter_speed"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_exposure"

    return-object v0
.end method

.method public getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;-><init>(Lcom/freeme/camera/feature/setting/exposure/Exposure;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mExposureListener:Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;

    return-object v0
.end method

.method public getPreviewStateCallback()Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mPreviewStateCallback:Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;

    return-object v0
.end method

.method public getSettingType()Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    new-instance p1, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[init] + "

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance p1, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-direct {p1, p2, p0}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;-><init>(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/feature/setting/exposure/Exposure;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mExposureViewController:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/16 p2, 0x9

    invoke-interface {p1, p0, p2}, Lcom/freeme/camera/common/IAppUi;->registerGestureListener(Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mOrientationListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

    invoke-interface {p1, p2}, Lcom/freeme/camera/common/app/IApp;->registerOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    const/16 p2, 0x1e

    invoke-interface {p1, p0, p2}, Lcom/freeme/camera/common/IAppUi;->registerOnShutterButtonListener(Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string p2, "key_exposure_view"

    invoke-virtual {p1, p2}, Lcom/freeme/camera/common/relation/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mViewStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string p2, "key_focus_state"

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string p2, "key_video_status"

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string p2, "key_continuous_shot"

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result p1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mCompensationOrientation:I

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->getScreenBrightness()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mDefaultBrightNess:I

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[init] - mCompensationOrientation "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mCompensationOrientation:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public initExposureCompensation([I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mExposureViewController:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->initExposureValues([I)V

    return-void
.end method

.method protected isPanelOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mIsPanelOn:Z

    return v0
.end method

.method protected isThirdPartyIntent()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onDoubleTap(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onExposureViewChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/freeme/camera/feature/setting/exposure/Exposure$1;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/feature/setting/exposure/Exposure$1;-><init>(Lcom/freeme/camera/feature/setting/exposure/Exposure;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(FF)Z
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[onLongPress]"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->isEnvironmentReady()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    return p2
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mExposureListener:Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;->updateEv(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mExposureListener:Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;->setAeLock(Z)V

    :cond_0
    iget-boolean p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mIsPanelOn:Z

    const-string p1, "unknown"

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mLastModeState:Ljava/lang/String;

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onModeOpened] modeKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",modeType "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mCurrentModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->isEnvironmentReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mExposureViewController:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->needUpdateExposureView()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    if-lez p1, :cond_3

    iget p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mCompensationOrientation:I

    const/16 p4, 0x5a

    if-eq p1, p4, :cond_2

    const/16 p4, 0x10e

    if-ne p1, p4, :cond_4

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mExposureViewController:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->onVerticalScroll(Landroid/view/MotionEvent;F)V

    return v0

    :cond_3
    iget p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mCompensationOrientation:I

    if-eqz p1, :cond_5

    const/16 p3, 0xb4

    if-ne p1, p3, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mExposureViewController:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-virtual {p1, p2, p4}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->onVerticalScroll(Landroid/view/MotionEvent;F)V

    return v0
.end method

.method public onShutterButtonClick()Z
    .locals 3

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->isEnvironmentReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mCurrentModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    invoke-virtual {v0, v2}, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mLastModeState:Ljava/lang/String;

    const-string v2, "previewing"

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mExposureListener:Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;->needConsiderAePretrigger()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mExposureListener:Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;->checkTodoCapturAfterAeConverted()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onShutterButtonClick] need do capture after AE converted"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_4
    return v1
.end method

.method public onShutterButtonFocus(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShutterButtonLongPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(FF)Z
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->isEnvironmentReady()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    return p2
.end method

.method public onTrackingTouchStatusChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/freeme/camera/feature/setting/exposure/Exposure$2;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/feature/setting/exposure/Exposure$2;-><init>(Lcom/freeme/camera/feature/setting/exposure/Exposure;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->isEnvironmentReady()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mExposureViewController:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->needUpdateExposureView()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mExposureViewController:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->onTrackingTouch(Z)V

    return v0
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues] + headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",supportValues "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v0, "exposure-lock"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->doAeLock()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->doAeUnLock()V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mExposureListener:Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->getEntryValues()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->getValue()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->getValue()Ljava/lang/String;

    move-result-object p2

    const-string p3, "0"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mExposureListener:Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;

    invoke-interface {p2, p1}, Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;->updateEv(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mExposureViewController:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->resetExposureView()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mExposureViewController:Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureViewController;->resetExposureView()V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mExposureListener:Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->getEntryValues()Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;->overrideExposureValue(Ljava/lang/String;Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method protected setPanel(ZI)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setPanel] to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",brightness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/freeme/camera/feature/setting/exposure/Exposure$4;

    invoke-direct {v0, p0, p1}, Lcom/freeme/camera/feature/setting/exposure/Exposure$4;-><init>(Lcom/freeme/camera/feature/setting/exposure/Exposure;Z)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unInit()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[unInit] + "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mLastModeState:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0, p0}, Lcom/freeme/camera/common/IAppUi;->unregisterGestureListener(Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/freeme/camera/common/IAppUi;->unregisterOnShutterButtonListener(Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mOrientationListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/app/IApp;->unregisterOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string v1, "key_video_status"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string v1, "key_focus_state"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string v1, "key_continuous_shot"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    sget-object v0, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mCurrentModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[unInit] - "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateModeDeviceState(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateModeDeviceState] + newState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mLastModeState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mLastModeState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mLastModeState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mLastModeState:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x27b40e6

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "previewing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v0, v3

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->hasDisableEvReset()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mExposureListener:Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;

    invoke-interface {p1, v3}, Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;->updateEv(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/Exposure;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_4
    :goto_1
    return-void
.end method
