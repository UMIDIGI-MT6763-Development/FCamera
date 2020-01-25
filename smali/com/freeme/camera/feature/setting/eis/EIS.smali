.class public Lcom/freeme/camera/feature/setting/eis/EIS;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "EIS.java"


# static fields
.field private static final EIS_OFF:Ljava/lang/String; = "off"

.field private static final EIS_ON:Ljava/lang/String; = "on"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private defaultEIS:Ljava/lang/String;

.field private mEISViewListener:Lcom/freeme/camera/feature/setting/eis/EISSettingView$OnEISViewListener;

.field private mIsSupported:Z

.field private mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mSettingView:Lcom/freeme/camera/feature/setting/eis/EISSettingView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/eis/EIS;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mIsSupported:Z

    const-string v0, "off"

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->defaultEIS:Ljava/lang/String;

    new-instance v0, Lcom/freeme/camera/feature/setting/eis/EIS$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/eis/EIS$2;-><init>(Lcom/freeme/camera/feature/setting/eis/EIS;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mEISViewListener:Lcom/freeme/camera/feature/setting/eis/EISSettingView$OnEISViewListener;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/eis/EIS;)Lcom/freeme/camera/feature/setting/eis/EISSettingView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mSettingView:Lcom/freeme/camera/feature/setting/eis/EISSettingView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/eis/EIS;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/setting/eis/EIS;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/eis/EIS;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->defaultEIS:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/eis/EIS;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/eis/EIS;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/eis/EIS;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object p0
.end method

.method static synthetic access$600()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/eis/EIS;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/setting/eis/EIS;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/setting/eis/EIS;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/setting/eis/EIS;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method


# virtual methods
.method public addViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mSettingView:Lcom/freeme/camera/feature/setting/eis/EISSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->addSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    :cond_1
    return-void
.end method

.method protected getCameraId()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;-><init>(Lcom/freeme/camera/feature/setting/eis/EIS;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;

    return-object v0
.end method

.method public getCurrentCameraId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_eis"

    return-object v0
.end method

.method public getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, v2}, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;-><init>(Lcom/freeme/camera/feature/setting/eis/EIS;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;

    return-object v0
.end method

.method public getSettingType()Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/eis/EIS;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string p3, "off"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/eis/EIS;->getStoreScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/eis/EIS;->setValue(Ljava/lang/String;)V

    new-instance p1, Lcom/freeme/camera/feature/setting/eis/EISSettingView;

    invoke-direct {p1}, Lcom/freeme/camera/feature/setting/eis/EISSettingView;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mSettingView:Lcom/freeme/camera/feature/setting/eis/EISSettingView;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mSettingView:Lcom/freeme/camera/feature/setting/eis/EISSettingView;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mEISViewListener:Lcom/freeme/camera/feature/setting/eis/EISSettingView$OnEISViewListener;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/eis/EISSettingView;->setEISViewListener(Lcom/freeme/camera/feature/setting/eis/EISSettingView$OnEISViewListener;)V

    sget-object p1, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraEISDefault:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraEISDefault:Ljava/lang/String;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->defaultEIS:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method public refreshViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/eis/EIS$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/eis/EIS$1;-><init>(Lcom/freeme/camera/feature/setting/eis/EIS;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mSettingView:Lcom/freeme/camera/feature/setting/eis/EISSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->removeSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method

.method public updateValue(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/eis/EIS$3;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/feature/setting/eis/EIS$3;-><init>(Lcom/freeme/camera/feature/setting/eis/EIS;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
