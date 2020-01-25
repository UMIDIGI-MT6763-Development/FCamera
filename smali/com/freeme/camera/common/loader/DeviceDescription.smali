.class public Lcom/freeme/camera/common/loader/DeviceDescription;
.super Ljava/lang/Object;
.source "DeviceDescription.java"


# static fields
.field private static final AIS_AVAILABLE_MODES_KEY_NAME:Ljava/lang/String; = "com.mediatek.mfnrfeature.availablemfbmodes"

.field private static final AIS_REQUEST_MODE_KEY_NAME:Ljava/lang/String; = "com.mediatek.mfnrfeature.mfbmode"

.field private static final AIS_RESULT_MODE_KEY_NAME:Ljava/lang/String; = "com.mediatek.mfnrfeature.mfbresult"

.field private static final ASD_AVAILABLE_MODES_KEY_NAME:Ljava/lang/String; = "com.mediatek.facefeature.availableasdmodes"

.field private static final ASD_REQUEST_MODE_KEY_NAME:Ljava/lang/String; = "com.mediatek.facefeature.asdmode"

.field private static final ASD_RESULT_MODE_KEY_NAME:Ljava/lang/String; = "com.mediatek.facefeature.asdresult"

.field private static final CS_KEY_AVAILABLE_MODES:Ljava/lang/String; = "com.mediatek.cshotfeature.availableCShotModes"

.field private static final CS_KEY_CAPTURE_REQUEST:Ljava/lang/String; = "com.mediatek.cshotfeature.capture"

.field private static final EIS_KEY_SESSION_PARAMETER:Ljava/lang/String; = "com.mediatek.eisfeature.eismode"

.field private static final FLASH_CALIBRATION_AVAILABLE:Ljava/lang/String; = "com.mediatek.flashfeature.calibration.available"

.field private static final FLASH_CALIBRATION_REQUEST_KEY:Ljava/lang/String; = "com.mediatek.flashfeature.calibration.enable"

.field private static final FLASH_CALIBRATION_RESULT_KEY_NAME:Ljava/lang/String; = "com.mediatek.flashfeature.calibration.result"

.field private static final FLASH_KEY_CUSTOMIZATION_AVAILABLE:Ljava/lang/String; = "com.mediatek.flashfeature.customization.available"

.field private static final FLASH_KEY_CUSTOMIZED_RESULT:Ljava/lang/String; = "com.mediatek.flashfeature.customizedResult"

.field private static final HDR_KEY_AVAILABLE_HDR_MODES_PHOTO:Ljava/lang/String; = "com.mediatek.hdrfeature.availableHdrModesPhoto"

.field private static final HDR_KEY_AVAILABLE_HDR_MODES_VIDEO:Ljava/lang/String; = "com.mediatek.hdrfeature.availableHdrModesVideo"

.field private static final HDR_KEY_DETECTION_MODE:Ljava/lang/String; = "com.mediatek.hdrfeature.hdrMode"

.field private static final HDR_KEY_DETECTION_RESULT:Ljava/lang/String; = "com.mediatek.hdrfeature.hdrDetectionResult"

.field private static final HDR_KEY_SESSION_MODE:Ljava/lang/String; = "com.mediatek.hdrfeature.SessionParamhdrMode"

.field private static final ISO_KEY_CONTROL_SPEED:Ljava/lang/String; = "com.mediatek.3afeature.aeIsoSpeed"

.field private static final P2_KEY_NOTIFICATION_RESULT:Ljava/lang/String; = "com.mediatek.control.capture.next.ready"

.field private static final P2_KEY_NOTIFICATION_TRIGGER:Ljava/lang/String; = "com.mediatek.control.capture.early.notification.trigger"

.field private static final P2_KEY_SUPPORT_MODES:Ljava/lang/String; = "com.mediatek.control.capture.early.notification.support"

.field private static final POSTVIEW_SUPPORT:I = 0x1

.field private static final THUMBNAIL_KEY_AVAILABLE_MODES:Ljava/lang/String; = "com.mediatek.control.capture.availablepostviewmodes"

.field private static final THUMBNAIL_KEY_POSTVIEW_SIZE:Ljava/lang/String; = "com.mediatek.control.capture.postviewsize"

.field private static final ZSL_KEY_AVAILABLE_MODES:Ljava/lang/String; = "com.mediatek.control.capture.available.zsl.modes"

.field private static final ZSL_KEY_MODE_REQUEST:Ljava/lang/String; = "com.mediatek.control.capture.zsl.mode"


# instance fields
.field private mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mCameraInfo:Landroid/hardware/Camera$CameraInfo;

.field private mCshotSupport:Z

.field private mIsFlashCalibrationSupported:Z

