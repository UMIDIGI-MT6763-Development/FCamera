.class public Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;
.super Ljava/lang/Object;
.source "FlashParameterConfigure.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final FLASH_TORCH_VALUE:Ljava/lang/String; = "torch"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

.field private mIsSupportedFlash:Z

.field private mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/flash/Flash;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;->mIsSupportedFlash:Z

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private initAppSupportedEntryValues()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "on"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/flash/Flash;->setSupportedEntryValues(Ljava/util/List;)V

    return-void
.end method

.method private initPlatformSupportedValues(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;->mIsSupportedFlash:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;->mIsSupportedFlash:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/flash/Flash;->setSupportedPlatformValues(Ljava/util/List;)V

    return-void
.end method

.method private initSettingEntryValues()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "off"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "on"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "auto"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/flash/Flash;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/flash/Flash;->setEntryValues(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Landroid/hardware/Camera$Parameters;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;->mIsSupportedFlash:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/flash/Flash;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/flash/Flash;->getCurrentModeType()Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    if-ne v1, v2, :cond_0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "torch"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object p1, Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[configParameters], value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/flash/Flash;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/flash/Flash;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setOriginalParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;->initPlatformSupportedValues(Landroid/hardware/Camera$Parameters;)V

    iget-boolean p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;->mIsSupportedFlash:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;->initAppSupportedEntryValues()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;->initSettingEntryValues()V

    :cond_0
    sget-object p1, Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setOriginalParameters], support = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashParameterConfigure;->mIsSupportedFlash:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
