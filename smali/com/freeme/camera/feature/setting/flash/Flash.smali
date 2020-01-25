.class public Lcom/freeme/camera/feature/setting/flash/Flash;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "Flash.java"


# static fields
.field public static final BATTERY_LOW_THRESHOLD:I = 0xf

.field public static final FLASH_AUTO_VALUE:Ljava/lang/String; = "auto"

.field private static final FLASH_DEFAULT_VALUE:Ljava/lang/String; = "off"

.field private static final FLASH_KEY:Ljava/lang/String; = "key_flash"

.field public static final FLASH_OFF_VALUE:Ljava/lang/String; = "off"

.field public static final FLASH_ON_VALUE:Ljava/lang/String; = "on"

.field private static final KEY_CSHOT:Ljava/lang/String; = "key_continuous_shot"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final VALUE_CSHOT_START:Ljava/lang/String; = "start"

.field private static final VALUE_CSHOT_STOP:Ljava/lang/String; = "stop"

.field private static final VIDEO_STATUS_KEY:Ljava/lang/String; = "key_video_status"

.field private static final VIDEO_STATUS_PREVIEW:Ljava/lang/String; = "preview"

.field private static final VIDEO_STATUS_RECORDING:Ljava/lang/String; = "recording"


# instance fields
.field public barrtyLevel:I

.field private defaultValue:Ljava/lang/String;

.field public flashCameraId:Ljava/lang/String;

.field private mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentMode:Ljava/lang/String;

.field private mFlashHint:Lcom/freeme/camera/OnScreenHint;

.field private mFlashParameterConfigure:Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;

.field private mFlashRequestConfigure:Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;

.field private mFlashViewController:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

.field private mKeyEventListener:Lcom/freeme/camera/common/app/IApp$KeyEventListener;

.field private mLongExposureMode:Ljava/lang/String;

.field private mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

.field private mSdofMode:Ljava/lang/String;

