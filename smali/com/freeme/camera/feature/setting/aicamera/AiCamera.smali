.class public Lcom/freeme/camera/feature/setting/aicamera/AiCamera;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "AiCamera.java"


# static fields
.field private static final AICAMERA_DEFAULT_TIP_VALUE:Ljava/lang/String; = "on"

.field private static final AICAMERA_DEFAULT_VALUE:Ljava/lang/String; = "off"

.field private static final AICAMERA_KEY:Ljava/lang/String; = "key_camera_ai"

.field private static final AICAMERA_OFF_VALUE:Ljava/lang/String; = "off"

.field private static final AICAMERA_ON_VALUE:Ljava/lang/String; = "on"

.field private static final AICAMERA_TIP_KEY:Ljava/lang/String; = "key_camera_ai_tip"

.field private static final CAMERA_BACK_ID:Ljava/lang/String; = "0"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field public isSettingRestore:Ljava/lang/Boolean;

.field private mAiCameraViewController:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mCameraId:Ljava/lang/String;

.field private mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

.field public tip_status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->isSettingRestore:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/aicamera/AiCamera;)Lcom/freeme/camera/common/setting/ISettingManager$SettingController;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/aicamera/AiCamera;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/aicamera/AiCamera;)Lcom/freeme/camera/common/setting/ISettingManager$SettingController;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    return-object p0
.end method


# virtual methods
.method public addViewEntry()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[addViewEntry]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->updateSupportedValues()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mAiCameraViewController:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->showQuickSwitchIcon(Z)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mAiCameraViewController:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->addQuickSwitchIcon()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mAiCameraViewController:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->removeQuickSwitchIcon()V

    :goto_1
    return-void
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentModeType()Lcom/freeme/camera/common/mode/ICameraMode$ModeType;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_camera_ai"

    return-object v0
.end method

.method public getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettingType()Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    return-object v0
.end method

.method public getStoreScope()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v0}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    sget-object p2, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p3, "init"

    invoke-static {p2, p3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string p3, "key_camera_ai"

    const-string v0, "off"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v0, v1}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v0, "key_camera_ai_tip"

    const-string v1, "on"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v0, v1, v2}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->tip_status:Ljava/lang/String;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p3

    invoke-interface {p3}, Lcom/freeme/camera/common/IAppUi;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mCameraId:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->updateSupportedValues()V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mAiCameraViewController:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    if-nez p2, :cond_0

    new-instance p2, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    invoke-direct {p2, p1, p0}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;-><init>(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/feature/setting/aicamera/AiCamera;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mAiCameraViewController:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    :cond_0
    return-void
.end method

.method public onAiCameraValueChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/freeme/camera/feature/setting/aicamera/AiCamera$1;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/feature/setting/aicamera/AiCamera$1;-><init>(Lcom/freeme/camera/feature/setting/aicamera/AiCamera;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAutoDetectionResult(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mAiCameraViewController:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->showAiCameraIndicator(Z)V

    return-void
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/freeme/camera/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V
    .locals 0

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/setting/aicamera/AICameraRestriction;->getRestrictionGroup()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    :cond_0
    return-void
.end method

.method public refreshViewEntry()V
    .locals 5

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mAiCameraViewController:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->showQuickSwitchIcon(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mAiCameraViewController:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->showQuickSwitchIcon(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mAiCameraViewController:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->refreshQuickSwitchIcon()V

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v2, "key_camera_ai_tip"

    const-string v3, "on"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->tip_status:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v2, "key_restore_settings"

    const-string v3, "off"

    const-string v4, "_global_scope"

    invoke-virtual {v0, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->isSettingRestore:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_camera_ai"

    const-string v2, "off"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "off"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->setValue(Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshViewEntry, value  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public removeViewEntry()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[removeViewEntry]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mAiCameraViewController:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->removeQuickSwitchIcon()V

    return-void
.end method

.method public unInit()V
    .locals 7

    sget-object v0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mAiCameraViewController:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->hideAiCameraTipDialog()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mAiCameraViewController:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->cancelAicameraStartOn()V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v2, "key_camera_ai"

    const-string v3, "off"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public updateAiCameraTipStauts(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_camera_ai_tip"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public updateModeDeviceState(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateSupportedValues()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "0"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "on"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->setSupportedPlatformValues(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->setEntryValues(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->setSupportedEntryValues(Ljava/util/List;)V

    return-void
.end method
