.class public Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "ShutterSound.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundSettingView$OnShutterSoundClickListener;


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private defaultShutterSound:Ljava/lang/String;

.field private mIsThirdParty:Z

.field private mIsVolumeCaptureSupported:Z

.field private mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mSettingView:Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundSettingView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mIsVolumeCaptureSupported:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mIsThirdParty:Z

    const-string v0, "on"

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->defaultShutterSound:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addViewEntry()V
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mIsVolumeCaptureSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mSettingView:Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundSettingView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundSettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundSettingView;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mSettingView:Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundSettingView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mSettingView:Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundSettingView;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundSettingView;->setShutterSoundOnClickListener(Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundSettingView$OnShutterSoundClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mSettingView:Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->addSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    return-void
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mIsThirdParty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    return-object v1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_shutter_sound"

    return-object v0
.end method

.method public getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mIsThirdParty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_1

    new-instance v0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundParametersConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundParametersConfig;-><init>(Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundParametersConfig;

    return-object v0
.end method

.method public getSettingType()Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    return-object v0
.end method

.method public getShutterSoundState()Z
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v3}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mIsThirdParty:Z

    :cond_1
    sget-object p1, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraPhotoShutterSoundDefault:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraPhotoShutterSoundDefault:Ljava/lang/String;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->defaultShutterSound:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public initializeValue(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
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

    sget-object v0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue], platformSupportedValues:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", defaultValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mIsVolumeCaptureSupported:Z

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->setSupportedPlatformValues(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->setSupportedEntryValues(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->setEntryValues(Ljava/util/List;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v1}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onShutterSoundClicked(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onShutterSoundClicked], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v2}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
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

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mIsVolumeCaptureSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method public refreshViewEntry()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mSettingView:Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundSettingView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->defaultShutterSound:Ljava/lang/String;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v3}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mSettingView:Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundSettingView;

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundSettingView;->setChecked(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mSettingView:Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundSettingView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundSettingView;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_restore_settings"

    const-string v2, "off"

    const-string v3, "_global_scope"

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mSettingView:Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundSettingView;

    const-string v1, "on"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->defaultShutterSound:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundSettingView;->setChecked(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->defaultShutterSound:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->defaultShutterSound:Ljava/lang/String;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v3}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public removeViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->mSettingView:Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->removeSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method
