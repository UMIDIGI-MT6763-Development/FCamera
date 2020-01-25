.class public Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "VideoQuality.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView$OnValueChangeListener;


# static fields
.field private static final KEY_VIDEO_QUALITY:Ljava/lang/String; = "key_video_quality"

.field private static final QUALITY_INDEX_NUMBER:I = 0x2

.field private static final QUALITY_INDEX_NUMBER_3:I = 0x3

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field public mCameraId:Ljava/lang/String;

.field private mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mSettingView:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object p0
.end method

.method private getDefaultQuality()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getIndexForCameraId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getIndexForCameraId(Ljava/lang/String;)I
    .locals 6

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-le v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v4, "1"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v4, 0x3

    if-eqz p1, :cond_4

    sget-object p1, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraFrontVideoSizeDefault:Ljava/lang/String;

    if-eqz p1, :cond_7

    sget-object p1, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraFrontVideoSizeDefault:Ljava/lang/String;

    const-string v5, "large"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    const-string v2, "medium"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v4, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraBackVideoSizeDefault:Ljava/lang/String;

    if-eqz p1, :cond_7

    sget-object p1, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraBackVideoSizeDefault:Ljava/lang/String;

    const-string v5, "large"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    const-string v2, "medium"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v4, :cond_7

    move v1, v3

    goto :goto_1

    :cond_7
    move v1, v0

    :goto_1
    return v1
.end method

.method private isCaptureByIntent()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private parseIntent()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getCameraId()Ljava/lang/String;

    move-result-object v1

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
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public addViewEntry()V
    .locals 2

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->isCaptureByIntent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mSettingView:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->addSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    :cond_0
    return-void
.end method

.method public getApp()Lcom/freeme/camera/common/app/IApp;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object v0
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;-><init>(Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_video_quality"

    return-object v0
.end method

.method public getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;-><init>(Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;

    return-object v0
.end method

.method public getSettingType()Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    invoke-interface {p3}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mCameraId:Ljava/lang/String;

    new-instance p1, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;-><init>(Ljava/lang/String;Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mSettingView:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mSettingView:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;

    invoke-virtual {p1, p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->setOnValueChangeListener(Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView$OnValueChangeListener;)V

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality$1;-><init>(Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onValueInitialized()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mSettingView:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mSettingView:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->setEntryValues(Ljava/util/List;)V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method public refreshViewEntry()V
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getDefaultQuality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mSettingView:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mSettingView:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getEntryValues()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->setEntryValues(Ljava/util/List;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mSettingView:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getEntryValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v2, "key_restore_settings"

    const-string v4, "off"

    const-string v5, "_global_scope"

    invoke-virtual {v1, v2, v4, v5}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mSettingView:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;->setSummary(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_1
    return-void
.end method

.method public removeViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mSettingView:Lcom/freeme/camera/feature/setting/videoquality/VideoQualitySettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->removeSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method

.method public updateValue(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_default_video_quality"

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getDefaultQuality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->parseIntent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->setValue(Ljava/lang/String;)V

    return-void
.end method
