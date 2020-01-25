.class public Lcom/freeme/camera/feature/setting/hdr/Hdr;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "Hdr.java"


# static fields
.field private static final HDR_AUTO_VALUE:Ljava/lang/String; = "auto"

.field private static final HDR_DEFAULT_VALUE:Ljava/lang/String; = "off"

.field private static final HDR_KEY:Ljava/lang/String; = "key_hdr"

.field private static final HDR_ON_VALUE:Ljava/lang/String; = "on"

.field private static final KEY_CAMERA_ID:Ljava/lang/String; = "key_camera_id"

.field private static final KEY_CSHOT:Ljava/lang/String; = "key_continuous_shot"

.field private static final KEY_DNG:Ljava/lang/String; = "key_dng"

.field private static final KEY_FLASH:Ljava/lang/String; = "key_flash"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mHdrDeviceListener:Lcom/freeme/camera/feature/setting/hdr/IHdr$Listener;

.field private mHdrParameterConfigure:Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;

.field private mHdrRequestConfigure:Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;

.field private mHdrViewController:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

.field private mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

.field private mPreviewStateCallback:Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mHdrDeviceListener:Lcom/freeme/camera/feature/setting/hdr/IHdr$Listener;

    new-instance v0, Lcom/freeme/camera/feature/setting/hdr/Hdr$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/hdr/Hdr$2;-><init>(Lcom/freeme/camera/feature/setting/hdr/Hdr;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mPreviewStateCallback:Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/hdr/Hdr;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->removeExclusionOverrides()V

    return-void
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/hdr/Hdr;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->handleHdrRestriction(ZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/hdr/Hdr;)Lcom/freeme/camera/common/setting/ISettingManager$SettingController;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/hdr/Hdr;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/hdr/Hdr;)Lcom/freeme/camera/feature/setting/hdr/IHdr$Listener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mHdrDeviceListener:Lcom/freeme/camera/feature/setting/hdr/IHdr$Listener;

    return-object p0
.end method

.method private handleHdrRestriction(ZZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction;->getHdrRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const-string p2, "key_dng"

    invoke-virtual {p1, p2}, Lcom/freeme/camera/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    :cond_1
    const-string p2, "on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "auto"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    iget-object p2, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mHdrDeviceListener:Lcom/freeme/camera/feature/setting/hdr/IHdr$Listener;

    invoke-interface {p2}, Lcom/freeme/camera/feature/setting/hdr/IHdr$Listener;->isZsdHdrSupported()Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "key_zsd"

    const-string v0, "off"

    const-string v1, "off"

    invoke-virtual {p1, p2, v0, v1}, Lcom/freeme/camera/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object p2, Lcom/freeme/camera/feature/setting/hdr/Hdr;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[postRestriction] hdr"

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {p2, p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    return-void
.end method

.method private removeExclusionOverrides()V
    .locals 1

    const-string v0, "key_dng"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->removeOverride(Ljava/lang/String;)V

    const-string v0, "key_flash"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->removeOverride(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addViewEntry()V
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[addViewEntry]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mHdrViewController:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->showQuickSwitchIcon(Z)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mHdrViewController:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->addQuickSwitchIcon()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0, v3}, Lcom/freeme/camera/common/app/IApp;->setHdrSupported(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mHdrViewController:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->removeQuickSwitchIcon()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0, v2}, Lcom/freeme/camera/common/app/IApp;->setHdrSupported(Z)V

    :goto_1
    return-void
.end method

.method public geCurrentCameraId()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_camera_id"

    const-string v2, "0"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v3}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mHdrRequestConfigure:Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;-><init>(Lcom/freeme/camera/feature/setting/hdr/Hdr;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;Landroid/content/Context;Lcom/freeme/camera/common/app/IApp;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mHdrRequestConfigure:Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mHdrRequestConfigure:Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mHdrDeviceListener:Lcom/freeme/camera/feature/setting/hdr/IHdr$Listener;

    return-object v0
.end method

.method public getCurrentModeType()Lcom/freeme/camera/common/mode/ICameraMode$ModeType;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_hdr"

    return-object v0
.end method

.method public getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mHdrParameterConfigure:Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;-><init>(Lcom/freeme/camera/feature/setting/hdr/Hdr;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mHdrParameterConfigure:Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mHdrParameterConfigure:Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mHdrDeviceListener:Lcom/freeme/camera/feature/setting/hdr/IHdr$Listener;

    return-object v0
.end method

.method public getPreviewStateCallback()Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mPreviewStateCallback:Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;

    return-object v0
.end method

.method public getSettingType()Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    return-object v0
.end method

.method public getStoreScope()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v0}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    sget-object p2, Lcom/freeme/camera/feature/setting/hdr/Hdr;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p3, "init"

    invoke-static {p2, p3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string p3, "key_hdr"

    const-string v0, "off"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v0, v1}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->setValue(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mHdrViewController:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    if-nez p2, :cond_0

    new-instance p2, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-direct {p2, p1, p0}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;-><init>(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/feature/setting/hdr/Hdr;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mHdrViewController:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    :cond_0
    return-void
.end method

.method public onAutoDetectionResult(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mHdrViewController:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->showHdrIndicator(Z)V

    return-void
.end method

.method public onHdrValueChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/freeme/camera/feature/setting/hdr/Hdr$1;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/feature/setting/hdr/Hdr$1;-><init>(Lcom/freeme/camera/feature/setting/hdr/Hdr;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/freeme/camera/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mHdrViewController:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->closeHdrChoiceView()V

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V
    .locals 0

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
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

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/Hdr;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[overrideValues] headerKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", currentValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",supportValues = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v1, "key_flash"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->onHdrValueChanged(Ljava/lang/String;)V

    :cond_0
    const-string v1, "key_flash"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "key_continuous_shot"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    invoke-direct {p0, p2, p2}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->handleHdrRestriction(ZZ)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->handleHdrRestriction(ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->handleHdrRestriction(ZZ)V

    :cond_0
    return-void
.end method

.method public refreshViewEntry()V
    .locals 4

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/Hdr;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshViewEntry, entry num = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mHdrViewController:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->showQuickSwitchIcon(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mHdrViewController:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->showQuickSwitchIcon(Z)V

    :goto_0
    return-void
.end method

.method public removeViewEntry()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[removeViewEntry]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mHdrViewController:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->closeHdrChoiceView()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mHdrViewController:Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->removeQuickSwitchIcon()V

    return-void
.end method

.method public resetRestriction()V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction;->getHdrRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v0

    const-string v1, "off"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/Hdr;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[resetRestriction] hdr"

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateModeDeviceState(Ljava/lang/String;)V
    .locals 2

    const-string v0, "opened"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mHdrDeviceListener:Lcom/freeme/camera/feature/setting/hdr/IHdr$Listener;

    invoke-interface {v1, v0}, Lcom/freeme/camera/feature/setting/hdr/IHdr$Listener;->setCameraId(I)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/Hdr;->mHdrDeviceListener:Lcom/freeme/camera/feature/setting/hdr/IHdr$Listener;

    invoke-interface {v0, p1}, Lcom/freeme/camera/feature/setting/hdr/IHdr$Listener;->updateModeDeviceState(Ljava/lang/String;)V

    return-void
.end method
