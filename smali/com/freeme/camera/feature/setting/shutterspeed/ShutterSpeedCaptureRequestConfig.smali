.class Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedCaptureRequestConfig;
.super Ljava/lang/Object;
.source "ShutterSpeedCaptureRequestConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;


# static fields
.field private static final S_TO_NS:I = 0x3b9aca00

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mIsSupported:Z

.field private mShutterSpeed:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedCaptureRequestConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedCaptureRequestConfig;->mIsSupported:Z

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedCaptureRequestConfig;->mShutterSpeed:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;

    return-void
.end method


# virtual methods
.method public configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[configCaptureRequest] captureBuilder is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedCaptureRequestConfig;->mIsSupported:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedCaptureRequestConfig;->mShutterSpeed:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configCaptureRequest] value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-static {v1}, Lcom/freeme/camera/common/utils/CameraUtil;->isStillCaptureTemplate(Landroid/hardware/camera2/CaptureRequest;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0x3b9aca00

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :cond_3
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
    .locals 0

    return-void
.end method

.method public setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 2

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedHelper;->isShutterSpeedSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedCaptureRequestConfig;->mIsSupported:Z

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedHelper;->getSupportedList(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedCaptureRequestConfig;->mIsSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedCaptureRequestConfig;->mShutterSpeed:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;

    const-string v1, "1"

    invoke-virtual {v0, p1, v1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;->onValueInitialized(Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
