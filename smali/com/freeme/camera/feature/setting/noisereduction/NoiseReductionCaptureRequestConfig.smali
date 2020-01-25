.class public Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;
.super Ljava/lang/Object;
.source "NoiseReductionCaptureRequestConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final MTK_3DNR_MODE_OFF:I = 0x0

.field private static final MTK_3DNR_MODE_ON:I = 0x1

.field private static final NOISE_REDUCTION_OFF:Ljava/lang/String; = "off"

.field private static final NOISE_REDUCTION_ON:Ljava/lang/String; = "on"

.field private static final NR3D_MODES_STRING:Ljava/lang/String; = "com.freeme.nrfeature.available3dnrmodes"

.field private static final NR3D_MODE_REQUEST:Ljava/lang/String; = "com.freeme.nrfeature.3dnrmode"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

.field private mIsSupported:Z

.field private mNoiseReduction:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;

.field private mNoiseReductionAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mNoiseReductionKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->mIsSupported:Z

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->mNoiseReduction:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    return-void
.end method

.method private getSupported3DNRValues()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->mNoiseReductionAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->getValueFromKey(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget v3, v0, v2

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v3, "on"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    const-string v3, "off"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getValueFromKey(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "was null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was not supported by this device"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private initModeKey()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v2, "com.freeme.nrfeature.3dnrmode"

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->mNoiseReductionKey:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_1
    return-void
.end method

.method private initModesKeys()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.freeme.nrfeature.available3dnrmodes"

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->mNoiseReductionAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateSupportedValues()V
    .locals 2

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->getSupported3DNRValues()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->mNoiseReduction:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->setSupportedPlatformValues(Ljava/util/List;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->mNoiseReduction:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->setEntryValues(Ljava/util/List;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->mNoiseReduction:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->setSupportedEntryValues(Ljava/util/List;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->mIsSupported:Z

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->mNoiseReduction:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->mIsSupported:Z

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->updateIsSupported(Z)V

    return-void
.end method


# virtual methods
.method public configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[configCaptureRequest] captureBuilder is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->mIsSupported:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->mNoiseReduction:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configCaptureRequest] current nose reduction value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    new-array v0, v2, [I

    aput v2, v0, v1

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->mNoiseReductionKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-array v0, v2, [I

    aput v1, v0, v1

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->mNoiseReductionKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->createAndChangeRepeatingRequest()V

    return-void
.end method

.method public setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->initModesKeys()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->initModeKey()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->mNoiseReductionKey:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->mNoiseReductionAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->updateSupportedValues()V

    iget-boolean p1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->mIsSupported:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->mNoiseReduction:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;

    const-string v0, "on"

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->updateValue(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    sget-object p1, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[setCameraCharacteristics] mNoiseReductionKey or mNoiseReductionAvailableModes is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
