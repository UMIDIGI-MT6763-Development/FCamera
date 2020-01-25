.class public Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;
.super Ljava/lang/Object;
.source "ExposureParameterConfigure.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
.implements Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mAeLock:Z

.field private mAeLockSupported:Z

.field private mCurrentEv:I

.field private mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

.field private final mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

.field protected mExposureCompensationStep:F

.field protected mMaxExposureCompensation:I

.field protected mMinExposureCompensation:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/exposure/Exposure;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mCurrentEv:I

    iput v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mMinExposureCompensation:I

    iput v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mMaxExposureCompensation:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mExposureCompensationStep:F

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private buildExposureCompensation()V
    .locals 5

    iget v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mMaxExposureCompensation:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mMinExposureCompensation:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[buildExposureCompensation] + exposure compensation range ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mMinExposureCompensation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mMaxExposureCompensation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "),with step "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mExposureCompensationStep:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mMaxExposureCompensation:I

    int-to-float v0, v0

    iget v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mExposureCompensationStep:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mMinExposureCompensation:I

    int-to-float v1, v1

    iget v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mExposureCompensationStep:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt v1, v0, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->initPlatformSupportedValues(Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    sub-int v4, v0, v3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->initExposureCompensation([I)V

    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[buildExposureCompensation] - values = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private initPlatformSupportedValues(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mCurrentEv:I

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->setSupportedPlatformValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->setSupportedEntryValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->setEntryValues(Ljava/util/List;)V

    return-void
.end method

.method private updateCapabilities(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[updateCapabilities] characteristics is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mAeLockSupported:Z

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mMaxExposureCompensation:I

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mMinExposureCompensation:I

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mExposureCompensationStep:F

    return-void
.end method


# virtual methods
.method public checkTodoCapturAfterAeConverted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public configCommand(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Landroid/hardware/Camera$Parameters;)Z
    .locals 4

    iget v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mExposureCompensationStep:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mCurrentEv:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v0, v1

    sget-object v1, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters] exposureCompensationIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mAeLockSupported:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParameters] setAutoExposureLock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mAeLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mAeLock:Z

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getAeLock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mAeLock:Z

    return v0
.end method

.method public needConsiderAePretrigger()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public overrideExposureValue(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mMinExposureCompensation:I

    if-lt p1, p2, :cond_0

    iget p2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mMaxExposureCompensation:I

    if-gt p1, p2, :cond_0

    iput p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mCurrentEv:I

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[overrideExposureValue] invalid exposure range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAeLock(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mAeLockSupported:Z

    if-nez v0, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[setAeLock] not fail, AE lock not supported"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mAeLock:Z

    return-void
.end method

.method public setOriginalParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->updateCapabilities(Landroid/hardware/Camera$Parameters;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->buildExposureCompensation()V

    return-void
.end method

.method public updateEv(I)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateEv] + value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mMinExposureCompensation:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mMaxExposureCompensation:I

    if-gt p1, v0, :cond_1

    iget v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mCurrentEv:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mCurrentEv:I

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    iget v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mCurrentEv:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->setValue(Ljava/lang/String;)V

    :cond_0
    sget-object p1, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateEv] - mCurrentEv "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->mCurrentEv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateEv] - invalid exposure range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
