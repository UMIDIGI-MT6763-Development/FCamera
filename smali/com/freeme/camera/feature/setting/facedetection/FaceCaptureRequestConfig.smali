.class public Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;
.super Ljava/lang/Object;
.source "FaceCaptureRequestConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
.implements Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final FACE_DETECTION_FORCE_FACE_3A:Ljava/lang/String; = "com.mediatek.facefeature.forceface3a"

.field private static final FACE_FORCE_FACE_3A_OFF:[I

.field private static final FACE_FORCE_FACE_3A_ON:[I

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mFaceForce3aModesRequestKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mFaceMonitor:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;

.field private mIsRequestConfigSupported:Z

.field private mIsVendorFace3ASupported:Z

.field private mOnDetectedFaceUpdateListener:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;

.field private mOnFaceValueUpdateListener:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;

.field private mPreviewCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mSupportValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    sput-object v1, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->FACE_FORCE_FACE_3A_OFF:[I

    new-array v1, v0, [I

    aput v0, v1, v2

    sput-object v1, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->FACE_FORCE_FACE_3A_ON:[I

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mSupportValueList:Ljava/util/List;

    new-instance p1, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig$1;

    invoke-direct {p1, p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig$1;-><init>(Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mPreviewCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;[Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;)[Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->getPreviewRect([Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;)Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mOnDetectedFaceUpdateListener:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;[Landroid/hardware/camera2/params/Face;[Landroid/graphics/Rect;Landroid/graphics/Rect;)[Lcom/freeme/camera/feature/setting/facedetection/Face;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->getFaces([Landroid/hardware/camera2/params/Face;[Landroid/graphics/Rect;Landroid/graphics/Rect;)[Lcom/freeme/camera/feature/setting/facedetection/Face;

    move-result-object p0

    return-object p0
.end method

.method private getFaces([Landroid/hardware/camera2/params/Face;[Landroid/graphics/Rect;Landroid/graphics/Rect;)[Lcom/freeme/camera/feature/setting/facedetection/Face;
    .locals 4

    if-eqz p1, :cond_2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lcom/freeme/camera/feature/setting/facedetection/Face;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    new-instance v2, Lcom/freeme/camera/feature/setting/facedetection/Face;

    invoke-direct {v2}, Lcom/freeme/camera/feature/setting/facedetection/Face;-><init>()V

    aget-object v3, p1, v1

    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v3

    iput v3, v2, Lcom/freeme/camera/feature/setting/facedetection/Face;->id:I

    aget-object v3, p1, v1

    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v3

    iput v3, v2, Lcom/freeme/camera/feature/setting/facedetection/Face;->score:I

    iput-object p3, v2, Lcom/freeme/camera/feature/setting/facedetection/Face;->cropRegion:Landroid/graphics/Rect;

    aget-object v3, p2, v1

    iput-object v3, v2, Lcom/freeme/camera/feature/setting/facedetection/Face;->rect:Landroid/graphics/Rect;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getPreviewRect([Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;)[Landroid/graphics/Rect;
    .locals 5

    if-eqz p1, :cond_2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/Rect;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mOnFaceValueUpdateListener:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;

    invoke-interface {v3}, Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;->onFacePreviewSizeUpdate()Lcom/freeme/camera/common/utils/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mOnFaceValueUpdateListener:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;

    invoke-interface {v4}, Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;->onFacePreviewSizeUpdate()Lcom/freeme/camera/common/utils/Size;

    move-result-object v4

    invoke-virtual {v4}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v4

    invoke-static {v2, v3, v4, p2}, Lcom/freeme/camera/common/utils/CoordinatesTransform;->sensorToNormalizedPreview(Landroid/graphics/Rect;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private isFace3ASupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "com.mediatek.facefeature.forceface3a"

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mFaceForce3aModesRequestKey:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public static isFaceDetectionSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isFaceDetectionSupported] faceNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move p0, v0

    :catch_1
    sget-object v1, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[isFaceDetectionSupported] IllegalArgumentException"

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :goto_0
    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[configCaptureRequest] captureBuilder is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/camera/common/utils/CameraUtil;->isStillCaptureTemplate(Landroid/hardware/camera2/CaptureRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[configCaptureRequest] capture request not has face dection."

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mFaceMonitor:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;->isNeedToStart()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configCaptureRequest] start face detection, this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mIsVendorFace3ASupported:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mFaceForce3aModesRequestKey:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->FACE_FORCE_FACE_3A_ON:[I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mFaceMonitor:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;->isNeedToStop()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[configCaptureRequest] stop face detection"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mIsVendorFace3ASupported:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mFaceForce3aModesRequestKey:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->FACE_FORCE_FACE_3A_OFF:[I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_3
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

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mPreviewCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method public resetFaceDetectionState()V
    .locals 0

    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 2

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->isFaceDetectionSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mIsRequestConfigSupported:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mFaceMonitor:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mIsRequestConfigSupported:Z

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;->setSupportedStatus(Z)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mIsRequestConfigSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mSupportValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mSupportValueList:Ljava/util/List;

    const-string v1, "on"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mSupportValueList:Ljava/util/List;

    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->isFace3ASupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mIsVendorFace3ASupported:Z

    :cond_0
    sget-object p1, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setCameraCharacteristics] mIsRequestConfigSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mIsRequestConfigSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsVendorFace3ASupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mIsVendorFace3ASupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mOnFaceValueUpdateListener:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mIsRequestConfigSupported:Z

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mSupportValueList:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;->onFaceSettingValueUpdate(ZLjava/util/List;)V

    return-void
.end method

.method public setFaceDetectionUpdateListener(Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mOnDetectedFaceUpdateListener:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;

    return-void
.end method

.method public setFaceMonitor(Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mFaceMonitor:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl$IFacePerformerMonitor;

    return-void
.end method

.method public setFaceValueUpdateListener(Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->mOnFaceValueUpdateListener:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;

    return-void
.end method

.method public updateImageOrientation()V
    .locals 0

    return-void
.end method
