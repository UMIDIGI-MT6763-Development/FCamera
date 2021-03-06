.class public Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;
.super Ljava/lang/Object;
.source "WhiteBalanceParametersConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

.field private mValue:Ljava/lang/String;

.field private mWhiteBalance:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;->mWhiteBalance:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Landroid/hardware/Camera$Parameters;)Z
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;->mWhiteBalance:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters], value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isNeedLock = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;->mWhiteBalance:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;

    invoke-virtual {v3}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->isNeedLock()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;->mWhiteBalance:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->isNeedLock()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;->mWhiteBalance:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setOriginalParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;->mWhiteBalance:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalance;->initializeValue(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
