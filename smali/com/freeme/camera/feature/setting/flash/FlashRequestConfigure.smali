.class public Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;
.super Ljava/lang/Object;
.source "FlashRequestConfigure.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field mAeState:Ljava/lang/Integer;

.field private mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

.field private mFlashMode:I

.field private mIsFlashSupported:Ljava/lang/Boolean;

.field private mIsPanelFlashSupported:Ljava/lang/Boolean;

.field private mNeedChangeFlashModeToTorch:Z

.field private mPreviewCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/flash/Flash;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mIsPanelFlashSupported:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mIsFlashSupported:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mFlashMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mAeState:Ljava/lang/Integer;

    new-instance v0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure$1;-><init>(Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mPreviewCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->updateAeState(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method private initAppSupportedEntryValues()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mIsFlashSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mIsPanelFlashSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "on"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/flash/Flash;->getCurrentModeType()Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    if-eq v1, v2, :cond_1

    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/flash/Flash;->setSupportedEntryValues(Ljava/util/List;)V

    return-void
.end method

.method private initPlatformSupportedValues()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mIsFlashSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mIsPanelFlashSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "on"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/flash/Flash;->getCurrentModeType()Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    if-eq v1, v2, :cond_1

    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/flash/Flash;->setSupportedPlatformValues(Ljava/util/List;)V

    return-void
.end method

.method private initSettingEntryValues()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "off"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "on"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/flash/Flash;->getCurrentModeType()Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    move-result-object v2

    sget-object v3, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    if-eq v2, v3, :cond_0

    const-string v2, "auto"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/flash/Flash;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/flash/Flash;->setEntryValues(Ljava/util/List;)V

    return-void
.end method

.method private isExternalFlashSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 5

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    sget-object p1, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isExternalFlashSupported] isSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private updateAeState(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    sget-object v0, Landroid/hardware/camera2/TotalCaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    :cond_1
    iput-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mAeState:Ljava/lang/Integer;

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private updateFlashMode()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/flash/Flash;->resetFlashMode()V

    const-string v0, "on"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/flash/Flash;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mNeedChangeFlashModeToTorch:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/flash/Flash;->getCurrentModeType()Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    move-result-object v0

    sget-object v3, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mFlashMode:I

    return-void

    :cond_1
    :goto_0
    iput v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mFlashMode:I

    return-void

    :cond_2
    const-string v0, "auto"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {v3}, Lcom/freeme/camera/feature/setting/flash/Flash;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mNeedChangeFlashModeToTorch:Z

    if-eqz v0, :cond_3

    iput v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mFlashMode:I

    sget-object v0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[updateFlashMode] change flash mode to torch"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_3
    iput v2, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mFlashMode:I

    return-void

    :cond_4
    iput v2, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mFlashMode:I

    return-void
.end method


# virtual methods
.method protected changeFlashToTorchByAeState(Z)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[changeFlashToTorchByAeState] + needChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mAeState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mAeState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mNeedChangeFlashModeToTorch:Z

    sget-object p1, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[changeFlashToTorchByAeState] - mNeedChangeFlashModeToTorch = false"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/flash/Flash;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v1, "on"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mNeedChangeFlashModeToTorch:Z

    :cond_1
    const-string v1, "auto"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mAeState:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    iput-boolean v2, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mNeedChangeFlashModeToTorch:Z

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mNeedChangeFlashModeToTorch:Z

    :cond_3
    :goto_0
    sget-object p1, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[changeFlashToTorchByAeState] + mNeedChangeFlashModeToTorch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mNeedChangeFlashModeToTorch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[configCaptureRequest] captureBuilder is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mIsFlashSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mIsPanelFlashSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->updateFlashMode()V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mFlashMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[configCaptureRequest], mFlashMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mFlashMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public configRawSurface()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public configSessionSurface(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getRepeatingCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mPreviewCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mIsFlashSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mIsPanelFlashSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->createAndChangeRepeatingRequest()V

    :cond_1
    return-void
.end method

.method public setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->isExternalFlashSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/flash/Flash;->isThirdPartyIntent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mIsPanelFlashSupported:Ljava/lang/Boolean;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mIsFlashSupported:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->initPlatformSupportedValues()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->initAppSupportedEntryValues()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->initSettingEntryValues()V

    sget-object p1, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setCameraCharacteristics], mIsPanelFlashSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mIsPanelFlashSupported:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mIsFlashSupported "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->mIsFlashSupported:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
