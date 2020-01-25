.class public Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;
.super Ljava/lang/Object;
.source "ISOCaptureRequestConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;


# static fields
.field public static final AUTO:Ljava/lang/String; = "0"

.field private static final ISO_KEY_CONTROL_SPEED:Ljava/lang/String; = "com.freeme.3afeature.aeIsoSpeed"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static sIndex:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

.field private mIso:Lcom/freeme/camera/feature/setting/iso/ISO;

.field private mKeyIsoRequestValue:Landroid/hardware/camera2/CaptureRequest$Key;
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

    const-class v1, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/4 v0, 0x2

    sput v0, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;->sIndex:I

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/iso/ISO;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;->mIso:Lcom/freeme/camera/feature/setting/iso/ISO;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    return-void
.end method

.method private static getMaxIsoValue(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method private static getMinIsoValue(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method private initIsoVendorKey(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getDeviceSpec(Landroid/content/Context;)Lcom/freeme/camera/common/loader/DeviceSpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;->mIso:Lcom/freeme/camera/feature/setting/iso/ISO;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/iso/ISO;->getCameraId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/common/loader/DeviceDescription;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/freeme/camera/common/loader/DeviceDescription;->getKeyIsoRequestMode()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;->mKeyIsoRequestValue:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_0
    sget-object p1, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mKeyIsoRequestValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;->mKeyIsoRequestValue:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;->mIso:Lcom/freeme/camera/feature/setting/iso/ISO;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/iso/ISO;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configCaptureRequest], value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v1, v2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;->mKeyIsoRequestValue:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
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

.method public getSupportedList(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;->getMinIsoValue(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;->getMaxIsoValue(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSupportedList] ISO range ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;->mKeyIsoRequestValue:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v2, :cond_1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    rem-int/lit8 v2, v0, 0x64

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    div-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x64

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_1
    if-gt v0, p1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v2, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;->sIndex:I

    mul-int/2addr v0, v2

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getSupportedList] values = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v1
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->createAndChangeRepeatingRequest()V

    return-void
.end method

.method public setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;->initIsoVendorKey(Landroid/hardware/camera2/CameraCharacteristics;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;->getSupportedList(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p1

    const-string v0, "0"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/iso/ISOCaptureRequestConfig;->mIso:Lcom/freeme/camera/feature/setting/iso/ISO;

    invoke-virtual {v1, p1, v0}, Lcom/freeme/camera/feature/setting/iso/ISO;->onValueInitialized(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
