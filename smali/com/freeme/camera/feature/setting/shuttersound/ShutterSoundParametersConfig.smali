.class public Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundParametersConfig;
.super Ljava/lang/Object;
.source "ShutterSoundParametersConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final VALUE_OFF:Ljava/lang/String; = "off"

.field private static final VALUE_ON:Ljava/lang/String; = "on"


# instance fields
.field private mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

.field private mShutterSound:Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundParametersConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundParametersConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundParametersConfig;->mShutterSound:Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundParametersConfig;->mShutterSound:Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->getShutterSoundState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->enableShutterSound(Z)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->enableShutterSound(Z)Z

    :goto_0
    return-void
.end method

.method public configParameters(Landroid/hardware/Camera$Parameters;)Z
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundParametersConfig;->mShutterSound:Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->getValue()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundParametersConfig;->mShutterSound:Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->getValue()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundParametersConfig;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundParametersConfig;->mShutterSound:Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundParametersConfig;->mValue:Ljava/lang/String;

    return p1
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundParametersConfig;->mShutterSound:Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundParametersConfig;->mShutterSound:Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public setOriginalParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "on"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSoundParametersConfig;->mShutterSound:Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;

    invoke-virtual {v1, p1, v0}, Lcom/freeme/camera/feature/setting/shuttersound/ShutterSound;->initializeValue(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
