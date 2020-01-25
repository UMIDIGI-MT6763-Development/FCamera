.class public Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerParametersConfig;
.super Ljava/lang/Object;
.source "AntiFlickerParametersConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final DEFAULT_VALUE:Ljava/lang/String; = "auto"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mAntiFlicker:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

.field private mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerParametersConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerParametersConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerParametersConfig;->mAntiFlicker:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Landroid/hardware/Camera$Parameters;)Z
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerParametersConfig;->mAntiFlicker:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerParametersConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters], value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerParametersConfig;->mAntiFlicker:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setOriginalParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerParametersConfig;->mAntiFlicker:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;

    const-string v1, "auto"

    invoke-virtual {v0, p1, v1}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlicker;->initializeValue(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
