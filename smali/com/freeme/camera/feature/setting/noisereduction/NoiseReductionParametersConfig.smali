.class public Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionParametersConfig;
.super Ljava/lang/Object;
.source "NoiseReductionParametersConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final KEY_3DNR_MODE:Ljava/lang/String; = "3dnr-mode"

.field private static final KEY_3DNR_MODE_KEY:Ljava/lang/String; = "3dnr-mode-values"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

.field private mIsSupported:Z

.field private mNoiseReduction:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionParametersConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionParametersConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionParametersConfig;->mIsSupported:Z

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionParametersConfig;->mNoiseReduction:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private static getSupported3DNRValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "3dnr-mode-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionParametersConfig;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-interface {v0, p0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method private updateSupportedValues(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionParametersConfig;->getSupported3DNRValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionParametersConfig;->mNoiseReduction:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->setSupportedPlatformValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionParametersConfig;->mNoiseReduction:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->setEntryValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionParametersConfig;->mNoiseReduction:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->setSupportedEntryValues(Ljava/util/List;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionParametersConfig;->mIsSupported:Z

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionParametersConfig;->mNoiseReduction:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionParametersConfig;->mIsSupported:Z

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->updateIsSupported(Z)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Landroid/hardware/Camera$Parameters;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionParametersConfig;->mIsSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionParametersConfig;->mNoiseReduction:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionParametersConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters] value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v1, "3dnr-mode"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionParametersConfig;->mNoiseReduction:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setOriginalParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionParametersConfig;->updateSupportedValues(Landroid/hardware/Camera$Parameters;)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionParametersConfig;->mIsSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionParametersConfig;->mNoiseReduction:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;

    const-string v1, "3dnr-mode"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->updateValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
