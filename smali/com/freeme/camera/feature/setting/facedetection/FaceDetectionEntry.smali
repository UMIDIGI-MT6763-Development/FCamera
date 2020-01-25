.class public Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionEntry;
.super Lcom/freeme/camera/common/loader/FeatureEntryBase;
.source "FaceDetectionEntry.java"


# static fields
.field private static final FACE_DETECTION_DISABLE_PROPERTY:Ljava/lang/String; = "vendor.mtk.camera.app.fd.disable"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mCameraId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionEntry;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/loader/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    const-string p1, "0"

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionEntry;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method private isSupportInAPI1(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionEntry;->mDeviceSpec:Lcom/freeme/camera/common/loader/DeviceSpec;

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSupportInAPI1] cameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", return false 2"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/loader/DeviceDescription;

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceDescription;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSupportInAPI1] cameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", return false 3"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result p1

    if-lez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSupportInAPI1] cameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", return false 1"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private isSupportInAPI2(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionEntry;->mDeviceSpec:Lcom/freeme/camera/common/loader/DeviceSpec;

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSupportInAPI2] cameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", return false 2"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/loader/DeviceDescription;

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceDescription;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSupportInAPI2] cameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", return false 3"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-static {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->isFaceDetectionSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSupportInAPI2] cameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", return false 1"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private unSupportFaceDetection()Z
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    const-string v1, "CAMERA_FACE_DETECTION_SUPPORT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    const-string v1, "CAMERA_FACE_DETECTION_SUPPORT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-direct {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;-><init>()V

    return-object v0
.end method

.method public getFeatureEntryName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/freeme/camera/common/setting/ICameraSetting;

    return-object v0
.end method

.method public isSupport(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Landroid/app/Activity;)Z
    .locals 3

    const-string v0, "vendor.mtk.camera.app.fd.disable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[isSupport] has set vendor.mtk.camera.app.fd.disable as 1, return false"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionEntry$1;->$SwitchMap$com$freeme$camera$common$device$CameraDeviceManagerFactory$CameraApi:[I

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionEntry;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionEntry;->isSupportInAPI2(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionEntry;->unSupportFaceDetection()Z

    move-result p1

    invoke-virtual {p0, p2}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionEntry;->isThirdPartyIntent(Landroid/app/Activity;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_1
    return v1

    :pswitch_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionEntry;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionEntry;->isSupportInAPI1(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionEntry;->unSupportFaceDetection()Z

    move-result p1

    invoke-virtual {p0, p2}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionEntry;->isThirdPartyIntent(Landroid/app/Activity;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_2
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyBeforeOpenCamera(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/freeme/camera/common/loader/FeatureEntryBase;->notifyBeforeOpenCamera(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionEntry;->mCameraId:Ljava/lang/String;

    sget-object p1, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[notifyBeforeOpenCamera] mCameraId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionEntry;->mCameraId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