.field private mIsFlashCustomizedAvailable:Z

.field private mKeyAisAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAisRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAisResult:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAsdAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAsdRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAsdResult:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyCshotRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyEisSessionParameter:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyFlashCalibrationRequest:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyFlashCalibrationResult:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyFlashCustomizedResult:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field private mKeyHdrAvailablePhotoModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyHdrAvailableVideoModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyHdrDetectionResult:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyHdrRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyHdrRequsetSessionMode:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyIsoRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyP2NotificationRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyP2NotificationResult:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyPostViewRequestSizeMode:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyThumbnailAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyThumbnailSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyZslMode:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mSpeedUpSupported:Z

.field private mThumbnailPostViewSupport:Z

.field private mZslSupport:Z


# direct methods
.method public constructor <init>(Landroid/hardware/Camera$CameraInfo;)V
    .locals 1
    .param p1    # Landroid/hardware/Camera$CameraInfo;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyThumbnailSizes:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    return-void
.end method


# virtual methods
.method public getAvailableThumbnailSizes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyThumbnailSizes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method public getCameraInfo()Landroid/hardware/Camera$CameraInfo;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method public getKeyAisAvailableModes()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyAisAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method

.method public getKeyAisRequestMode()Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyAisRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;

    return-object v0
.end method

.method public getKeyAisResult()Landroid/hardware/camera2/CaptureResult$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyAisResult:Landroid/hardware/camera2/CaptureResult$Key;

    return-object v0
.end method

.method public getKeyAsdAvailableModes()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyAsdAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method

.method public getKeyAsdRequestMode()Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyAsdRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;

    return-object v0
.end method

.method public getKeyAsdResult()Landroid/hardware/camera2/CaptureResult$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyAsdResult:Landroid/hardware/camera2/CaptureResult$Key;

    return-object v0
.end method

.method public getKeyCshotRequestMode()Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyCshotRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;

    return-object v0
.end method

.method public getKeyEisRequsetSessionParameter()Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyEisSessionParameter:Landroid/hardware/camera2/CaptureRequest$Key;

    return-object v0
.end method

.method public getKeyFlashCalibrationRequest()Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyFlashCalibrationRequest:Landroid/hardware/camera2/CaptureRequest$Key;

    return-object v0
.end method

.method public getKeyFlashCalibrationResult()Landroid/hardware/camera2/CaptureResult$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyFlashCalibrationResult:Landroid/hardware/camera2/CaptureResult$Key;

    return-object v0
.end method

.method public getKeyFlashCustomizedResult()Landroid/hardware/camera2/CaptureResult$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyFlashCustomizedResult:Landroid/hardware/camera2/CaptureResult$Key;

    return-object v0
.end method

.method public getKeyHdrAvailablePhotoModes()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyHdrAvailablePhotoModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method

.method public getKeyHdrAvailableVideoModes()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyHdrAvailableVideoModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method

.method public getKeyHdrDetectionResult()Landroid/hardware/camera2/CaptureResult$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyHdrDetectionResult:Landroid/hardware/camera2/CaptureResult$Key;

    return-object v0
.end method

.method public getKeyHdrRequestMode()Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyHdrRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;

    return-object v0
.end method

.method public getKeyHdrRequsetSessionMode()Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyHdrRequsetSessionMode:Landroid/hardware/camera2/CaptureRequest$Key;

    return-object v0
.end method

.method public getKeyIsoRequestMode()Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyIsoRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;

    return-object v0
.end method

.method public getKeyP2NotificationRequestMode()Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyP2NotificationRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;

    return-object v0
.end method

.method public getKeyP2NotificationResult()Landroid/hardware/camera2/CaptureResult$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyP2NotificationResult:Landroid/hardware/camera2/CaptureResult$Key;

    return-object v0
.end method

.method public getKeyPostViewRequestSizeMode()Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyPostViewRequestSizeMode:Landroid/hardware/camera2/CaptureRequest$Key;

    return-object v0
.end method

.method public getKeyZslRequestKey()Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyZslMode:Landroid/hardware/camera2/CaptureRequest$Key;

    return-object v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method public isCshotSupport()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mCshotSupport:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isFlashCalibrationSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mIsFlashCalibrationSupported:Z

    return v0
.end method

.method public isFlashCustomizedAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mIsFlashCustomizedAvailable:Z

    return v0
.end method

.method public isSpeedUpSupport()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mSpeedUpSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isThumbnailPostViewSupport()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mThumbnailPostViewSupport:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isZslSupport()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mZslSupport:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraCharacteristics;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1    # Landroid/hardware/Camera$Parameters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mParameters:Landroid/hardware/Camera$Parameters;

    return-void
.end method

