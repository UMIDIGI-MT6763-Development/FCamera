.class public Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "NoiseReduction.java"


# static fields
.field private static final KEY_NOISE_REDUCTION:Ljava/lang/String; = "key_noise_reduction"

.field private static final NOISE_REDUCTION_OFF:Ljava/lang/String; = "off"

.field private static final NOISE_REDUCTION_ON:Ljava/lang/String; = "on"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mIsSupported:Z

.field private mNoiseReductionViewListener:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionSettingView$OnNoiseReductionViewListener;

.field private mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mSettingView:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionSettingView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->mIsSupported:Z

    new-instance v0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$3;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$3;-><init>(Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->mNoiseReductionViewListener:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionSettingView$OnNoiseReductionViewListener;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;)Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionSettingView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->mSettingView:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionSettingView;

    return-object p0
.end method

.method static synthetic access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method


# virtual methods
.method public addViewEntry()V
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->mIsSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$1;-><init>(Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;-><init>(Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_noise_reduction"

    return-object v0
.end method

.method public getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionParametersConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionParametersConfig;-><init>(Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionParametersConfig;

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

    sget-object p1, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[init] "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
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

    sget-object v0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues] + headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",currentValue = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",supportValues "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ,getValue "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method public refreshViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$2;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$2;-><init>(Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeViewEntry()V
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[uninit] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateIsSupported(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->mIsSupported:Z

    sget-object p1, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateIsSupported] mIsSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->mIsSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateValue(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->setValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$4;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$4;-><init>(Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
