.class public Lcom/freeme/camera/feature/setting/iso/ISO;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "ISO.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/iso/ISOSettingView$OnValueChangeListener;


# static fields
.field private static final KEY_ISO:Ljava/lang/String; = "key_iso"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mIsSupported:Z

.field private mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mSettingView:Lcom/freeme/camera/feature/setting/iso/ISOSettingView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/iso/ISO;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/iso/ISO;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mIsSupported:Z

    return-void
.end method


# virtual methods
.method public addViewEntry()V
    .locals 3

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mIsSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mSettingView:Lcom/freeme/camera/feature/setting/iso/ISOSettingView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/freeme/camera/feature/setting/iso/ISOSettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/iso/ISO;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/feature/setting/iso/ISOSettingView;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mSettingView:Lcom/freeme/camera/feature/setting/iso/ISOSettingView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mSettingView:Lcom/freeme/camera/feature/setting/iso/ISOSettingView;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/feature/setting/iso/ISOSettingView;->setOnValueChangeListener(Lcom/freeme/camera/feature/setting/iso/ISOSettingView$OnValueChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mSettingView:Lcom/freeme/camera/feature/setting/iso/ISOSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->addSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    return-void
.end method

.method protected getCameraId()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;-><init>(Lcom/freeme/camera/feature/setting/iso/ISO;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_iso"

    return-object v0
.end method

.method public getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/iso/ISOParametersConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/iso/ISOParametersConfig;-><init>(Lcom/freeme/camera/feature/setting/iso/ISO;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/iso/ISOParametersConfig;

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

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/setting/iso/ISO;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/iso/ISO;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/iso/ISO;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/iso/ISO;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/iso/ISO;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_0
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

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/iso/ISO;->setSupportedPlatformValues(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/iso/ISO;->setSupportedEntryValues(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/iso/ISO;->setEntryValues(Ljava/util/List;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/iso/ISO;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/iso/ISO;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/iso/ISO;->setValue(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mIsSupported:Z

    :cond_0
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method public refreshViewEntry()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mSettingView:Lcom/freeme/camera/feature/setting/iso/ISOSettingView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/iso/ISO;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/iso/ISOSettingView;->setEntryValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mSettingView:Lcom/freeme/camera/feature/setting/iso/ISOSettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/iso/ISO;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/iso/ISOSettingView;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mSettingView:Lcom/freeme/camera/feature/setting/iso/ISOSettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/iso/ISO;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/iso/ISOSettingView;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public removeViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/iso/ISO;->mSettingView:Lcom/freeme/camera/feature/setting/iso/ISOSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->removeSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method