.method public storeCameraCharacKeys(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 7

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Size;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyThumbnailSizes:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.mediatek.hdrfeature.availableHdrModesPhoto"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v1, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyHdrAvailablePhotoModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.mediatek.hdrfeature.availableHdrModesVideo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-object v1, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyHdrAvailableVideoModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.mediatek.control.capture.availablepostviewmodes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    iput-object v1, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyThumbnailAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget-object v1, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyThumbnailAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_1

    array-length v3, v1

    move v5, v2

    :goto_2
    if-ge v5, v3, :cond_1

    aget v6, v1, v5

    if-ne v6, v4, :cond_4

    iput-boolean v4, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mThumbnailPostViewSupport:Z

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.mediatek.mfnrfeature.availablemfbmodes"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iput-object v1, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyAisAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.mediatek.flashfeature.customization.available"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v3, v1

    move v5, v2

    :goto_3
    if-ge v5, v3, :cond_1

    aget-byte v6, v1, v5

    if-ne v6, v4, :cond_7

    iput-boolean v4, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mIsFlashCustomizedAvailable:Z

    goto :goto_1

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.mediatek.cshotfeature.availableCShotModes"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    array-length v3, v1

    move v5, v2

    :goto_4
    if-ge v5, v3, :cond_1

    aget v6, v1, v5

    if-ne v6, v4, :cond_9

    iput-boolean v4, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mCshotSupport:Z

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.mediatek.control.capture.early.notification.support"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    array-length v3, v1

    move v5, v2

    :goto_5
    if-ge v5, v3, :cond_1

    aget v6, v1, v5

    if-ne v6, v4, :cond_b

    iput-boolean v4, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mSpeedUpSupported:Z

    goto/16 :goto_1

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_c
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.mediatek.facefeature.availableasdmodes"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iput-object v1, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyAsdAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.mediatek.control.capture.available.zsl.modes"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v3, v1

    move v5, v2

    :goto_6
    if-ge v5, v3, :cond_1

    aget-byte v6, v1, v5

    if-ne v6, v4, :cond_e

    iput-boolean v4, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mZslSupport:Z

    goto/16 :goto_1

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_f
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.mediatek.flashfeature.calibration.available"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    array-length v3, v1

    move v5, v2

    :goto_7
    if-ge v5, v3, :cond_1

    aget v6, v1, v5

    if-ne v6, v4, :cond_10

    iput-boolean v4, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mIsFlashCalibrationSupported:Z

    goto/16 :goto_1

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_11
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureResultKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.mediatek.hdrfeature.hdrDetectionResult"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iput-object v1, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyHdrDetectionResult:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_8

    :cond_13
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.mediatek.mfnrfeature.mfbresult"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iput-object v1, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyAisResult:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_8

    :cond_14
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.mediatek.flashfeature.customizedResult"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iput-object v1, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyFlashCustomizedResult:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_8

    :cond_15
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.mediatek.control.capture.next.ready"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iput-object v1, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyP2NotificationResult:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_8

    :cond_16
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.mediatek.facefeature.asdresult"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iput-object v1, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyAsdResult:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_8

    :cond_17
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.mediatek.flashfeature.calibration.result"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iput-object v1, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyFlashCalibrationResult:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_8

    :cond_18
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_19
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.mediatek.hdrfeature.hdrMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iput-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyHdrRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_9

    :cond_1a
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.mediatek.hdrfeature.SessionParamhdrMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iput-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyHdrRequsetSessionMode:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_9

    :cond_1b
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.mediatek.eisfeature.eismode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iput-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyEisSessionParameter:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_9

    :cond_1c
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.mediatek.control.capture.zsl.mode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iput-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyZslMode:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_9

    :cond_1d
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.mediatek.mfnrfeature.mfbmode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iput-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyAisRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_9

    :cond_1e
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.mediatek.3afeature.aeIsoSpeed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iput-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyIsoRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_9

    :cond_1f
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.mediatek.cshotfeature.capture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iput-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyCshotRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_9

    :cond_20
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.mediatek.control.capture.early.notification.trigger"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iput-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyP2NotificationRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;

    goto/16 :goto_9

    :cond_21
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.mediatek.facefeature.asdmode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iput-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyAsdRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;

    goto/16 :goto_9

    :cond_22
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.mediatek.control.capture.postviewsize"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    iput-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyPostViewRequestSizeMode:Landroid/hardware/camera2/CaptureRequest$Key;

    goto/16 :goto_9

    :cond_23
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.mediatek.flashfeature.calibration.enable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iput-object v0, p0, Lcom/freeme/camera/common/loader/DeviceDescription;->mKeyFlashCalibrationRequest:Landroid/hardware/camera2/CaptureRequest$Key;

    goto/16 :goto_9

    :cond_24
    return-void
.end method
