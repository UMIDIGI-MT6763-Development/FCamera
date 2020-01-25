.class public Lcom/freeme/camera/feature/setting/microphone/MicroPhone;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "MicroPhone.java"


# static fields
.field private static final KEY_MICRO:Ljava/lang/String; = "key_microphone"

.field private static final MICROPHONE_OFF:Ljava/lang/String; = "off"

.field private static final MICROPHONE_ON:Ljava/lang/String; = "on"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mMicroViewListener:Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView$OnMicroViewListener;

.field private mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mSettingView:Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    new-instance v0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone$1;-><init>(Lcom/freeme/camera/feature/setting/microphone/MicroPhone;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->mMicroViewListener:Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView$OnMicroViewListener;

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/microphone/MicroPhone;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/microphone/MicroPhone;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/microphone/MicroPhone;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/microphone/MicroPhone;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method


# virtual methods
.method public addViewEntry()V
    .locals 0

    return-void
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneCaptureRequestConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneCaptureRequestConfig;-><init>(Lcom/freeme/camera/feature/setting/microphone/MicroPhone;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneCaptureRequestConfig;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_microphone"

    return-object v0
.end method

.method public getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneParametersConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneParametersConfig;-><init>(Lcom/freeme/camera/feature/setting/microphone/MicroPhone;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneParametersConfig;

    return-object v0
.end method

.method public getSettingType()Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    new-instance p1, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView;

    invoke-direct {p1}, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->mSettingView:Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->mSettingView:Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->mMicroViewListener:Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView$OnMicroViewListener;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView;->setMicroViewListener(Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView$OnMicroViewListener;)V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method public refreshViewEntry()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->mSettingView:Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView;

    if-eqz v0, :cond_1

    const-string v1, "on"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView;->setChecked(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->mSettingView:Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneSettingView;->setEnabled(Z)V

    :cond_1
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

.method public updateValue(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->setValue(Ljava/lang/String;)V

    return-void
.end method
