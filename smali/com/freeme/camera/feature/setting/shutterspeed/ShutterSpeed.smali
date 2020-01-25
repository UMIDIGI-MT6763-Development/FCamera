.class public Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "ShutterSpeed.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView$OnValueChangeListener;


# static fields
.field private static final KEY_SHUTTER_SPEED:Ljava/lang/String; = "key_shutter_speed"

.field private static final LONG_EXPOSURE_MODE_KEY:Ljava/lang/String; = "com.freeme.camera.feature.mode.longexposure.LongExposureMode"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mIndicatorView:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;

.field private volatile mIsSupported:Z

.field private mModeKey:Ljava/lang/String;

.field private mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mSettingView:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    const-string v0, "com.freeme.camera.feature.mode.longexposure.LongExposureMode"

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mModeKey:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mIsSupported:Z

    return-void
.end method


# virtual methods
.method public addViewEntry()V
    .locals 3

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mIsSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[addViewEntry]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mSettingView:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mSettingView:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mSettingView:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->setOnValueChangeListener(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView$OnValueChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mIndicatorView:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;

    if-nez v0, :cond_2

    new-instance v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mIndicatorView:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;

    :cond_2
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mSettingView:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->addSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mIndicatorView:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->getView()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mIndicatorView:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->getViewPriority()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/IAppUi;->addToIndicatorView(Landroid/view/View;I)V

    :cond_3
    return-void
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedCaptureRequestConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedCaptureRequestConfig;-><init>(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedCaptureRequestConfig;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_shutter_speed"

    return-object v0
.end method

.method public getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedParametersConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedParametersConfig;-><init>(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedParametersConfig;

    return-object v0
.end method

.method public getSettingType()Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onModeClosed] modeKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/freeme/camera/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/freeme/camera/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V

    sget-object p2, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onModeOpened] modeKey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mModeKey:Ljava/lang/String;

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mIndicatorView:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->updateIndicator(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onValueInitialized(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[onValueInitialized] shutter speed is not supportted"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mIsSupported:Z

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->setSupportedPlatformValues(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->setSupportedEntryValues(Ljava/util/List;)V

    const-string v0, "com.freeme.camera.feature.mode.longexposure.LongExposureMode"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mModeKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->setEntryValues(Ljava/util/List;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string p2, "Auto"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->setEntryValues(Ljava/util/List;)V

    const-string p1, "Auto"

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->setValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method public refreshViewEntry()V
    .locals 3

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mIsSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[refreshViewEntry]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mSettingView:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->getEntryValues()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->setEntryValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mSettingView:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mSettingView:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->getEntryValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mIndicatorView:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mIndicatorView:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->updateIndicator(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mIndicatorView:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->getView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->removeFromIndicatorView(Landroid/view/View;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public removeViewEntry()V
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mIsSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[removeViewEntry]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mSettingView:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mSettingView:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->removeSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mIndicatorView:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->mIndicatorView:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->getView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->removeFromIndicatorView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method
