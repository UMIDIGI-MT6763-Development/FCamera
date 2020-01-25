.class public Lcom/freeme/camera/common/mode/CameraApiHelper;
.super Ljava/lang/Object;
.source "CameraApiHelper.java"


# static fields
.field private static final API_UNKNOWN:I = 0x0

.field private static final MTK_MULTI_CAM_FEATURE_AVAILABLE_MODE:Ljava/lang/String; = "com.mediatek.multicamfeature.availableMultiCamFeatureMode"

.field private static final MTK_MULTI_CAM_FEATURE_MODE_VSDOF:I = 0x1

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final VSDOF_KEY:Ljava/lang/String; = "com.mediatek.multicamfeature.multiCamFeatureMode"

.field private static mLogicalId:Ljava/lang/String;

.field private static sDeviceSpec:Lcom/freeme/camera/common/loader/DeviceSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/mode/CameraApiHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/mode/CameraApiHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Lcom/freeme/camera/common/loader/DeviceSpec;

    invoke-direct {v0}, Lcom/freeme/camera/common/loader/DeviceSpec;-><init>()V

    sput-object v0, Lcom/freeme/camera/common/mode/CameraApiHelper;->sDeviceSpec:Lcom/freeme/camera/common/loader/DeviceSpec;

    const/4 v0, 0x0

    sput-object v0, Lcom/freeme/camera/common/mode/CameraApiHelper;->mLogicalId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDeviceSpec(Landroid/content/Context;)V
    .locals 8

    sget-object v0, Lcom/freeme/camera/common/mode/CameraApiHelper;->sDeviceSpec:Lcom/freeme/camera/common/loader/DeviceSpec;

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDefaultCameraApi()Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getCameraApiType(Ljava/lang/String;)Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    move-result-object v1

    invoke-static {p0}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getCameraNum(Landroid/content/Context;)I

    move-result v2

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    if-lez v2, :cond_3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    new-instance v5, Lcom/freeme/camera/common/loader/DeviceDescription;

    invoke-direct {v5, v0}, Lcom/freeme/camera/common/loader/DeviceDescription;-><init>(Landroid/hardware/Camera$CameraInfo;)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_1

    const-string v6, "camera"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/CameraManager;

    :try_start_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    move-object v6, v0

    :goto_1
    invoke-virtual {v5, v6}, Lcom/freeme/camera/common/loader/DeviceDescription;->setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V

    invoke-virtual {v5, v6}, Lcom/freeme/camera/common/loader/DeviceDescription;->storeCameraCharacKeys(Landroid/hardware/camera2/CameraCharacteristics;)V

    :cond_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/freeme/camera/common/mode/CameraApiHelper;->sDeviceSpec:Lcom/freeme/camera/common/loader/DeviceSpec;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/loader/DeviceSpec;->setDefaultCameraApi(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V

    sget-object v0, Lcom/freeme/camera/common/mode/CameraApiHelper;->sDeviceSpec:Lcom/freeme/camera/common/loader/DeviceSpec;

    invoke-virtual {v0, v3}, Lcom/freeme/camera/common/loader/DeviceSpec;->setDeviceDescriptions(Ljava/util/concurrent/ConcurrentHashMap;)V

    :cond_3
    sget-object v0, Lcom/freeme/camera/common/mode/CameraApiHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[createDeviceSpec] context: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", default api:"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", deviceDescriptionMap:"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " cameraNum "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static getCameraApiType(Ljava/lang/String;)Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    sget-object p0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    return-object p0
.end method

.method public static getCameraNum(Landroid/content/Context;)I
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "camera"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-eqz v2, :cond_1

    array-length v2, v1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v3, Lcom/freeme/camera/common/mode/CameraApiHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<getCameraNum> idList length is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    invoke-virtual {p0, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    const-string v6, "com.mediatek.multicamfeature.availableMultiCamFeatureMode"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/freeme/camera/common/utils/CameraUtil;->isSupportAvailableMode(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "com.mediatek.multicamfeature.multiCamFeatureMode"

    invoke-static {v5, v6}, Lcom/freeme/camera/common/utils/CameraUtil;->getAvailableSessionKeys(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v5

    if-eqz v5, :cond_0

    sput-object v4, Lcom/freeme/camera/common/mode/CameraApiHelper;->mLogicalId:Ljava/lang/String;

    sget-object v4, Lcom/freeme/camera/common/mode/CameraApiHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<getCameraNum> mLogicalId is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/freeme/camera/common/mode/CameraApiHelper;->mLogicalId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "Camera num is 0, Sensor should double check"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    move v2, v0

    :goto_1
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_2
    return v2
.end method

.method public static getDeviceSpec(Landroid/content/Context;)Lcom/freeme/camera/common/loader/DeviceSpec;
    .locals 0

    invoke-static {p0}, Lcom/freeme/camera/common/mode/CameraApiHelper;->createDeviceSpec(Landroid/content/Context;)V

    sget-object p0, Lcom/freeme/camera/common/mode/CameraApiHelper;->sDeviceSpec:Lcom/freeme/camera/common/loader/DeviceSpec;

    return-object p0
.end method

.method public static getLogicalCameraId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/mode/CameraApiHelper;->mLogicalId:Ljava/lang/String;

    return-object v0
.end method
