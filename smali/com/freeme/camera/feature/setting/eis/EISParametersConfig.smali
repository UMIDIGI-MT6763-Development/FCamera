.class public Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;
.super Ljava/lang/Object;
.source "EISParametersConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final BACK_CAMERA_ID:Ljava/lang/String; = "0"

.field private static final CAMERA_MODE_MTK_VDO:I = 0x2

.field private static final EIS_OFF:Ljava/lang/String; = "off"

.field private static final EIS_ON:Ljava/lang/String; = "on"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

.field private mEIS:Lcom/freeme/camera/feature/setting/eis/EIS;

.field private mIsSupported:Z

.field private mOldValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/eis/EIS;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;->mIsSupported:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;->mOldValue:Z

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;->mEIS:Lcom/freeme/camera/feature/setting/eis/EIS;

    iput-object p3, p0, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private updateSupportedValues(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "on"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;->mEIS:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/eis/EIS;->setSupportedPlatformValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;->mEIS:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/eis/EIS;->setEntryValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;->mEIS:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/eis/EIS;->setSupportedEntryValues(Ljava/util/List;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;->mIsSupported:Z

    :cond_0
    sget-object p1, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateSupportedValues] mIsSupported : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;->mIsSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Landroid/hardware/Camera$Parameters;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;->mIsSupported:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParameters] eis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;->mEIS:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/eis/EIS;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v0, "on"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;->mEIS:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/eis/EIS;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;->mEIS:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/eis/EIS;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    :cond_0
    iget-boolean p1, p0, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;->mOldValue:Z

    if-eq p1, v0, :cond_1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;->mOldValue:Z

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;->mEIS:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/eis/EIS;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setOriginalParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;->updateSupportedValues(Landroid/hardware/Camera$Parameters;)V

    iget-boolean p1, p0, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;->mIsSupported:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;->mEIS:Lcom/freeme/camera/feature/setting/eis/EIS;

    const-string v0, "off"

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/eis/EIS;->updateValue(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/eis/EISParametersConfig;->mOldValue:Z

    :cond_0
    return-void
.end method
