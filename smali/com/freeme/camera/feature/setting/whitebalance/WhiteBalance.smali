.class public Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "WhiteBalance.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView$OnValueChangeListener;


# static fields
.field private static final DEBUG_MODE_KEY:Ljava/lang/String; = "com.freeme.camera.feature.mode.debug.DebugMode"

.field private static final KEY_WHITE_BALANCE_LOCK:Ljava/lang/String; = "white-balance-lock"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final WHITE_BALANCE_KEY:Ljava/lang/String; = "key_white_balance"


# instance fields
.field private mCurrentValue:Ljava/lang/String;

.field private mIndicatorView:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;

.field private mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mSettingView:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;

.field private mSupportValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;)Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->mSettingView:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceSettingView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;)Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->mIndicatorView:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;

    return-object p0
.end method


# virtual methods
.method public addViewEntry()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addViewEntry] entryValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->getEntryValues()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig;-><init>(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_white_balance"

    return-object v0
.end method

.method public getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;-><init>(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;

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

    sget-object p1, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[init]"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

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

    sget-object v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue], platformSupportedValues:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->setSupportedPlatformValues(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->setSupportedEntryValues(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->setEntryValues(Ljava/util/List;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, p2, v2}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->setValue(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public isNeedLock()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->mCurrentValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "white-balance-lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->mSupportValues:Ljava/util/List;

    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/freeme/camera/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/freeme/camera/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->mIndicatorView:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;->updateIndicator(Ljava/lang/String;)V

    :cond_0
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

    const-string v0, "white-balance-lock"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->mCurrentValue:Ljava/lang/String;

    iput-object p3, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->mSupportValues:Ljava/util/List;

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
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance$1;-><init>(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeViewEntry()V
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method
