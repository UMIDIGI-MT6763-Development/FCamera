.class public Lcom/freeme/camera/feature/setting/microphone/MicroPhoneParametersConfig;
.super Ljava/lang/Object;
.source "MicroPhoneParametersConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final MICROPHONE_OFF:Ljava/lang/String; = "off"

.field private static final MICROPHONE_ON:Ljava/lang/String; = "on"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

.field private mMicroPhone:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneParametersConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneParametersConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/microphone/MicroPhone;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneParametersConfig;->mMicroPhone:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private updateSupportedValues()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "on"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneParametersConfig;->mMicroPhone:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->setSupportedPlatformValues(Ljava/util/List;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneParametersConfig;->mMicroPhone:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->setEntryValues(Ljava/util/List;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneParametersConfig;->mMicroPhone:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->setSupportedEntryValues(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Landroid/hardware/Camera$Parameters;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneParametersConfig;->mMicroPhone:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setOriginalParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    sget-object p1, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneParametersConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "setOriginalParameters"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneParametersConfig;->updateSupportedValues()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhoneParametersConfig;->mMicroPhone:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;

    const-string v0, "on"

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->updateValue(Ljava/lang/String;)V

    return-void
.end method
