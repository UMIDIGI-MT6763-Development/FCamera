.class public Lcom/freeme/camera/feature/setting/zsd/ZSD;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "ZSD.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView$OnZsdClickListener;


# static fields
.field private static final KEY_ZSD:Ljava/lang/String; = "key_zsd"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final VALUE_OFF:Ljava/lang/String; = "off"

.field private static final VALUE_ON:Ljava/lang/String; = "on"


# instance fields
.field private mIsThirdParty:Z

.field private mIsZsdSupported:Z

.field private mKeyEventListener:Lcom/freeme/camera/common/app/IApp$KeyEventListener;

.field private mSessionValue:Z

.field private mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mSettingView:Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/zsd/ZSD;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mSessionValue:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mIsZsdSupported:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mIsThirdParty:Z

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/zsd/ZSD;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object p0
.end method

.method private getDefaultZSD()Ljava/lang/String;
    .locals 2

    const-string v0, "off"

    sget-object v1, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraZSDDefault:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraZSDDefault:Ljava/lang/String;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addViewEntry()V
    .locals 3

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mIsZsdSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mSettingView:Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mSettingView:Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mSettingView:Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;->setZsdOnClickListener(Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView$OnZsdClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mSettingView:Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;->getKeyEventListener()Lcom/freeme/camera/common/app/IApp$KeyEventListener;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mKeyEventListener:Lcom/freeme/camera/common/app/IApp$KeyEventListener;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mKeyEventListener:Lcom/freeme/camera/common/app/IApp$KeyEventListener;

    const v2, 0x7fffffff

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/app/IApp;->registerKeyEventListener(Lcom/freeme/camera/common/app/IApp$KeyEventListener;I)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mSettingView:Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->addSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    return-void
.end method

.method protected getCameraId()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 3

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mIsThirdParty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_1

    new-instance v0, Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;-><init>(Lcom/freeme/camera/feature/setting/zsd/ZSD;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_zsd"

    return-object v0
.end method

.method public getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mIsThirdParty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_1

    new-instance v0, Lcom/freeme/camera/feature/setting/zsd/ZSDParametersConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/zsd/ZSDParametersConfig;-><init>(Lcom/freeme/camera/feature/setting/zsd/ZSD;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/zsd/ZSDParametersConfig;

    return-object v0
.end method

.method public getSettingType()Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mActivity:Landroid/app/Activity;

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
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mIsThirdParty:Z

    :cond_1
    const-string p1, "off"

    sget-object p2, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraZSDDefault:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p1, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraZSDDefault:Ljava/lang/String;

    :cond_2
    iget-object p2, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->getStoreScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, p1, v0}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->setValue(Ljava/lang/String;)V

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

    sget-object v0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iput-boolean v1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mIsZsdSupported:Z

    const-string v0, "on"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mSessionValue:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mSessionValue:Z

    :goto_0
    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->setSupportedPlatformValues(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->setSupportedEntryValues(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->setEntryValues(Ljava/util/List;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->setValue(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public isSessionOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mSessionValue:Z

    return v0
.end method

.method public isZsdSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mIsZsdSupported:Z

    return v0
.end method

.method public onZsdClicked(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onZsdClicked], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->setValue(Ljava/lang/String;)V

    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mSessionValue:Z

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mSessionValue:Z

    :goto_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/freeme/camera/feature/setting/zsd/ZSD$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/zsd/ZSD$1;-><init>(Lcom/freeme/camera/feature/setting/zsd/ZSD;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mIsZsdSupported:Z

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
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mSettingView:Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->getDefaultZSD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mSettingView:Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;->setChecked(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mSettingView:Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_restore_settings"

    const-string v2, "off"

    const-string v3, "_global_scope"

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_1
    return-void
.end method

.method public removeViewEntry()V
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mIsZsdSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mSettingView:Lcom/freeme/camera/feature/setting/zsd/ZSDSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->removeSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mKeyEventListener:Lcom/freeme/camera/common/app/IApp$KeyEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSD;->mKeyEventListener:Lcom/freeme/camera/common/app/IApp$KeyEventListener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/app/IApp;->unRegisterKeyEventListener(Lcom/freeme/camera/common/app/IApp$KeyEventListener;)V

    :cond_0
    return-void
.end method
