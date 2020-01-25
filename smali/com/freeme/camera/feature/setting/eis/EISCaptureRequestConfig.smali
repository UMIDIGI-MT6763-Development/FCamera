.class public Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;
.super Ljava/lang/Object;
.source "EISCaptureRequestConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final CAM_EIS_SESSION_PARAMETER_OFF:[I

.field private static final CAM_EIS_SESSION_PARAMETER_ON:[I

.field private static final EIS_MODE_OFF:I = 0x0

.field private static final EIS_MODE_ON:I = 0x1

.field private static final EIS_OFF:Ljava/lang/String; = "off"

.field private static final EIS_ON:Ljava/lang/String; = "on"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mContext:Landroid/content/Context;

.field private mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

.field private mEis:Lcom/freeme/camera/feature/setting/eis/EIS;

.field private mKeyEisSessionParameter:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    sput-object v1, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->CAM_EIS_SESSION_PARAMETER_OFF:[I

    new-array v1, v0, [I

    aput v0, v1, v2

    sput-object v1, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->CAM_EIS_SESSION_PARAMETER_ON:[I

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/eis/EIS;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->mEis:Lcom/freeme/camera/feature/setting/eis/EIS;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    return-void
.end method

.method private configEisSessionRequestParameter(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->mKeyEisSessionParameter:Landroid/hardware/camera2/CaptureRequest$Key;

    if-nez v0, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[configEisSessionRequestParameter] mKeyEisSessionParameter is null"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "on"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->mKeyEisSessionParameter:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v0, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->CAM_EIS_SESSION_PARAMETER_ON:[I

    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->mKeyEisSessionParameter:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v0, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->CAM_EIS_SESSION_PARAMETER_OFF:[I

    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private initEisVendorKey(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getDeviceSpec(Landroid/content/Context;)Lcom/freeme/camera/common/loader/DeviceSpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->mEis:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/eis/EIS;->getCameraId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/common/loader/DeviceDescription;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/freeme/camera/common/loader/DeviceDescription;->getKeyEisRequsetSessionParameter()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->mKeyEisSessionParameter:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object p1, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mKeyEisSessionParameter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->mKeyEisSessionParameter:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateSupportedValues()V
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_5

    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget v4, v0, v3

    if-nez v4, :cond_2

    const-string v5, "off"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const-string v4, "on"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateSupportedValues] supportedList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->mEis:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/eis/EIS;->setSupportedPlatformValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->mEis:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/eis/EIS;->setEntryValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->mEis:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/eis/EIS;->setSupportedEntryValues(Ljava/util/List;)V

    return-void

    :cond_5
    :goto_1
    sget-object v1, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateSupportedValues] EIS is not supported with availableEisModes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[configCaptureRequest] captureBuilder is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->mEis:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/eis/EIS;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configCaptureRequest EIS to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->configEisSessionRequestParameter(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->requestRestartSession()V

    return-void
.end method

.method public setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->initEisVendorKey(Landroid/hardware/camera2/CameraCharacteristics;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/eis/EISCaptureRequestConfig;->updateSupportedValues()V

    return-void
.end method
