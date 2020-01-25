.class public Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "AntiFlicker.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView$OnValueChangeListener;


# static fields
.field private static final KEY_ANTI_FLICKER:Ljava/lang/String; = "key_anti_flicker"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private defaultAntiFlicker:Ljava/lang/String;

.field private mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mSettingView:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    const-string v0, "auto"

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->defaultAntiFlicker:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;)Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->mSettingView:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->defaultAntiFlicker:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object p0
.end method

.method static synthetic access$600()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method


# virtual methods
.method public addViewEntry()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->mSettingView:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->mSettingView:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->mSettingView:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;->setOnValueChangeListener(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView$OnValueChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->mSettingView:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->addSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    return-void
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig;-><init>(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_anti_flicker"

    return-object v0
.end method

.method public getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerParametersConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerParametersConfig;-><init>(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerParametersConfig;

    return-object v0
.end method

.method public getSettingType()Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    sget-object p1, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraAntibandingDefault:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraAntibandingDefault:Ljava/lang/String;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->defaultAntiFlicker:Ljava/lang/String;

    :cond_0
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

    sget-object v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue], platformSupportedValues:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "default value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->setSupportedPlatformValues(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->setSupportedEntryValues(Ljava/util/List;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p2}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->setEntryValues(Ljava/util/List;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->defaultAntiFlicker:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->setValue(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$2;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$2;-><init>(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
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

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method public refreshViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker$1;-><init>(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->mSettingView:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->removeSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method