.field private mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/flash/Flash;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    const-string v0, "com.mediatek.camera.common.mode.photo.PhotoMode"

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mCurrentMode:Ljava/lang/String;

    const-string v0, "com.mediatek.camera.feature.mode.vsdof.photo.SdofPhotoMode"

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mSdofMode:Ljava/lang/String;

    const-string v0, "com.mediatek.camera.feature.mode.longexposure.LongExposureMode"

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mLongExposureMode:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->barrtyLevel:I

    const-string v0, "off"

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->defaultValue:Ljava/lang/String;

    new-instance v0, Lcom/freeme/camera/feature/setting/flash/Flash$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/flash/Flash$1;-><init>(Lcom/freeme/camera/feature/setting/flash/Flash;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/freeme/camera/feature/setting/flash/Flash$5;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/flash/Flash$5;-><init>(Lcom/freeme/camera/feature/setting/flash/Flash;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/flash/Flash;)Lcom/freeme/camera/OnScreenHint;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mFlashHint:Lcom/freeme/camera/OnScreenHint;

    return-object p0
.end method

.method static synthetic access$002(Lcom/freeme/camera/feature/setting/flash/Flash;Lcom/freeme/camera/OnScreenHint;)Lcom/freeme/camera/OnScreenHint;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mFlashHint:Lcom/freeme/camera/OnScreenHint;

    return-object p1
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/flash/Flash;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/setting/flash/Flash;)Lcom/freeme/camera/common/setting/ISettingManager$SettingController;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/setting/flash/Flash;)Lcom/freeme/camera/common/setting/ISettingManager$SettingController;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/flash/Flash;->frontStoreScope:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/freeme/camera/feature/setting/flash/Flash;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/flash/Flash;->backStoreScope:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/freeme/camera/feature/setting/flash/Flash;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/freeme/camera/feature/setting/flash/Flash;)Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mFlashRequestConfigure:Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/flash/Flash;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/flash/Flash;)Lcom/freeme/camera/feature/setting/flash/FlashViewController;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mFlashViewController:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/flash/Flash;)Z
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/flash/Flash;->isFlashSupportedInCurrentMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/flash/Flash;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/setting/flash/Flash;)Lcom/freeme/camera/common/setting/ISettingManager$SettingController;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/setting/flash/Flash;)Lcom/freeme/camera/common/setting/ISettingManager$SettingController;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/setting/flash/Flash;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object p0
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/setting/flash/Flash;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method private isFlashSupportedInCurrentMode()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mCurrentMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mLongExposureMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mCurrentMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mSdofMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addViewEntry()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mFlashViewController:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->addQuickSwitchIcon()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mFlashViewController:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/flash/Flash;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->showQuickSwitchIcon(Z)V

    return-void
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mFlashRequestConfigure:Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;-><init>(Lcom/freeme/camera/feature/setting/flash/Flash;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mFlashRequestConfigure:Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mFlashRequestConfigure:Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object v0
.end method

.method public getCurrentModeType()Lcom/freeme/camera/common/mode/ICameraMode$ModeType;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_flash"

    return-object v0
.end method

.method public getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mFlashParameterConfigure:Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;-><init>(Lcom/freeme/camera/feature/setting/flash/Flash;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mFlashParameterConfigure:Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mFlashParameterConfigure:Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object v0
.end method

.method public getSettingType()Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    sget-object p2, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraFlashStatus:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraFlashStatus:Ljava/lang/String;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->defaultValue:Ljava/lang/String;

    :cond_0
    iget-object p2, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v0, "key_flash"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->defaultValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/flash/Flash;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/freeme/camera/feature/setting/flash/Flash;->setValue(Ljava/lang/String;)V

    invoke-interface {p3}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->flashCameraId:Ljava/lang/String;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mFlashViewController:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    if-nez p2, :cond_1

    new-instance p2, Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    invoke-direct {p2, p0, p1}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;-><init>(Lcom/freeme/camera/feature/setting/flash/Flash;Lcom/freeme/camera/common/app/IApp;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mFlashViewController:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string p2, "key_video_status"

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string p2, "key_continuous_shot"

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mActivity:Landroid/app/Activity;

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p3, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mFlashViewController:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->getKeyEventListener()Lcom/freeme/camera/common/app/IApp$KeyEventListener;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mKeyEventListener:Lcom/freeme/camera/common/app/IApp$KeyEventListener;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mKeyEventListener:Lcom/freeme/camera/common/app/IApp$KeyEventListener;

    const p3, 0x7fffffff

    invoke-interface {p1, p2, p3}, Lcom/freeme/camera/common/app/IApp;->registerKeyEventListener(Lcom/freeme/camera/common/app/IApp$KeyEventListener;I)V

    return-void
.end method

.method protected isThirdPartyIntent()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mApp:Lcom/freeme/camera/common/app/IApp;

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

.method public onFlashValueChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/freeme/camera/feature/setting/flash/Flash$3;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/feature/setting/flash/Flash$3;-><init>(Lcom/freeme/camera/feature/setting/flash/Flash;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFlashValueChanged(Ljava/lang/String;Z)V
    .locals 1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/freeme/camera/feature/setting/flash/Flash$4;

    invoke-direct {v0, p0, p1}, Lcom/freeme/camera/feature/setting/flash/Flash$4;-><init>(Lcom/freeme/camera/feature/setting/flash/Flash;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mFlashViewController:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->hideFlashChoiceView()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mFlashRequestConfigure:Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->changeFlashToTorchByAeState(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/freeme/camera/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mCurrentMode:Ljava/lang/String;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    return-void
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

    sget-object v0, Lcom/freeme/camera/feature/setting/flash/Flash;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues] headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",supportValues = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v0, "key_scene_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    const-string v1, "key_scene_mode"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hdr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/flash/Flash;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_hdr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/freeme/camera/feature/setting/flash/Flash;->onFlashValueChanged(Ljava/lang/String;)V

    :cond_1
    const-string v1, "key_hdr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/flash/Flash;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/freeme/camera/feature/setting/flash/FlashRestriction;->getFlashRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object p1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/flash/Flash;->getValue()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {p2, p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mActivity:Landroid/app/Activity;

    new-instance p2, Lcom/freeme/camera/feature/setting/flash/Flash$2;

    invoke-direct {p2, p0, p3}, Lcom/freeme/camera/feature/setting/flash/Flash$2;-><init>(Lcom/freeme/camera/feature/setting/flash/Flash;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/setting/flash/FlashRestriction;->getFlashRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/flash/Flash;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    :cond_0
    return-void
.end method

.method public refreshViewEntry()V
    .locals 5

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/flash/Flash;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mFlashViewController:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->showQuickSwitchIcon(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mFlashViewController:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->showQuickSwitchIcon(Z)V

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v2, "key_restore_settings"

    const-string v3, "off"

    const-string v4, "_global_scope"

    invoke-virtual {v0, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->barrtyLevel:I

    const/16 v2, 0xf

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->defaultValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/flash/Flash;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mFlashViewController:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->defaultValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->updateFlashEntryView(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->defaultValue:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/freeme/camera/feature/setting/flash/Flash;->onFlashValueChanged(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public removeViewEntry()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mFlashViewController:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->removeQuickSwitchIcon()V

    return-void
.end method

.method public resetFlashMode()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_restore_settings"

    const-string v2, "off"

    const-string v3, "_global_scope"

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->barrtyLevel:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->defaultValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/flash/Flash;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mFlashViewController:Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->defaultValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->updateFlashEntryView(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->defaultValue:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/freeme/camera/feature/setting/flash/Flash;->onFlashValueChanged(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string v1, "key_video_status"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string v1, "key_continuous_shot"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mKeyEventListener:Lcom/freeme/camera/common/app/IApp$KeyEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/Flash;->mKeyEventListener:Lcom/freeme/camera/common/app/IApp$KeyEventListener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/app/IApp;->unRegisterKeyEventListener(Lcom/freeme/camera/common/app/IApp$KeyEventListener;)V

    :cond_0
    return-void
.end method
