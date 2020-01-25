.class Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedParametersConfig;
.super Ljava/lang/Object;
.source "ShutterSpeedParametersConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final KEY_EXPOSURE_TIME:Ljava/lang/String; = "exposure-time"

.field private static final S_TO_MS:I = 0x3e8

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

.field private mIsSupported:Z

.field private mShutterSpeed:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedParametersConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedParametersConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedParametersConfig;->mIsSupported:Z

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedParametersConfig;->mShutterSpeed:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Landroid/hardware/Camera$Parameters;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedParametersConfig;->mIsSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedParametersConfig;->mShutterSpeed:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "Auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "exposure-time"

    const-string v2, "Auto"

    invoke-virtual {p1, v0, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "exposure-time"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return v1
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedParametersConfig;->mShutterSpeed:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setOriginalParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedHelper;->isShutterSpeedSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedParametersConfig;->mIsSupported:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedParametersConfig;->mShutterSpeed:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedHelper;->getSupportedList(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object p1

    const-string v1, "1"

    invoke-virtual {v0, p1, v1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->onValueInitialized(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
