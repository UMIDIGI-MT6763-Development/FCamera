.class public Lcom/freeme/camera/feature/setting/ais/AIS;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "AIS.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/ais/AISSettingView$OnAisClickListener;


# static fields
.field private static final AIS_OFF:Ljava/lang/String; = "off"

.field private static final AIS_ON:Ljava/lang/String; = "on"

.field private static final KEY_AIS:Ljava/lang/String; = "key_ais"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mOverrideValue:Ljava/lang/String;

.field private mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mSettingView:Lcom/freeme/camera/feature/setting/ais/AISSettingView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/ais/AIS;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/ais/AIS;)Lcom/freeme/camera/feature/setting/ais/AISSettingView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mSettingView:Lcom/freeme/camera/feature/setting/ais/AISSettingView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/freeme/camera/feature/setting/ais/AIS;Lcom/freeme/camera/feature/setting/ais/AISSettingView;)Lcom/freeme/camera/feature/setting/ais/AISSettingView;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mSettingView:Lcom/freeme/camera/feature/setting/ais/AISSettingView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/ais/AIS;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/ais/AIS;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/ais/AIS;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$400()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/ais/AIS;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/ais/AIS;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/setting/ais/AIS;)Lcom/freeme/camera/common/setting/ISettingManager$SettingController;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/setting/ais/AIS;)Lcom/freeme/camera/common/setting/ISettingManager$SettingController;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/setting/ais/AIS;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/setting/ais/AIS;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object p0
.end method


# virtual methods
.method public addViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/ais/AIS$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/ais/AIS$1;-><init>(Lcom/freeme/camera/feature/setting/ais/AIS;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected getCameraId()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;-><init>(Lcom/freeme/camera/feature/setting/ais/AIS;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_ais"

    return-object v0
.end method

.method public getOverrideValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mOverrideValue:Ljava/lang/String;

    return-object v0
.end method

.method public getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/ais/AISParametersConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/ais/AISParametersConfig;-><init>(Lcom/freeme/camera/feature/setting/ais/AIS;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/ais/AISParametersConfig;

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

.method public initializeValue(Ljava/util/List;Ljava/lang/String;)V
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

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/ais/AIS;->setEntryValues(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/ais/AIS;->setSupportedEntryValues(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/ais/AIS;->setSupportedPlatformValues(Ljava/util/List;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/ais/AIS;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/ais/AIS;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/ais/AIS;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAisClicked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/freeme/camera/feature/setting/ais/AIS$3;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/feature/setting/ais/AIS$3;-><init>(Lcom/freeme/camera/feature/setting/ais/AIS;Z)V

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

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mOverrideValue:Ljava/lang/String;

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/setting/ais/AISRestriction;->getRestrictionGroup()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/ais/AIS;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    :cond_0
    return-void
.end method

.method public refreshViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/ais/AIS$2;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/ais/AIS$2;-><init>(Lcom/freeme/camera/feature/setting/ais/AIS;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ais/AIS;->mSettingView:Lcom/freeme/camera/feature/setting/ais/AISSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->removeSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method
